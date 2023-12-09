import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'search_result_model.dart';
export 'search_result_model.dart';

class SearchResultWidget extends StatefulWidget {
  const SearchResultWidget({super.key});

  @override
  _SearchResultWidgetState createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  late SearchResultModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchResultModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.response = await ProblemGroup.problemSearchCall.call(
        minDifficulty: FFAppState().searchCondition.minDifficulty,
        maxDifficulty: FFAppState().searchCondition.maxDifficulty,
        minSolveCount: FFAppState().searchCondition.minSolveCount,
        maxSolveCount: FFAppState().searchCondition.maxSolveCount,
        logical: FFAppState().searchCondition.logical,
        tagsList: FFAppState().searchCondition.tags,
      );
      if ((_model.response?.succeeded ?? true)) {
        setState(() {
          _model.resultJSON = (_model.response?.jsonBody ?? '');
        });
        setState(() {
          _model.resultList = getJsonField(
            _model.resultJSON,
            r'''$["data"]''',
            true,
          )!
              .toList()
              .cast<dynamic>();
        });
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: const Text('alert'),
              content: const Text('bad request'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: const Text('Ok'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            '검색 결과',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Builder(
                  builder: (context) {
                    final searchResult = _model.resultList.toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: searchResult.length,
                      itemBuilder: (context, searchResultIndex) {
                        final searchResultItem =
                            searchResult[searchResultIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'problemDetail',
                              queryParameters: {
                                'problemId': serializeParam(
                                  getJsonField(
                                    searchResultItem,
                                    r'''$["id"]''',
                                  ),
                                  ParamType.int,
                                ),
                                'difficulty': serializeParam(
                                  getJsonField(
                                    searchResultItem,
                                    r'''$["difficulty"]''',
                                  ),
                                  ParamType.int,
                                ),
                                'title': serializeParam(
                                  getJsonField(
                                    searchResultItem,
                                    r'''$["title"]''',
                                  ).toString(),
                                  ParamType.String,
                                ),
                                'tags': serializeParam(
                                  (getJsonField(
                                    searchResultItem,
                                    r'''$["tags"]''',
                                    true,
                                  ) as List)
                                      .map<String>((s) => s.toString())
                                      .toList(),
                                  ParamType.String,
                                  true,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Text(
                                  getJsonField(
                                    searchResultItem,
                                    r'''$["difficulty"]''',
                                  ).toString(),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 24.0,
                                      ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 133.0,
                                    height: 36.0,
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      getJsonField(
                                        searchResultItem,
                                        r'''$["title"]''',
                                      ).toString(),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 20.0,
                                          ),
                                    ),
                                  ),
                                  Container(
                                    width: 137.0,
                                    height: 33.0,
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      getJsonField(
                                        searchResultItem,
                                        r'''$["id"]''',
                                      ).toString(),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  color: Color(0x18FFFFFF),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

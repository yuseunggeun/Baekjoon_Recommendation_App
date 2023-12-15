import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/tier_img/tier01/tier01_widget.dart';
import '/tier_img/tier02/tier02_widget.dart';
import '/tier_img/tier03/tier03_widget.dart';
import '/tier_img/tier04/tier04_widget.dart';
import '/tier_img/tier05/tier05_widget.dart';
import '/tier_img/tier06/tier06_widget.dart';
import '/tier_img/tier07/tier07_widget.dart';
import '/tier_img/tier08/tier08_widget.dart';
import '/tier_img/tier09/tier09_widget.dart';
import '/tier_img/tier10/tier10_widget.dart';
import '/tier_img/tier11/tier11_widget.dart';
import '/tier_img/tier12/tier12_widget.dart';
import '/tier_img/tier13/tier13_widget.dart';
import '/tier_img/tier14/tier14_widget.dart';
import '/tier_img/tier15/tier15_widget.dart';
import '/tier_img/tier16/tier16_widget.dart';
import '/tier_img/tier17/tier17_widget.dart';
import '/tier_img/tier18/tier18_widget.dart';
import '/tier_img/tier19/tier19_widget.dart';
import '/tier_img/tier20/tier20_widget.dart';
import '/tier_img/tier21/tier21_widget.dart';
import '/tier_img/tier22/tier22_widget.dart';
import '/tier_img/tier23/tier23_widget.dart';
import '/tier_img/tier24/tier24_widget.dart';
import '/tier_img/tier25/tier25_widget.dart';
import '/tier_img/tier26/tier26_widget.dart';
import '/tier_img/tier27/tier27_widget.dart';
import '/tier_img/tier28/tier28_widget.dart';
import '/tier_img/tier29/tier29_widget.dart';
import '/tier_img/tier30/tier30_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'search_result_model.dart';
export 'search_result_model.dart';

class SearchResultWidget extends StatefulWidget {
  const SearchResultWidget({super.key});

  @override
  _SearchResultWidgetState createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget>
    with TickerProviderStateMixin {
  late SearchResultModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'listViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
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
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: InkWell(
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
                                    width: 80.0,
                                    height: 80.0,
                                    decoration: const BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            1) {
                                          return Tier01Widget(
                                            key: Key(
                                                'Keywn8_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            2) {
                                          return Tier02Widget(
                                            key: Key(
                                                'Keyom2_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            3) {
                                          return Tier03Widget(
                                            key: Key(
                                                'Keyr0f_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            4) {
                                          return Tier04Widget(
                                            key: Key(
                                                'Keyv91_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            5) {
                                          return Tier05Widget(
                                            key: Key(
                                                'Keyscu_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            6) {
                                          return Tier06Widget(
                                            key: Key(
                                                'Keypjk_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            7) {
                                          return Tier07Widget(
                                            key: Key(
                                                'Keyogq_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            8) {
                                          return Tier08Widget(
                                            key: Key(
                                                'Key3hr_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            9) {
                                          return Tier09Widget(
                                            key: Key(
                                                'Key6ey_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            10) {
                                          return Tier10Widget(
                                            key: Key(
                                                'Keyuc8_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            11) {
                                          return Tier11Widget(
                                            key: Key(
                                                'Keyxnb_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            12) {
                                          return Tier12Widget(
                                            key: Key(
                                                'Keyapi_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            13) {
                                          return Tier13Widget(
                                            key: Key(
                                                'Keyvgl_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            14) {
                                          return Tier14Widget(
                                            key: Key(
                                                'Keyl3g_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            15) {
                                          return Tier15Widget(
                                            key: Key(
                                                'Keyrir_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            16) {
                                          return Tier16Widget(
                                            key: Key(
                                                'Keyz44_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            17) {
                                          return Tier17Widget(
                                            key: Key(
                                                'Keywc0_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            18) {
                                          return Tier18Widget(
                                            key: Key(
                                                'Keyb8z_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            19) {
                                          return Tier19Widget(
                                            key: Key(
                                                'Key2c1_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            20) {
                                          return Tier20Widget(
                                            key: Key(
                                                'Keyt86_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            21) {
                                          return Tier21Widget(
                                            key: Key(
                                                'Key7xi_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            22) {
                                          return Tier22Widget(
                                            key: Key(
                                                'Keys20_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            23) {
                                          return Tier23Widget(
                                            key: Key(
                                                'Keya0s_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            24) {
                                          return Tier24Widget(
                                            key: Key(
                                                'Keyr5s_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            25) {
                                          return Tier25Widget(
                                            key: Key(
                                                'Keyhrv_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            26) {
                                          return Tier26Widget(
                                            key: Key(
                                                'Keyjwn_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            27) {
                                          return Tier27Widget(
                                            key: Key(
                                                'Key0kf_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            28) {
                                          return Tier28Widget(
                                            key: Key(
                                                'Keyrrk_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else if (getJsonField(
                                              searchResultItem,
                                              r'''$["difficulty"]''',
                                            ) ==
                                            29) {
                                          return Tier29Widget(
                                            key: Key(
                                                'Keytli_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        } else {
                                          return Tier30Widget(
                                            key: Key(
                                                'Key447_${searchResultIndex}_of_${searchResult.length}'),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 289.0,
                                          height: 36.0,
                                          decoration: const BoxDecoration(),
                                          child: AutoSizeText(
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
                                                  fontWeight: FontWeight.w600,
                                                ),
                                            minFontSize: 10.0,
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
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ).animateOnPageLoad(
                          animationsMap['listViewOnPageLoadAnimation']!);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

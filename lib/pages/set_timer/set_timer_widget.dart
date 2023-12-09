import '/components/set_solve_time_popup_widget.dart';
import '/components/set_tag_time_popup_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'set_timer_model.dart';
export 'set_timer_model.dart';

class SetTimerWidget extends StatefulWidget {
  const SetTimerWidget({
    super.key,
    required this.title,
    required this.difficulty,
    required this.problemId,
    required this.tags,
  });

  final String? title;
  final int? difficulty;
  final int? problemId;
  final List<String>? tags;

  @override
  _SetTimerWidgetState createState() => _SetTimerWidgetState();
}

class _SetTimerWidgetState extends State<SetTimerWidget> {
  late SetTimerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetTimerModel());
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
            '타이머 설정',
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
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      '문제 풀이 시간을 설정합니다',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 75.0,
                      height: 72.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.title,
                            'null',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.problemId?.toString(),
                            '0',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        '타이머 시간',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 20.0,
                            ),
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showAlignedDialog(
                              context: context,
                              isGlobal: true,
                              avoidOverflow: false,
                              targetAnchor: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: const SetSolveTimePopupWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                          child: Text(
                            valueOrDefault<String>(
                              (String hour, String minute, String second) {
                                return '$hour:$minute:$second';
                              }(
                                  formatNumber(
                                    FFAppState().solveTimer.solveTime.hour,
                                    formatType: FormatType.custom,
                                    format: '00',
                                    locale: '',
                                  ),
                                  formatNumber(
                                    FFAppState().solveTimer.solveTime.minute,
                                    formatType: FormatType.custom,
                                    format: '00',
                                    locale: '',
                                  ),
                                  formatNumber(
                                    FFAppState().solveTimer.solveTime.second,
                                    formatType: FormatType.custom,
                                    format: '00',
                                    locale: '',
                                  )),
                              '00:00:00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Text(
                        '특정 시간에 태그 공개',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 20.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: Switch.adaptive(
                        value: _model.switchValue ??= false,
                        onChanged: (newValue) async {
                          setState(() => _model.switchValue = newValue);
                        },
                        activeColor: FlutterFlowTheme.of(context).primary,
                        activeTrackColor: FlutterFlowTheme.of(context).accent1,
                        inactiveTrackColor:
                            FlutterFlowTheme.of(context).alternate,
                        inactiveThumbColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                  ],
                ),
              ),
              if (_model.switchValue ?? true)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          '태그 공개시간',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                  ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showAlignedDialog(
                                context: context,
                                isGlobal: true,
                                avoidOverflow: false,
                                targetAnchor: const AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                followerAnchor: const AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                builder: (dialogContext) {
                                  return Material(
                                    color: Colors.transparent,
                                    child: GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: const SetTagTimePopupWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            child: Text(
                              valueOrDefault<String>(
                                (String hour, String minute, String second) {
                                  return '$hour:$minute:$second';
                                }(
                                    formatNumber(
                                      FFAppState().solveTimer.tagTime.hour,
                                      formatType: FormatType.custom,
                                      format: '00',
                                      locale: '',
                                    ),
                                    formatNumber(
                                      FFAppState().solveTimer.tagTime.minute,
                                      formatType: FormatType.custom,
                                      format: '00',
                                      locale: '',
                                    ),
                                    formatNumber(
                                      FFAppState().solveTimer.tagTime.second,
                                      formatType: FormatType.custom,
                                      format: '00',
                                      locale: '',
                                    )),
                                '00:00:00',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'challengeProblem',
                      queryParameters: {
                        'title': serializeParam(
                          widget.title,
                          ParamType.String,
                        ),
                        'problemId': serializeParam(
                          widget.problemId,
                          ParamType.int,
                        ),
                        'difficulty': serializeParam(
                          widget.difficulty,
                          ParamType.int,
                        ),
                        'tags': serializeParam(
                          widget.tags,
                          ParamType.String,
                          true,
                        ),
                        'tagOpen': serializeParam(
                          _model.switchValue,
                          ParamType.bool,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: '문제 풀이',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
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

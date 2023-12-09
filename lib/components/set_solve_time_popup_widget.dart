import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'set_solve_time_popup_model.dart';
export 'set_solve_time_popup_model.dart';

class SetSolveTimePopupWidget extends StatefulWidget {
  const SetSolveTimePopupWidget({super.key});

  @override
  _SetSolveTimePopupWidgetState createState() =>
      _SetSolveTimePopupWidgetState();
}

class _SetSolveTimePopupWidgetState extends State<SetSolveTimePopupWidget> {
  late SetSolveTimePopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetSolveTimePopupModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.setTime = TimeDataStruct(
          hour: FFAppState().solveTimer.solveTime.hour,
          minute: FFAppState().solveTimer.solveTime.minute,
          second: FFAppState().solveTimer.solveTime.second,
        );
      });
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 240.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '타이머 설정',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 24.0,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 0.0,
                    borderWidth: 0.0,
                    buttonSize: 47.0,
                    icon: Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      if (!(_model.setTime!.hour >= 10 ? true : false)) {
                        setState(() {
                          _model.updateSetTimeStruct(
                            (e) => e..incrementHour(1),
                          );
                        });
                      }
                    },
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 0.0,
                  borderWidth: 0.0,
                  buttonSize: 47.0,
                  icon: Icon(
                    Icons.keyboard_arrow_up_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    if (!(_model.setTime!.minute >= 59 ? true : false)) {
                      setState(() {
                        _model.updateSetTimeStruct(
                          (e) => e..incrementMinute(1),
                        );
                      });
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 0.0,
                    borderWidth: 0.0,
                    buttonSize: 47.0,
                    icon: Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      if (_model.setTime!.second >= 59 ? true : false) {
                        setState(() {
                          _model.updateSetTimeStruct(
                            (e) => e..incrementSecond(1),
                          );
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                    child: Text(
                      formatNumber(
                        _model.setTime!.hour,
                        formatType: FormatType.custom,
                        format: '00',
                        locale: '',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 40.0,
                          ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Text(
                      ':',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 40.0,
                          ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    formatNumber(
                      _model.setTime!.minute,
                      formatType: FormatType.custom,
                      format: '00',
                      locale: '',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 40.0,
                        ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Text(
                      ':',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 40.0,
                          ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                      child: Text(
                        formatNumber(
                          _model.setTime!.second,
                          formatType: FormatType.custom,
                          format: '00',
                          locale: '',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 40.0,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 0.0,
                    borderWidth: 0.0,
                    buttonSize: 47.0,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      if (!(_model.setTime!.hour <= 0 ? true : false)) {
                        setState(() {
                          _model.updateSetTimeStruct(
                            (e) => e..incrementHour(-1),
                          );
                        });
                      }
                    },
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 0.0,
                  borderWidth: 0.0,
                  buttonSize: 47.0,
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    if (!(_model.setTime!.minute <= 0 ? true : false)) {
                      setState(() {
                        _model.updateSetTimeStruct(
                          (e) => e..incrementMinute(-1),
                        );
                      });
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 0.0,
                    borderWidth: 0.0,
                    buttonSize: 47.0,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      if (_model.setTime!.second <= 0 ? true : false) {
                        setState(() {
                          _model.updateSetTimeStruct(
                            (e) => e..incrementSecond(-1),
                          );
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  setState(() {
                    FFAppState().updateSolveTimerStruct(
                      (e) => e
                        ..updateSolveTime(
                          (e) => e
                            ..hour = _model.setTime?.hour
                            ..minute = _model.setTime?.minute
                            ..second = _model.setTime?.second
                            ..ms = _model.setTime!.hour * 3600000 +
                                _model.setTime!.minute * 60000 +
                                _model.setTime!.second * 1000,
                        ),
                    );
                  });
                  Navigator.pop(context);
                },
                text: '설정 완료',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
            ],
          ),
        ],
      ),
    );
  }
}

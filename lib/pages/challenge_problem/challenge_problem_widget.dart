import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'challenge_problem_model.dart';
export 'challenge_problem_model.dart';

class ChallengeProblemWidget extends StatefulWidget {
  const ChallengeProblemWidget({
    super.key,
    required this.title,
    required this.problemId,
    required this.difficulty,
    required this.tags,
    bool? tagOpen,
  })  : tagOpen = tagOpen ?? false;

  final String? title;
  final int? problemId;
  final int? difficulty;
  final List<String>? tags;
  final bool tagOpen;

  @override
  _ChallengeProblemWidgetState createState() => _ChallengeProblemWidgetState();
}

class _ChallengeProblemWidgetState extends State<ChallengeProblemWidget> {
  late ChallengeProblemModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChallengeProblemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
            '문제 풀이중',
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterFlowTimer(
                        initialTime: FFAppState().solveTimer.solveTime.ms,
                        getDisplayTime: (value) =>
                            StopWatchTimer.getDisplayTime(value,
                                milliSecond: false),
                        controller: _model.solveTimerController,
                        updateStateInterval: const Duration(milliseconds: 1000),
                        onChanged: (value, displayTime, shouldUpdate) {
                          _model.solveTimerMilliseconds = value;
                          _model.solveTimerValue = displayTime;
                          if (shouldUpdate) setState(() {});
                        },
                        onEnded: () async {
                          context.pushNamed('challengeFail');
                        },
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                      FlutterFlowTimer(
                        initialTime: FFAppState().solveTimer.tagTime.ms,
                        getDisplayTime: (value) =>
                            StopWatchTimer.getDisplayTime(value,
                                milliSecond: false),
                        controller: _model.tagTimerController,
                        updateStateInterval: const Duration(milliseconds: 1000),
                        onChanged: (value, displayTime, shouldUpdate) {
                          _model.tagTimerMilliseconds = value;
                          _model.tagTimerValue = displayTime;
                          if (shouldUpdate) setState(() {});
                        },
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ],
                  ),
                  CircularPercentIndicator(
                    percent: _model.solveTimerMilliseconds /
                        FFAppState().solveTimer.solveTime.ms.toDouble(),
                    radius: 120.0,
                    lineWidth: 20.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: FlutterFlowTheme.of(context).primary,
                    backgroundColor: FlutterFlowTheme.of(context).accent4,
                    center: Text(
                      _model.solveTimerValue,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                fontSize: 40.0,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) {
                            if (widget.difficulty == 1) {
                              return wrapWithModel(
                                model: _model.tier01Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier01Widget(),
                              );
                            } else if (widget.difficulty == 2) {
                              return wrapWithModel(
                                model: _model.tier02Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier02Widget(),
                              );
                            } else if (widget.difficulty == 3) {
                              return wrapWithModel(
                                model: _model.tier03Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier03Widget(),
                              );
                            } else if (widget.difficulty == 4) {
                              return wrapWithModel(
                                model: _model.tier04Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier04Widget(),
                              );
                            } else if (widget.difficulty == 5) {
                              return wrapWithModel(
                                model: _model.tier05Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier05Widget(),
                              );
                            } else if (widget.difficulty == 6) {
                              return wrapWithModel(
                                model: _model.tier06Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier06Widget(),
                              );
                            } else if (widget.difficulty == 7) {
                              return wrapWithModel(
                                model: _model.tier07Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier07Widget(),
                              );
                            } else if (widget.difficulty == 8) {
                              return wrapWithModel(
                                model: _model.tier08Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier08Widget(),
                              );
                            } else if (widget.difficulty == 9) {
                              return wrapWithModel(
                                model: _model.tier09Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier09Widget(),
                              );
                            } else if (widget.difficulty == 10) {
                              return wrapWithModel(
                                model: _model.tier10Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier10Widget(),
                              );
                            } else if (widget.difficulty == 11) {
                              return wrapWithModel(
                                model: _model.tier11Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier11Widget(),
                              );
                            } else if (widget.difficulty == 12) {
                              return wrapWithModel(
                                model: _model.tier12Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier12Widget(),
                              );
                            } else if (widget.difficulty == 13) {
                              return wrapWithModel(
                                model: _model.tier13Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier13Widget(),
                              );
                            } else if (widget.difficulty == 14) {
                              return wrapWithModel(
                                model: _model.tier14Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier14Widget(),
                              );
                            } else if (widget.difficulty == 15) {
                              return wrapWithModel(
                                model: _model.tier15Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier15Widget(),
                              );
                            } else if (widget.difficulty == 16) {
                              return wrapWithModel(
                                model: _model.tier16Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier16Widget(),
                              );
                            } else if (widget.difficulty == 17) {
                              return wrapWithModel(
                                model: _model.tier17Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier17Widget(),
                              );
                            } else if (widget.difficulty == 18) {
                              return wrapWithModel(
                                model: _model.tier18Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier18Widget(),
                              );
                            } else if (widget.difficulty == 19) {
                              return wrapWithModel(
                                model: _model.tier19Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier19Widget(),
                              );
                            } else if (widget.difficulty == 20) {
                              return wrapWithModel(
                                model: _model.tier20Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier20Widget(),
                              );
                            } else if (widget.difficulty == 21) {
                              return wrapWithModel(
                                model: _model.tier21Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier21Widget(),
                              );
                            } else if (widget.difficulty == 22) {
                              return wrapWithModel(
                                model: _model.tier22Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier22Widget(),
                              );
                            } else if (widget.difficulty == 23) {
                              return wrapWithModel(
                                model: _model.tier23Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier23Widget(),
                              );
                            } else if (widget.difficulty == 24) {
                              return wrapWithModel(
                                model: _model.tier24Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier24Widget(),
                              );
                            } else if (widget.difficulty == 25) {
                              return wrapWithModel(
                                model: _model.tier25Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier25Widget(),
                              );
                            } else if (widget.difficulty == 26) {
                              return wrapWithModel(
                                model: _model.tier26Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier26Widget(),
                              );
                            } else if (widget.difficulty == 27) {
                              return wrapWithModel(
                                model: _model.tier27Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier27Widget(),
                              );
                            } else if (widget.difficulty == 28) {
                              return wrapWithModel(
                                model: _model.tier28Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier28Widget(),
                              );
                            } else if (widget.difficulty == 29) {
                              return wrapWithModel(
                                model: _model.tier29Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier29Widget(),
                              );
                            } else {
                              return wrapWithModel(
                                model: _model.tier30Model,
                                updateCallback: () => setState(() {}),
                                child: const Tier30Widget(),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.title,
                          'null',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 30.0,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.problemId?.toString(),
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF353539),
                              fontSize: 20.0,
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '타이머',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              icon: const Icon(
                                Icons.play_circle,
                                color: Color(0xFF158C24),
                                size: 40.0,
                              ),
                              onPressed: () async {
                                _model.solveTimerController.onStartTimer();
                                _model.tagTimerController.onStartTimer();
                              },
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              icon: const Icon(
                                Icons.pause_circle,
                                color: Color(0xFF0404E9),
                                size: 40.0,
                              ),
                              onPressed: () async {
                                _model.solveTimerController.onStopTimer();
                                _model.tagTimerController.onStopTimer();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '태그 목록',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        if (!widget.tagOpen)
                          FlutterFlowIconButton(
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.lock_outline,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              if (widget.tagOpen && (_model.tagTimerMilliseconds <= 0))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          widget.tags!.toList().toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'challengeSuccess',
                      queryParameters: {
                        'difficulty': serializeParam(
                          widget.difficulty,
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: '문제 해결',
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

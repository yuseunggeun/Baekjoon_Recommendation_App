import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'challenge_success_model.dart';
export 'challenge_success_model.dart';

class ChallengeSuccessWidget extends StatefulWidget {
  const ChallengeSuccessWidget({
    super.key,
    int? difficulty,
    String? title,
    int? problemId,
    int? successTime,
  })  : difficulty = difficulty ?? 3,
        title = title ?? 'null',
        problemId = problemId ?? 0,
        successTime = successTime ?? 0;

  final int difficulty;
  final String title;
  final int problemId;
  final int successTime;

  @override
  _ChallengeSuccessWidgetState createState() => _ChallengeSuccessWidgetState();
}

class _ChallengeSuccessWidgetState extends State<ChallengeSuccessWidget>
    with TickerProviderStateMixin {
  late ChallengeSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 400.ms),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 800.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 800.ms,
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
    _model = createModel(context, () => ChallengeSuccessModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.hour = (widget.successTime / 3600000).floor();
        _model.min = (widget.successTime / 60000).floor();
        _model.sec = (widget.successTime / 1000).floor();
      });
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
            '문제 풀이 성공',
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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 20.0),
                child: Text(
                  '축하합니다!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 60.0,
                        fontWeight: FontWeight.w500,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  '${formatNumber(
                    _model.hour,
                    formatType: FormatType.custom,
                    format: '00',
                    locale: '',
                  )}:${formatNumber(
                    _model.min,
                    formatType: FormatType.custom,
                    format: '00',
                    locale: '',
                  )}:${formatNumber(
                    _model.sec,
                    formatType: FormatType.custom,
                    format: '00',
                    locale: '',
                  )}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 40.0,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'assets',
                    ).image,
                  ),
                ),
                child: Builder(
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
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 30.0,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation3']!),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.problemId.toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 30.0,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation4']!),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 134.0,
                      height: 80.0,
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.addBookmarkRes =
                                await BookmarkGroup.addBookmarkCall.call(
                              userId: FFAppState().userData.userId,
                              password: FFAppState().userData.password,
                              problemId: widget.problemId,
                              title: widget.title,
                              difficulty: widget.difficulty,
                              solveCount: 0,
                            );
                            if ((_model.addBookmarkRes?.succeeded ?? true)) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    '북마크 추가 완료',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 2000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('alert'),
                                    content: Text(getJsonField(
                                      (_model.addBookmarkRes?.jsonBody ?? ''),
                                      r'''$["message"]''',
                                    ).toString()),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }

                            setState(() {});
                          },
                          text: '북마크하기',
                          options: FFButtonOptions(
                            height: 73.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF39AAEF),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['buttonOnPageLoadAnimation1']!),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 145.0,
                        height: 81.0,
                        decoration: const BoxDecoration(),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await SolvedGroup.addSolvedCall.call(
                              userId: FFAppState().userData.userId,
                              password: FFAppState().userData.password,
                              problemId: widget.problemId,
                              title: widget.title,
                              diffuculty: widget.difficulty,
                              elapsedTime: widget.successTime,
                            );

                            context.pushNamed('MainPage');
                          },
                          text: '메인화면으로',
                          options: FFButtonOptions(
                            height: 54.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['buttonOnPageLoadAnimation2']!),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'tag_page_model.dart';
export 'tag_page_model.dart';

class TagPageWidget extends StatefulWidget {
  const TagPageWidget({super.key});

  @override
  _TagPageWidgetState createState() => _TagPageWidgetState();
}

class _TagPageWidgetState extends State<TagPageWidget>
    with TickerProviderStateMixin {
  late TagPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
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
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 200.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 500.ms),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 500.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 600.ms),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 700.ms),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 700.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'rowOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 800.ms),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 800.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 1200.ms,
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
    _model = createModel(context, () => TagPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.tagList =
            FFAppState().searchCondition.tags.toList().cast<String>();
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
            '태그 설정',
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: Text(
                  '검색에 사용되는 태그를 설정합니다',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        '태그 선택',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          setState(() {
                            _model.tagList = [];
                          });
                        },
                        text: '전부 삭제',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFE2E2F0),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).error,
                                    fontWeight: FontWeight.bold,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('dp') ? true : false) {
                            setState(() {
                              _model.removeFromTagList('dp');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('dp');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('dp')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '다이나믹 프로그래밍',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('math') ? true : false) {
                            setState(() {
                              _model.removeFromTagList('math');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('math');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('math')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '수학',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation2']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('string')
                              ? true
                              : false) {
                            setState(() {
                              _model.removeFromTagList('string');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('string');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('string')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '문자열',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('implementation')
                              ? true
                              : false) {
                            setState(() {
                              _model.removeFromTagList('implementation');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('implementation');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('implementation')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '구현',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('greedy')
                              ? true
                              : false) {
                            setState(() {
                              _model.removeFromTagList('greedy');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('greedy');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('greedy')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '그리디',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation3']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('trees') ? true : false) {
                            setState(() {
                              _model.removeFromTagList('trees');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('trees');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('trees')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '트리',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('sort') ? true : false) {
                            setState(() {
                              _model.removeFromTagList('sort');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('sort');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('sort')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '정렬',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('graphs')
                              ? true
                              : false) {
                            setState(() {
                              _model.removeFromTagList('graphs');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('graphs');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('graphs')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '그래프',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation4']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('binary_search')
                              ? true
                              : false) {
                            setState(() {
                              _model.removeFromTagList('binary_search');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('binary_search');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('binary_search')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '이분탐색',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tagList.contains('data_structures')
                              ? true
                              : false) {
                            setState(() {
                              _model.removeFromTagList('data_structures');
                            });
                          } else {
                            setState(() {
                              _model.addToTagList('data_structures');
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: _model.tagList.contains('data_structures')
                                ? const Color(0xFF7668F1)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(15.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              width: 3.0,
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: Text(
                              '자료구조',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation5']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    setState(() {
                      FFAppState().updateSearchConditionStruct(
                        (e) => e..tags = _model.tagList.toList(),
                      );
                    });
                    context.safePop();
                  },
                  text: '설정 완료',
                  options: FFButtonOptions(
                    height: 52.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(40.0, 10.0, 40.0, 10.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ).animateOnPageLoad(
                    animationsMap['buttonOnPageLoadAnimation']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

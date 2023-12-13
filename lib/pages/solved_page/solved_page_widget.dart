import '/backend/api_requests/api_calls.dart';
import '/components/update_solved_memo_widget.dart';
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
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'solved_page_model.dart';
export 'solved_page_model.dart';

class SolvedPageWidget extends StatefulWidget {
  const SolvedPageWidget({super.key});

  @override
  _SolvedPageWidgetState createState() => _SolvedPageWidgetState();
}

class _SolvedPageWidgetState extends State<SolvedPageWidget>
    with TickerProviderStateMixin {
  late SolvedPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'listViewOnPageLoadAnimation': AnimationInfo(
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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SolvedPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult = await SolvedGroup.getSolvesCall.call(
        userId: FFAppState().userData.userId,
        password: FFAppState().userData.password,
      );
      if ((_model.apiResult?.succeeded ?? true)) {
        setState(() {
          _model.solvedJSON = (_model.apiResult?.jsonBody ?? '');
        });
        setState(() {
          _model.solvedList = getJsonField(
            _model.solvedJSON,
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
              content: Text(getJsonField(
                (_model.apiResult?.jsonBody ?? ''),
                r'''$["message"]''',
              ).toString().toString()),
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
            '해결한 문제',
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
                      final bookmarks = _model.solvedList.toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: bookmarks.length,
                        itemBuilder: (context, bookmarksIndex) {
                          final bookmarksItem = bookmarks[bookmarksIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 71.0,
                                  height: 67.0,
                                  decoration: const BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          1) {
                                        return Tier01Widget(
                                          key: Key(
                                              'Key5ta_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          2) {
                                        return Tier02Widget(
                                          key: Key(
                                              'Keysne_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          3) {
                                        return Tier03Widget(
                                          key: Key(
                                              'Key880_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          4) {
                                        return Tier04Widget(
                                          key: Key(
                                              'Keyrl8_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          5) {
                                        return Tier05Widget(
                                          key: Key(
                                              'Keym1k_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          6) {
                                        return Tier06Widget(
                                          key: Key(
                                              'Keyyxc_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          7) {
                                        return Tier07Widget(
                                          key: Key(
                                              'Key3ag_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          8) {
                                        return Tier08Widget(
                                          key: Key(
                                              'Key03m_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          9) {
                                        return Tier09Widget(
                                          key: Key(
                                              'Keyuix_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          10) {
                                        return Tier10Widget(
                                          key: Key(
                                              'Keyvda_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          11) {
                                        return Tier11Widget(
                                          key: Key(
                                              'Keyih9_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          12) {
                                        return Tier12Widget(
                                          key: Key(
                                              'Keyohj_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          13) {
                                        return Tier13Widget(
                                          key: Key(
                                              'Key51g_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          14) {
                                        return Tier14Widget(
                                          key: Key(
                                              'Keym0x_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          15) {
                                        return Tier15Widget(
                                          key: Key(
                                              'Keyzei_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          16) {
                                        return Tier16Widget(
                                          key: Key(
                                              'Key87q_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          17) {
                                        return Tier17Widget(
                                          key: Key(
                                              'Keyaaq_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          18) {
                                        return Tier18Widget(
                                          key: Key(
                                              'Key9fc_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          19) {
                                        return Tier19Widget(
                                          key: Key(
                                              'Keyan9_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          20) {
                                        return Tier20Widget(
                                          key: Key(
                                              'Key9zn_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          21) {
                                        return Tier21Widget(
                                          key: Key(
                                              'Keyz2r_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          22) {
                                        return Tier22Widget(
                                          key: Key(
                                              'Keyrb5_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          23) {
                                        return Tier23Widget(
                                          key: Key(
                                              'Keydqp_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          24) {
                                        return Tier24Widget(
                                          key: Key(
                                              'Keyeoe_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          25) {
                                        return Tier25Widget(
                                          key: Key(
                                              'Keybqz_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          26) {
                                        return Tier26Widget(
                                          key: Key(
                                              'Keyisv_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          27) {
                                        return Tier27Widget(
                                          key: Key(
                                              'Keya0n_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          28) {
                                        return Tier28Widget(
                                          key: Key(
                                              'Key7ne_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else if (getJsonField(
                                            bookmarksItem,
                                            r'''$["difficulty"]''',
                                          ) ==
                                          29) {
                                        return Tier29Widget(
                                          key: Key(
                                              'Keyro3_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      } else {
                                        return Tier30Widget(
                                          key: Key(
                                              'Keyogc_${bookmarksIndex}_of_${bookmarks.length}'),
                                        );
                                      }
                                    },
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 147.0,
                                        height: 21.0,
                                        decoration: const BoxDecoration(),
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: Text(
                                          getJsonField(
                                            bookmarksItem,
                                            r'''$["title"]''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Container(
                                          width: 137.0,
                                          height: 28.0,
                                          decoration: const BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                getJsonField(
                                                  bookmarksItem,
                                                  r'''$["problemId"]''',
                                                ).toString(),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 115.0,
                                  height: 65.0,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          functions.msToString(getJsonField(
                                            bookmarksItem,
                                            r'''$["elapsedTime"]''',
                                          )),
                                          '0',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Text(
                                        (String str) {
                                          return str.replaceAll("T", "\n");
                                        }(getJsonField(
                                          bookmarksItem,
                                          r'''$["solvedTime"]''',
                                        ).toString()),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: const BoxDecoration(),
                                  child: Builder(
                                    builder: (context) => FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      icon: const Icon(
                                        Icons.text_snippet,
                                        color: Color(0xFF39AAEF),
                                        size: 40.0,
                                      ),
                                      onPressed: () async {
                                        await showAlignedDialog(
                                          context: context,
                                          isGlobal: true,
                                          avoidOverflow: false,
                                          targetAnchor: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          followerAnchor: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          builder: (dialogContext) {
                                            return Material(
                                              color: Colors.transparent,
                                              child: GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: UpdateSolvedMemoWidget(
                                                  solvedId: getJsonField(
                                                    bookmarksItem,
                                                    r'''$["id"]''',
                                                  ),
                                                  memo: getJsonField(
                                                    bookmarksItem,
                                                    r'''$["memo"]''',
                                                  ).toString(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                    ),
                                  ),
                                ),
                              ],
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

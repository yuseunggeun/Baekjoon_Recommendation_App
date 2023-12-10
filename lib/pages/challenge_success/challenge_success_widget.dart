import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/tier_img/tier1/tier1_widget.dart';
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
import '/tier_img/tier2/tier2_widget.dart';
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
import '/tier_img/tier3/tier3_widget.dart';
import '/tier_img/tier30/tier30_widget.dart';
import '/tier_img/tier4/tier4_widget.dart';
import '/tier_img/tier5/tier5_widget.dart';
import '/tier_img/tier6/tier6_widget.dart';
import '/tier_img/tier7/tier7_widget.dart';
import '/tier_img/tier8/tier8_widget.dart';
import '/tier_img/tier9/tier9_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'challenge_success_model.dart';
export 'challenge_success_model.dart';

class ChallengeSuccessWidget extends StatefulWidget {
  const ChallengeSuccessWidget({
    super.key,
    int? difficulty,
  })  : difficulty = difficulty ?? 3;

  final int difficulty;

  @override
  _ChallengeSuccessWidgetState createState() => _ChallengeSuccessWidgetState();
}

class _ChallengeSuccessWidgetState extends State<ChallengeSuccessWidget> {
  late ChallengeSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChallengeSuccessModel());
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
            'Page Title',
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
              Text(
                '14',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'assets',
                    ).image,
                  ),
                ),
              ),
              Builder(
                builder: (context) {
                  if (widget.difficulty == 1) {
                    return wrapWithModel(
                      model: _model.tier1Model,
                      updateCallback: () => setState(() {}),
                      child: const Tier1Widget(),
                    );
                  } else if (widget.difficulty == 2) {
                    return wrapWithModel(
                      model: _model.tier2Model,
                      updateCallback: () => setState(() {}),
                      child: const Tier2Widget(),
                    );
                  } else if (widget.difficulty == 3) {
                    return wrapWithModel(
                      model: _model.tier3Model,
                      updateCallback: () => setState(() {}),
                      child: const Tier3Widget(),
                    );
                  } else if (widget.difficulty == 4) {
                    return wrapWithModel(
                      model: _model.tier4Model,
                      updateCallback: () => setState(() {}),
                      child: const Tier4Widget(),
                    );
                  } else if (widget.difficulty == 5) {
                    return wrapWithModel(
                      model: _model.tier5Model,
                      updateCallback: () => setState(() {}),
                      child: const Tier5Widget(),
                    );
                  } else if (widget.difficulty == 6) {
                    return wrapWithModel(
                      model: _model.tier6Model,
                      updateCallback: () => setState(() {}),
                      child: const Tier6Widget(),
                    );
                  } else if (widget.difficulty == 7) {
                    return wrapWithModel(
                      model: _model.tier7Model,
                      updateCallback: () => setState(() {}),
                      child: const Tier7Widget(),
                    );
                  } else if (widget.difficulty == 8) {
                    return wrapWithModel(
                      model: _model.tier8Model,
                      updateCallback: () => setState(() {}),
                      child: const Tier8Widget(),
                    );
                  } else if (widget.difficulty == 9) {
                    return wrapWithModel(
                      model: _model.tier9Model,
                      updateCallback: () => setState(() {}),
                      child: const Tier9Widget(),
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
      ),
    );
  }
}

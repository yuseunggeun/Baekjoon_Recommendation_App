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
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'test_model.dart';
export 'test_model.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  late TestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestModel());
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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [],
                  ),
                  wrapWithModel(
                    model: _model.tier11Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier11Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier16Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier16Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier21Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier21Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier26Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier26Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier01Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier01Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier06Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier06Widget(),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.tier12Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier12Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier17Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier17Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier22Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier22Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier27Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier27Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier02Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier02Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier07Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier07Widget(),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.tier13Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier13Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier18Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier18Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier23Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier23Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier28Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier28Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier03Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier03Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier08Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier08Widget(),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.tier14Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier14Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier19Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier19Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier24Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier24Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier29Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier29Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier04Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier04Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier09Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier09Widget(),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.tier10Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier10Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier15Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier15Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier20Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier20Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier25Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier25Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier30Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier30Widget(),
                  ),
                  wrapWithModel(
                    model: _model.tier05Model,
                    updateCallback: () => setState(() {}),
                    child: const Tier05Widget(),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/01.png',
                      width: 62.0,
                      height: 76.0,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tier28_model.dart';
export 'tier28_model.dart';

class Tier28Widget extends StatefulWidget {
  const Tier28Widget({super.key});

  @override
  _Tier28WidgetState createState() => _Tier28WidgetState();
}

class _Tier28WidgetState extends State<Tier28Widget> {
  late Tier28Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Tier28Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/28.png',
        width: 62.0,
        height: 76.0,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

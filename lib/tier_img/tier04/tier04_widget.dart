import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tier04_model.dart';
export 'tier04_model.dart';

class Tier04Widget extends StatefulWidget {
  const Tier04Widget({super.key});

  @override
  _Tier04WidgetState createState() => _Tier04WidgetState();
}

class _Tier04WidgetState extends State<Tier04Widget> {
  late Tier04Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Tier04Model());
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
        'assets/images/04.png',
        width: 62.0,
        height: 76.0,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

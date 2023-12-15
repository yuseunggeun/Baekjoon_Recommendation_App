import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tier14_model.dart';
export 'tier14_model.dart';

class Tier14Widget extends StatefulWidget {
  const Tier14Widget({super.key});

  @override
  _Tier14WidgetState createState() => _Tier14WidgetState();
}

class _Tier14WidgetState extends State<Tier14Widget> {
  late Tier14Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Tier14Model());
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
        'assets/images/14.png',
        width: 62.0,
        height: 76.0,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

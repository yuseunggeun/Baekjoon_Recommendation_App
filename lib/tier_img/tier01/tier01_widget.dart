import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tier01_model.dart';
export 'tier01_model.dart';

class Tier01Widget extends StatefulWidget {
  const Tier01Widget({super.key});

  @override
  _Tier01WidgetState createState() => _Tier01WidgetState();
}

class _Tier01WidgetState extends State<Tier01Widget> {
  late Tier01Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Tier01Model());
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
        'assets/images/01.png',
        width: 62.0,
        height: 76.0,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

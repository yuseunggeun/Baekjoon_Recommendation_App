import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tier15_model.dart';
export 'tier15_model.dart';

class Tier15Widget extends StatefulWidget {
  const Tier15Widget({super.key});

  @override
  _Tier15WidgetState createState() => _Tier15WidgetState();
}

class _Tier15WidgetState extends State<Tier15Widget> {
  late Tier15Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Tier15Model());
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
        'assets/images/15.png',
        width: 62.0,
        height: 76.0,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'challenge_problem_widget.dart' show ChallengeProblemWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class ChallengeProblemModel extends FlutterFlowModel<ChallengeProblemWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for solveTimer widget.
  int solveTimerMilliseconds = 0;
  String solveTimerValue = StopWatchTimer.getDisplayTime(0, milliSecond: false);
  FlutterFlowTimerController solveTimerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    solveTimerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

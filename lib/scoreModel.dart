import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScoreModel {
  String factor;
  int score;
  charts.Color barColor;

  ScoreModel(
      {@required this.factor,
        @required this.score,
        @required this.barColor});
}

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:culture_score_app/scoreModel.dart';

final List<ScoreModel> data = [
  ScoreModel(
    factor: "Empowerment",
    score: 4,
    barColor: charts.ColorUtil.fromDartColor(Colors.orange),
  ),
  ScoreModel(
    factor: "Trust",
    score: 3,
    barColor: charts.ColorUtil.fromDartColor(Colors.orangeAccent),
  ),
  ScoreModel(
    factor: "Inclusion",
    score: 4,
    barColor: charts.ColorUtil.fromDartColor(Colors.orange),
  ),
  ScoreModel(
    factor: "Empathy",
    score: 5,
    barColor: charts.ColorUtil.fromDartColor(Colors.amber),
  ),
  ScoreModel(
    factor: "Forgiveness",
    score: 5,
    barColor: charts.ColorUtil.fromDartColor(Colors.yellow),
  ),
  ScoreModel(
    factor: "Vulnerability",
    score: 5,
    barColor: charts.ColorUtil.fromDartColor(Colors.deepOrange),
  ),

];

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:culture_score_app/scoreModel.dart';
import 'package:flutter/material.dart';

class ScoreChart extends StatelessWidget {
  final List<ScoreModel> data;

  ScoreChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ScoreModel, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (ScoreModel series, _) => series.factor,
          measureFn: (ScoreModel series, _) => series.score,
          colorFn: (ScoreModel series, _) => series.barColor)
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Culture Score Chart",
                // ignore: deprecated_member_use
                style: Theme.of(context).textTheme.body2,
              ),
              Expanded(
                child: charts.BarChart(
                    series,
                    vertical: false,
                    animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
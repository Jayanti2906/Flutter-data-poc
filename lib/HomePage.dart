import 'package:culture_score_app/score_chart.dart';
import 'package:flutter/material.dart';
import 'package:culture_score_app/ratings.dart';
import 'package:culture_score_app/form.dart';
import 'chart_data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

double rating;
var cs = 0.0;
var cultScore = 0.0;
var advocates=0.0;
var perAdvocates =0.0;
var neutral = 0.0;
var skeptics = 0.0;
var perSkeptics =0.0;
cultureScore(items) {
  cultScore = 0.0;
  for (var i = 0; i < data.length; i++) {
    if(data[i].score > 8)
      {
        advocates++;
      }
    else if (data[i].score < 9 && data[i].score > 6)
      {
        neutral++;
      }
    else{
      skeptics++;
    }
    cultScore =  ((advocates - skeptics)/data.length) * 100;
    print(data[i].score);
  }
  print("culture score = $cultScore");
  return cultScore;
}

   @override
    void setState(fn) {
      super.setState(fn);
    }

  @override
  Widget build(BuildContext context) {
    cs = cultureScore(data);
    cultScore=0.0;
    advocates=0.0;
    skeptics=0.0;
    neutral=0.0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Seneca Culture Score"),
      ),

      body: SingleChildScrollView(
        child: Container(child: Column(
          children: [
            ScoreChart(
                data: data
            ),
            SizedBox(height:16,),

            StarDisplay(value: cs/10),
            Text(" Overall Culture Score = $cs " ),
            SizedBox(height:16,),
            RaisedButton(
              child: Text('Open Form'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackForm()),
                );
              },
            ),     SizedBox(height:5,),
          ],
        ),
        ),
      ),
    );
  }
}
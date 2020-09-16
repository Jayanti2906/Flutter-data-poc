import 'package:culture_score_app/score_chart.dart';
import 'package:flutter/material.dart';
import 'package:culture_score_app/scoreModel.dart';
import 'package:culture_score_app/create_rating.dart';
import 'package:culture_score_app/ratings.dart';
import 'package:culture_score_app/chart_data.dart';
import 'form_display.dart';

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {

  TextEditingController nameController = TextEditingController();

  void printData(){
    print(data);
  }

  @override
  void initState() {
    printData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("Seneca Culture"),
        ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            // Feedback form
          FormDisplay(items:data),
          RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'), )
          ]
        ),


        ),
    );
  }
}


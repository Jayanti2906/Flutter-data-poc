import 'package:culture_score_app/scoreModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage.dart';
import 'chart_data.dart';


class FormDisplay extends StatelessWidget {
  final List<ScoreModel> items;
  FormDisplay({@required this.items}) ;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    List<TextEditingController> _controllers1 = new List();

    for(var i=0; i < items.length ;i++){
      _controllers1.add(new TextEditingController());
    }

    updateChartData(items){
      for(var i=0;i < data.length; i++){
        data[i].score = int.parse(items[i].text);
      }
    }



    return Form(
          key: _formKey,
          child: Column(
            children: [
              ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  itemCount: items.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                          title: Column(
                            children: [
                              Text('${items[index].factor}'),
                              TextFormField(
                                  controller: _controllers1[index],
                                  keyboardType: TextInputType.number,
                                  validator:(value){
                                    if(value.isEmpty )
                                      {
                                        return 'Please enter score';
                                      }
                                    else {
                                      var val = int.parse(value);
                                      if(val>10 || val == 0 )
                                        return 'Please enter score in the range of 1 to 10';
                                    }
                                    return null;
                                  },
                                  inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                                  decoration: new InputDecoration(
                                  hintText: "Score from 1 to 5",
                                ),
                              ),
                            ],
                          ),
                        ),

                    );
                  }),

              Card(

                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "Write your name",
                  ),

                ),
              ),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    updateChartData(_controllers1);
                    //cultureScore(_controllers);


                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          )
      );

  }
}

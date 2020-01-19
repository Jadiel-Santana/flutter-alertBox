import 'package:flutter/material.dart';

class AbScreen extends StatefulWidget {
  _AbScreenState createState() => _AbScreenState();
}

class _AbScreenState extends State<AbScreen> {
  var fontSizeTextRadioButton = 18.0;
  var paddingDefault = 8.0;
  var paddingRight = 10.0;
  var paddingTop = 10.0;
  var colorGreyLight = Color(0xFFd3d3d3);
  var colorWhite = Colors.white;
  var colorGreen = Colors.green;
  var colorAmber = Colors.amber;
  var colorGrey = Colors.grey;
  var colorRed = Colors.red;
  var colorBlue = Colors.blue;
  int breakfast;
  int lunch;
  int dinner;
  int bars;
  int attendance;
  String comment;

  void setSelectedRadioBreakfast(int val) => setState(() => breakfast = val);
  void setSelectedRadioLunch(int val) => setState(() => lunch = val);
  void setSelectedRadioDinner(int val) => setState(() => dinner = val);
  void setSelectedRadioBars(int val) => setState(() => bars = val);
  void setSelectedRadioAttendance(int val) => setState(() => attendance = val);
  void setComment(String com) => setState(() => comment = com);

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        color: colorWhite,
        elevation: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: colorBlue,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Alimentos e Bebidas", style: TextStyle(fontWeight: FontWeight.bold, color: colorWhite, fontSize: 22,),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Café da Manhã", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: breakfast, onChanged: (val) => setSelectedRadioBreakfast(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: breakfast, onChanged: (val) => setSelectedRadioBreakfast(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: breakfast, onChanged: (val) => setSelectedRadioBreakfast(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: breakfast, onChanged: (val) => setSelectedRadioBreakfast(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Almoço", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: lunch, onChanged: (val) => setSelectedRadioLunch(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: lunch, onChanged: (val) => setSelectedRadioLunch(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: lunch, onChanged: (val) => setSelectedRadioLunch(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: lunch, onChanged: (val) => setSelectedRadioLunch(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Jantar", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: dinner, onChanged: (val) => setSelectedRadioDinner(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: dinner, onChanged: (val) => setSelectedRadioDinner(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: dinner, onChanged: (val) => setSelectedRadioDinner(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: dinner, onChanged: (val) => setSelectedRadioDinner(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Bares (Central, Mirante, Lounge)", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: bars, onChanged: (val) => setSelectedRadioBars(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: bars, onChanged: (val) => setSelectedRadioBars(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: bars, onChanged: (val) => setSelectedRadioBars(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: bars, onChanged: (val) => setSelectedRadioBars(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Atendimento", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: attendance, onChanged: (val) => setSelectedRadioAttendance(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: attendance, onChanged: (val) => setSelectedRadioAttendance(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: attendance, onChanged: (val) => setSelectedRadioAttendance(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: attendance, onChanged: (val) => setSelectedRadioAttendance(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Comentário Opcional", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Padding(
              padding: EdgeInsets.only(top: paddingTop, left: 16.0, right: 16.0, bottom: paddingTop),
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                //onChanged: (com) => setComment(com),
                decoration: InputDecoration(
                        border: OutlineInputBorder()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
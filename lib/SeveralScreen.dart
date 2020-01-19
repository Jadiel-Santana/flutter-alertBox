import 'package:flutter/material.dart';

class SeveralScreen extends StatefulWidget {
  _SeveralScreenState createState() => _SeveralScreenState();
}

class _SeveralScreenState extends State<SeveralScreen> {
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
  int preservationGardens = 4;
  int security;
  int leisure;
  int areaSpa;
  int areaSpaAttendance;
  String comment;

  void setSelectedRadioPreservationGardens(int val) => setState(() => preservationGardens = val);
  void setSelectedRadioSecurity(int val) => setState(() => security = val);
  void setSelectedRadioLeisure(int val) => setState(() => leisure = val);
  void setSelectedRadioAreaSpa(int val) => setState(() => areaSpa = val);
  void setSelectedRadioAreaSpaAttendance(int val) => setState(() => areaSpaAttendance = val);
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
                  Text("Diversos", style: TextStyle(fontWeight: FontWeight.bold, color: colorWhite, fontSize: 24,),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Preservação dos Jardins", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: preservationGardens, onChanged: (val) => setSelectedRadioPreservationGardens(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: preservationGardens, onChanged: (val) => setSelectedRadioPreservationGardens(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: preservationGardens, onChanged: (val) => setSelectedRadioPreservationGardens(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: preservationGardens, onChanged: (val) => setSelectedRadioPreservationGardens(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Segurança e Portarias", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: security, onChanged: (val) => setSelectedRadioSecurity(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: security, onChanged: (val) => setSelectedRadioSecurity(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: security, onChanged: (val) => setSelectedRadioSecurity(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: security, onChanged: (val) => setSelectedRadioSecurity(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Lazer Adulto - Infantil", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: leisure, onChanged: (val) => setSelectedRadioLeisure(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: leisure, onChanged: (val) => setSelectedRadioLeisure(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: leisure, onChanged: (val) => setSelectedRadioLeisure(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: leisure, onChanged: (val) => setSelectedRadioLeisure(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Área Spa (Salão de Beleza, Sauna, Academia)", textAlign: TextAlign.center, style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: areaSpa, onChanged: (val) => setSelectedRadioAreaSpa(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: areaSpa, onChanged: (val) => setSelectedRadioAreaSpa(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: areaSpa, onChanged: (val) => setSelectedRadioAreaSpa(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: areaSpa, onChanged: (val) => setSelectedRadioAreaSpa(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Área Spa - Atendimento", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: areaSpaAttendance, onChanged: (val) => setSelectedRadioAreaSpaAttendance(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: areaSpaAttendance, onChanged: (val) => setSelectedRadioAreaSpaAttendance(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: areaSpaAttendance, onChanged: (val) => setSelectedRadioAreaSpaAttendance(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: areaSpaAttendance, onChanged: (val) => setSelectedRadioAreaSpaAttendance(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
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
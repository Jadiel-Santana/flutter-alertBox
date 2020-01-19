import 'package:flutter/material.dart';

class MaintenanceScreen extends StatefulWidget {
  _MaintenanceScreenState createState() => _MaintenanceScreenState();
}

class _MaintenanceScreenState extends State<MaintenanceScreen> {
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
  int areas;
  int apartaments;
  int pools;
  int attendance;
  String comment;

  void setSelectedRadioAreas(int val) => setState(() => areas = val);
  void setSelectedRadioApartaments(int val) => setState(() => apartaments = val);
  void setSelectedRadioPools(int val) => setState(() => pools = val);
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
                  Text("Manutenção e Estrutura", style: TextStyle(fontWeight: FontWeight.bold, color: colorWhite, fontSize: 22,),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Manutenção da Área Social", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: areas, onChanged: (val) => setSelectedRadioAreas(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: areas, onChanged: (val) => setSelectedRadioAreas(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: areas, onChanged: (val) => setSelectedRadioAreas(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: areas, onChanged: (val) => setSelectedRadioAreas(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Manutenção dos Apartamentos", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: apartaments, onChanged: (val) => setSelectedRadioApartaments(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: apartaments, onChanged: (val) => setSelectedRadioApartaments(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: apartaments, onChanged: (val) => setSelectedRadioApartaments(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: apartaments, onChanged: (val) => setSelectedRadioApartaments(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Piscinas", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: pools, onChanged: (val) => setSelectedRadioPools(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: pools, onChanged: (val) => setSelectedRadioPools(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: pools, onChanged: (val) => setSelectedRadioPools(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: pools, onChanged: (val) => setSelectedRadioPools(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Atendimentos e Solicitações", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
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
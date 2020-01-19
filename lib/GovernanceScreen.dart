import 'package:flutter/material.dart';

class GovernanceScreen extends StatefulWidget {
  _GovernanceScreenState createState() => _GovernanceScreenState();
}

class _GovernanceScreenState extends State<GovernanceScreen> {
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
  int cleanningRooms;
  int furnitureDecoration;
  int attendanceMaid;
  int cleanlingAreas;
  String comment;

  void setSelectedRadioCleanningRooms(int val) => setState(() => cleanningRooms = val);
  void setSelectedRadioFurnitureDecoration(int val) => setState(() => furnitureDecoration = val);
  void setSelectedRadioAttendanceMaid(int val) => setState(() => attendanceMaid = val);
  void setSelectedRadioCleanlingAreas(int val) => setState(() => cleanlingAreas = val);
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
                  Text("Governança", style: TextStyle(fontWeight: FontWeight.bold, color: colorWhite, fontSize: 22,),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Limpeza dos Apartamentos", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: cleanningRooms, onChanged: (val) => setSelectedRadioCleanningRooms(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: cleanningRooms, onChanged: (val) => setSelectedRadioCleanningRooms(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: cleanningRooms, onChanged: (val) => setSelectedRadioCleanningRooms(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: cleanningRooms, onChanged: (val) => setSelectedRadioCleanningRooms(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Enxoval, Móveis e Decorações", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: furnitureDecoration, onChanged: (val) => setSelectedRadioFurnitureDecoration(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: furnitureDecoration, onChanged: (val) => setSelectedRadioFurnitureDecoration(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: furnitureDecoration, onChanged: (val) => setSelectedRadioFurnitureDecoration(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: furnitureDecoration, onChanged: (val) => setSelectedRadioFurnitureDecoration(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Camareiras - Atendimento", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: attendanceMaid, onChanged: (val) => setSelectedRadioAttendanceMaid(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: attendanceMaid, onChanged: (val) => setSelectedRadioAttendanceMaid(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: attendanceMaid, onChanged: (val) => setSelectedRadioAttendanceMaid(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: attendanceMaid, onChanged: (val) => setSelectedRadioAttendanceMaid(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
              ],
            ),

            Divider(height: 1.0, color: colorGreyLight),

            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Limpeza Áreas Sociais", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: cleanlingAreas, onChanged: (val) => setSelectedRadioCleanlingAreas(val),), Text('E', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: cleanlingAreas, onChanged: (val) => setSelectedRadioCleanlingAreas(val),), Text('B', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: cleanlingAreas, onChanged: (val) => setSelectedRadioCleanlingAreas(val),), Text('R', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: cleanlingAreas, onChanged: (val) => setSelectedRadioCleanlingAreas(val),), Text('D', style: new TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
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
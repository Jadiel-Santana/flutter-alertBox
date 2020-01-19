import 'package:flutter/material.dart';

class IndicateScreen extends StatefulWidget {
  _IndicateScreenState createState() => _IndicateScreenState();
}

class _IndicateScreenState extends State<IndicateScreen> {
  var fontSizeTextRadioButton = 18.0;
  var paddingDefault = 8.0;
  var paddingRight = 10.0;
  var paddingTop = 10.0;
  var colorGreyLight = Color(0xFFd3d3d3);
  var colorWhite = Colors.white;
  var colorBlue = Colors.blue;
  String comment;
  bool indicate = true;

  setComment(String com) => setState(() => comment = com);
  setIndicate(bool val) => setState(() => indicate = val);

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
                  Text("Indicaria o Resort La Torre?", style: TextStyle(fontWeight: FontWeight.bold, color: colorWhite, fontSize: 22,),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Text("Comentário Opcional", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Padding(
              padding: EdgeInsets.only(top: paddingTop, left: 16.0, right: 16.0, bottom: 8.0),
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                //onChanged: (com) => setComment(com),
                decoration: InputDecoration(
                        border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    checkColor: colorWhite,
                    value: indicate,
                    onChanged: (val) => setIndicate(val),
                  ),
                  Text( "Você nos indicaria?", style: TextStyle(color: Colors.indigo, fontSize: fontSizeTextRadioButton,),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
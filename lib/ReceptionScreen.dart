import 'package:flutter/material.dart';

class ReceptionScreen extends StatefulWidget {

  ReceptionScreen({Key key, this.comment}) : super(key: key);

  int service;
  int attendance;
  String comment;
  String serviceDefficient;

  _ReceptionScreenState createState() => _ReceptionScreenState();
}

class _ReceptionScreenState extends State<ReceptionScreen> {
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

  final TextEditingController textController = TextEditingController();
  final TextEditingController textControllerServiceDefficient = TextEditingController();

  initState(){
    super.initState();
    textController.text = widget.comment;
    textController.addListener(setComment);

    textControllerServiceDefficient.text = widget.serviceDefficient;
    textControllerServiceDefficient.addListener(setServiceDefficient);
  }

  dispose(){
    super.dispose();
    textController.dispose();
    textControllerServiceDefficient.dispose();
  }

  setSelectedRadioService(int val) {
    setState((){
      widget.service = val;
    });
    if(val == 1) {
      openAlertBox();
    }
  }
  setSelectedRadioAttendance(int val) {
    setState((){
      widget.attendance = val;
    });
  }

  setComment() {
    setState (() {
      widget.comment = textController.value.text;
    });
  }

  setServiceDefficient() {
    setState (() {
      widget.serviceDefficient = textControllerServiceDefficient.value.text;
    });
  }

  void save() {
    print(widget.serviceDefficient);
  }

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
                  Text("Recepção", style: TextStyle(fontWeight: FontWeight.bold, color: colorWhite, fontSize: 22,),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: paddingTop),
            ),
            Text("Serviço de Recepção", style: TextStyle(color: colorBlue, fontSize: fontSizeTextRadioButton,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: widget.service, onChanged: (val) => setSelectedRadioService(val),), Text('E', style: TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: widget.service, onChanged: (val) => setSelectedRadioService(val),), Text('B', style: TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: widget.service, onChanged: (val) => setSelectedRadioService(val),), Text('R', style: TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: widget.service, onChanged: (val) => setSelectedRadioService(val),), Text('D', style: TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
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
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGreen, value: 4, groupValue: widget.attendance, onChanged: (val) => setSelectedRadioAttendance(val),), Text('E', style: TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGreen),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorAmber, value: 3, groupValue: widget.attendance, onChanged: (val) => setSelectedRadioAttendance(val),), Text('B', style: TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorAmber),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorGrey, value: 2, groupValue: widget.attendance, onChanged: (val) => setSelectedRadioAttendance(val),), Text('R', style: TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorGrey),), ], ),),
                Padding( padding: EdgeInsets.only(right: 15.0), child: Row(children: <Widget>[ Radio(activeColor: colorRed, value: 1, groupValue: widget.attendance, onChanged: (val) => setSelectedRadioAttendance(val),), Text('D', style: TextStyle(fontSize: fontSizeTextRadioButton, fontWeight: FontWeight.bold, color: colorRed),), ], ),),
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
                controller: textController,
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.multiline,
                maxLines: 2,
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

  openAlertBox() {
    return showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                contentPadding: EdgeInsets.only(top: 10.0),
                content: SingleChildScrollView(
                  child: Container(
                    width: 300.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Deixe sua opinião",
                              style: TextStyle(fontSize: 22.0, color: Colors.indigo),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 4.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                          child: TextField(
                            controller: textControllerServiceDefficient,
                            textCapitalization: TextCapitalization.sentences,
                            decoration: InputDecoration(
                              hintText: "Como podemos melhorar os nossos serviços?",
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: 8,
                          ),
                        ),
                        InkWell(
                          onTap: save,
                          child: Container(
                            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(32.0),
                                      bottomRight: Radius.circular(32.0)),
                            ),
                            child: Text(
                              "Salvar Opinião",
                              style: TextStyle(color: Colors.white, fontSize: 20.0),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_app/AbScreen.dart';
import 'package:flutter_app/BeachScreen.dart';
import 'package:flutter_app/GovernanceScreen.dart';
import 'package:flutter_app/IndicateScreen.dart';
import 'package:flutter_app/MaintenanceScreen.dart';
import 'package:flutter_app/ReceptionScreen.dart';
import 'package:flutter_app/SeveralScreen.dart';

class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

    final list=<Widget>[
        ReceptionScreen(),
        AbScreen(),
        MaintenanceScreen(),
        GovernanceScreen(),
        BeachScreen(),
        SeveralScreen(),
        IndicateScreen(),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Page Selector"),
            ),
            body: DefaultTabController(
                length: list.length,
                child: Builder(
                        builder: (BuildContext context)=>Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                                children: <Widget>[
                                    Expanded(
                                       child: TabBarView(children: list)
                                    ),
                                    SizedBox(height: 10.0,),
                                    TabPageSelector(),
                                    RaisedButton(
                                        child: Text("Próximo"),
                                        onPressed: (){
                                            TabController controler=DefaultTabController.of(context);
                                            if(!controler.indexIsChanging){
                                                controler.animateTo(list.length-1);
                                            }
                                        },
                                    ),
                                ],
                            ),
                        )
                ),
            ),
        );
    }
}
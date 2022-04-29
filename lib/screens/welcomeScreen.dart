
import 'package:crime_reporter/screens/myReportsScreen.dart';
import 'package:crime_reporter/screens/reportCrime.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _ReportCrimeState();
}

class _ReportCrimeState extends State<WelcomeScreen> {
  var selected1 = true;
  var selected2 = false;

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(child: Column(children: [
              const Card(
                child: ListTile(
                  leading: Image(width:100,image: AssetImage('assets/images/logo.jpg')),
                  title: Text( 'Welcome to crime reporter',
                        style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    hoverColor: Colors.orange,
                    splashColor: Colors.red,
                    focusColor: Colors.yellow,
                    highlightColor: Colors.purple,
                    child: Container(
                        decoration: BoxDecoration(
                                  border: Border(
                                  bottom: BorderSide(width: 4.0, color: selected1?Colors.orange:Colors.black),),),
                        width: 150,
                        height: 40,
                        child: const Text('Report A Crime',style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment: Alignment.center,
                          ),
                    onTap: () {
                      setState(() {
                        selected1= true;
                        selected2=false;
                      });
                    },
                  ),

                   InkWell(
                    hoverColor: Colors.orange,
                    splashColor: Colors.red,
                    focusColor: Colors.yellow,
                    highlightColor: Colors.purple,
                    child: Container(
                        decoration: BoxDecoration(
                                  border: Border(
                                  bottom: BorderSide(width: 4.0, color:selected2?Colors.orange:Colors.black),),),
                        width: 150,
                        height: 40,
                        child: const Text('My Reports',style: TextStyle(fontWeight: FontWeight.bold),),
                        alignment: Alignment.center,
                          ),
                    onTap: () {
                       setState(() {
                        selected1= false;
                        selected2=true;
                      });
                    },
                  ),
              ],),

              selected1?ReportCrime():MyReports(),
         
            
        ],)

    )
    
    );
    
  }
}
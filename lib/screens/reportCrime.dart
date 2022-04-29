
// import 'package:crime_reporter/components/crimeCard.dart';
// import 'package:crime_reporter/components/searchBar.dart';
// import 'package:crime_reporter/models/sampleCrimes.dart';
// import 'package:crime_reporter/screens/myReportsScreen.dart';
// import 'package:flutter/material.dart';


// class ReportCrime extends StatefulWidget {
//   const ReportCrime({ Key? key }) : super(key: key);

//   @override
//   State<ReportCrime> createState() => _ReportCrimeState();
// }

// class _ReportCrimeState extends State<ReportCrime> {
//   var selected1 = true;
//   var selected2 = false;
//   List crimes = Crimes;
//   final searchcontroler = TextEditingController();

//   searchCrime(String query){
//        final seggestions = crimes.where((crime){
//        final crimeName = crime.name.toLowerCase();
//        final input = query.toLowerCase();
//        return crimeName.contains(input);
//      }).toList();
//      setState(() {
//        crimes = seggestions;
//      });
     
//   }

//   @override
//   Widget build(BuildContext context) {
  
//     return Scaffold(
//       body: Container(child: Column(children: [
//               const Card(
//                 child: ListTile(
//                   leading: Image(width:100,image: AssetImage('assets/images/logo.jpg')),
//                   title: Text( 'Welcome to crime reporter',
//                         style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),),
//                 ),
//               ),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                     hoverColor: Colors.orange,
//                     splashColor: Colors.red,
//                     focusColor: Colors.yellow,
//                     highlightColor: Colors.purple,
//                     child: Container(
//                         decoration: BoxDecoration(
//                                   border: Border(
//                                   bottom: BorderSide(width: 4.0, color: selected1?Colors.orange:Colors.black),),),
//                         width: 150,
//                         height: 40,
//                         child: const Text('Report A Crime',style: TextStyle(fontWeight: FontWeight.bold),),
//                         alignment: Alignment.center,
//                           ),
//                     onTap: () {
//                       setState(() {
//                         selected1= true;
//                         selected2=false;
//                       });
//                     },
//                   ),

//                    InkWell(
//                     hoverColor: Colors.orange,
//                     splashColor: Colors.red,
//                     focusColor: Colors.yellow,
//                     highlightColor: Colors.purple,
//                     child: Container(
//                         decoration: BoxDecoration(
//                                   border: Border(
//                                   bottom: BorderSide(width: 4.0, color:selected2?Colors.orange:Colors.black),),),
//                         width: 150,
//                         height: 40,
//                         child: const Text('My Reports',style: TextStyle(fontWeight: FontWeight.bold),),
//                         alignment: Alignment.center,
//                           ),
//                     onTap: () {
//                        setState(() {
//                         selected1= false;
//                         selected2=true;
//                       });
//                     },
//                   ),
//               ],),

//               selected1?Expanded(
//                 child:Column(children: [
//                     SearchBar(),
//                       Expanded(
//                 child: ListView.builder(
//                   itemCount:crimes.length,
//                   itemBuilder: (BuildContext context ,int index){
//                     return CrimeCard(image:crimes[index].image,name: crimes[index].name,);
//                   }))

//                 ],)

//               ):MyReports()
//           //   Container(
//           //   padding:const  EdgeInsets.fromLTRB(20, 30, 130, 10),
//           //   child: TextField(
//           //     controller: searchcontroler,
//           //     decoration: InputDecoration(
//           //       hintText: 'what is the crime ?',
//           //       prefixIcon: const Icon(Icons.search,size: 25,),
//           //       border: OutlineInputBorder(
//           //         borderRadius: BorderRadius.circular(50)
//           //       )
//           //     ),
//           //     onChanged: searchCrime,

//           //   ),
//           // ),
            
            
//         ],)

//     )
    
//     );
    
//   }
// }


import 'package:crime_reporter/components/crimeCard.dart';
import 'package:crime_reporter/components/searchBar.dart';
import 'package:crime_reporter/models/sampleCrimes.dart';
import 'package:flutter/material.dart';


class ReportCrime extends StatefulWidget {
  const ReportCrime({ Key? key }) : super(key: key);

  @override
  State<ReportCrime> createState() => _ReportCrimeState();
}

class _ReportCrimeState extends State<ReportCrime> {
    List crimes = Crimes;
    final searchcontroler = TextEditingController();

 searchCrime(String query){
       final seggestions = crimes.where((crime){
       final crimeName = crime.name.toLowerCase();
       final input = query.toLowerCase();
       return crimeName.contains(input);
     }).toList();
     setState(() {
       crimes = seggestions;
     });
     
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
                child:Column(children: [
                    SearchBar(),

                    
                       //   Container(
                        //   padding:const  EdgeInsets.fromLTRB(20, 30, 130, 10),
                        //   child: TextField(
                        //     controller: searchcontroler,
                        //     decoration: InputDecoration(
                        //       hintText: 'what is the crime ?',
                        //       prefixIcon: const Icon(Icons.search,size: 25,),
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(50)
                        //       )
                        //     ),
                        //     onChanged: searchCrime,

                        //   ),
                        // ),

                    Expanded(
                    child: ListView.builder(
                      itemCount:crimes.length,
                      itemBuilder: (BuildContext context ,int index){

                        return CrimeCard(
                          image:crimes[index].image,
                          name: crimes[index].name,);
                      })),

                          

                  ],)

              );
  }
}
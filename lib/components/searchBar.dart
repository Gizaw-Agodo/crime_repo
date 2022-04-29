import 'package:crime_reporter/models/sampleCrimes.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar({ Key? key, }) : super(key: key);


  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {

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
    return Container(
      padding:const  EdgeInsets.fromLTRB(20, 30, 130, 10),
       child: TextField(
         controller: searchcontroler,
         decoration: InputDecoration(
           hintText: 'what is the crime ?',
           prefixIcon: const Icon(Icons.search,size: 25,),
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(50)
           )
         ),
         onChanged: searchCrime,

       ),
    );
  }
}
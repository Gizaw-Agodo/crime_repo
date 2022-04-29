
import 'package:flutter/material.dart';

class CrimeCard extends StatelessWidget {
  const CrimeCard({ Key? key,this.image,this.name }) : super(key: key);
  final image;
  final name;
  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 8,
            shadowColor: Colors.green,
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,),
                  ),
            
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                    Text(name),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                                    primary: Colors.yellow[800],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0)),
                                    minimumSize: const Size(90, 50),),
                        onPressed: (){}, child: const Text('Report')),
                        const SizedBox(width: 1,),
                
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                                    primary: Colors.yellow[800],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    minimumSize:const  Size(90, 50),),
                        onPressed:(){}, child: const Text('like')),
                
                    ],)
                              
                    ],),
                ),
              

            ]),
          
        );
  }
}
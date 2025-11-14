import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const text = const Text(
            'Notes',
            style: TextStyle(),
          );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

      backgroundColor: Colors.black,
        title: Text("Notes",style:TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 43,
          color: Colors.white,
        )),
        actions: [
          IconButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: const Size(50, 50),
            ),
            onPressed:(){
            print("rechercher!");
            },
            icon: Icon( Icons.search,color: Colors.white,),
          ),
          IconButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
            minimumSize: const Size(51,51),
            ),
            onPressed:(){
            print("info!");
            },
            icon: Icon(Icons.info),
          ),
        ],
      ),
      body: Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/rafiki.png",
          width: 250,),
           const Text(
            'create your first note',
             style: TextStyle(fontSize: 20),
           )
          
          ],
             
          
          ),
          
      ),
         
    
  
       
      );
      
      
      floatingActionButton: IconButton(
            onPressed:(){
            print("ajouter!");
            },
            icon: Icon( Icons.add),
          );
     
 
  }
}
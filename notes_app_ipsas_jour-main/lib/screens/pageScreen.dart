
import 'package:flutter/material.dart';

class Pagescreen extends StatelessWidget {
  const Pagescreen({super.key});
   final List<Map<String, dynamic>> notes = const [
    {"text": "UI concepts worth existing", "color": Colors.pinkAccent},
    {"text": "Book Review : The Design of Everyday Things by Don Norman", "color": Colors.redAccent},
    {"text": "Animes produced by Ufotable", "color": Colors.lightGreenAccent},
    {"text": "Mangas planned to read", "color": Colors.yellowAccent},
    {"text": "Awesome tweets collection", "color": Colors.lightBlueAccent},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

      backgroundColor: Colors.black,
        title: const Text("Notes",style:TextStyle(
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
         body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: notes[index]["color"],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              notes[index]["text"],
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
          );
        },
      ),
         floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.add, size: 30,color: Colors.white,),
        onPressed: () {},
      ),

 
    );
    
      
  }
}
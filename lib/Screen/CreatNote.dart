import 'package:flutter/material.dart';

class CreatNote extends StatefulWidget {
  const CreatNote({Key? key}) : super(key: key);

  @override
  State<CreatNote> createState() => _CreatNoteState();
}

class _CreatNoteState extends State<CreatNote> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Create Note"),centerTitle: true,backgroundColor: Colors.green,),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.green),borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  cursorColor: Colors.green,
                  decoration: InputDecoration(icon: Icon(Icons.note,color: Colors.green,),label: Text("write",style: TextStyle(color: Colors.black,fontSize: 30),)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),onPressed: (){}, child: Text("Cancle")),
                ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),onPressed: (){}, child: Text("Create")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

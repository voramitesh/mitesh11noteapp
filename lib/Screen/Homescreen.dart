import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  String data = DateFormat("EEEE  -  dd  -  yyyy").format(DateTime.now());
  List l1=[0];
  bool work=true;
  bool optional=false;
    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Text(
                "${data}",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("6",style: TextStyle(color: Colors.black,fontSize: 20),),
                  Text("3",style: TextStyle(color: Colors.black,fontSize: 20),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Created Tasks",style: TextStyle(color: Colors.black,fontSize: 15),),
                  Text("Completed Tasks",style: TextStyle(color: Colors.black,fontSize: 15),),
                ],
              ),
            ),
            SizedBox(height: 35),
            Expanded(
              child: ListView.builder(itemCount: l1.length,itemBuilder: (context,index){
                return Card(
                  child: Row(
                    children: [
                      Radio(value: optional, groupValue: work, onChanged: (value){
                        setState(() {
                          if(work==optional)
                          {
                            optional=false;
                          }
                          else if(work!=optional){
                            optional=true;
                          }
                        });
                      }),
                      Text("Take a Trash Out",style: TextStyle(color: Colors.black),),
                      Expanded(child: Container()),
                      IconButton(onPressed: (){}, icon: Icon (Icons.edit,color: Colors.black26,),),
                      IconButton(onPressed: (){}, icon: Icon (Icons.delete,color: Colors.black26,),),
                    ],
                  ),
                );
              },
              ),
            ),









            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/note');
                    },
                      child: Icon(Icons.add, color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

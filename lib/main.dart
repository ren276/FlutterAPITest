import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'first',
    routes: {
      'home' : (context) => MyHome(),
      'first' : (context) =>InitialHome(),
    },
  ));
}

class InitialHome extends StatefulWidget {
  const InitialHome({super.key});

  @override
  State<InitialHome> createState() => _InitialHomeState();
}

class _InitialHomeState extends State<InitialHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information"),
        backgroundColor: Colors.grey,
      ),
      body:Container(
        margin: EdgeInsets.only(left: 30,right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Search the Country",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal,
              child: MaterialButton(onPressed: (){
                Navigator.pushNamed(context, 'home');
              },
                child:
                Text("Search",style: TextStyle(color:Colors.white),),


              ),
            )
          ],
        ),
      ) ,
    );
  }
}





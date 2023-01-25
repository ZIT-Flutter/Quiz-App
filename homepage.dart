import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String name = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(hintText: 'Enter Your Name', ),

                onChanged: (value){
                  setState(() {
                    name = value;
                  });

                },

              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(150, 50),),
              onPressed: () {
                print(name);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizPage(recievedName: name,)));
              },
              child: Text('Start Quiz'),
            ),

          ],
        ),
      ),
    );
  }
}

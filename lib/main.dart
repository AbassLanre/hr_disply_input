import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AskForInput(),
    );
  }
}

class AskForInput extends StatefulWidget {
  const AskForInput({Key key}) : super(key: key);

  @override
  _AskForInputState createState() => _AskForInputState();
}
String display_text = '';

class _AskForInputState extends State<AskForInput> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Hello User, Enter text to be displayed: ',style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),),
          SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            padding:const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: TextField(
              controller: textEditingController,
              cursorColor: Colors.lightBlueAccent,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Enter Text',
                hintStyle: const TextStyle(
                    fontFamily: 'Nunito',
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w500),
              ),

            ),
          ),
          SizedBox(height: 15,),
          MaterialButton(
            elevation: 5,
            color: Colors.white,
              onPressed: (){
                setState(() {
                  display_text = textEditingController.text;
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> DisplayText()));
                });
              },
              child: Text('Display',style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),))

        ],
      ),
    );
  }
}

class DisplayText extends StatelessWidget {
  const DisplayText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Text(display_text,style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}



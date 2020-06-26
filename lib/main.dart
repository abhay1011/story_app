import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Story.dart';
Story storyObject=Story();
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: StoryApp(),
        ),
      ),
    );
  }
}
class StoryApp extends StatefulWidget {
  @override
  _StoryAppState createState() => _StoryAppState();
}

class _StoryAppState extends State<StoryApp> {
  int choice=0;
  Color getColor(){
      if(storyObject.getChoice2(choice)==0)
        return null;
      else
        return Colors.blue.withOpacity(0.4);
  }
  void userChoice(int ch){
    setState(() {
      choice=ch;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background$choice.jpg'), //TODO:Add image as per story
          fit: BoxFit.fill,
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 8,
            child:Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                child:Text(storyObject.nextPart(choice),
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'MetalMania',
                      color: Colors.cyanAccent,
                                  ),
                textAlign: TextAlign.center,),
                ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                splashColor: Colors.tealAccent,
                color: Colors.lightGreenAccent.withOpacity(0.4),
                child: Text(storyObject.getOption1(choice),
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  color: Colors.yellowAccent,
                ),),
                onPressed: (){
                  userChoice(storyObject.getChoice1(choice));
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                splashColor: Colors.green,
                color:getColor(),
                child: Text(storyObject.getOption2(choice),
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                  ),),
                onPressed: (){
                  userChoice(storyObject.getChoice2(choice));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

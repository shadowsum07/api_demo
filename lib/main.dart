import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),);
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List chats = [
    {'name':'james','image':'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg','message':'i m bond...james bond','time':'08:12 PM'},
    {'name':'kobe','image':'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg','message':'i m kobe','time':'08:12 PM'},
    {'name':'sachin','image':'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg','message':'i m sachin...sachin tendulkar','time':'08:12 PM'},
    {'name':'Harvey','image':'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg','message':'life is this--i like this^^','time':'08:12 PM'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.greenAccent,
        title: Text("WhatsApp"),
        leading: GestureDetector (
         onTap: () {
           print('i got pressed');
         },
        ),
      ),
      body: ListView.builder(itemCount: chats.length,
        itemBuilder: (context, index){
        return ListTile(leading:CircleAvatar(backgroundImage: NetworkImage(chats[index]['image']),) ,
        title: Text(chats[index]["name"]) ,
        subtitle: Text(chats[index]['message']),
        trailing: Text(chats[index]['time']) ,);
      },),


    );
  }
}

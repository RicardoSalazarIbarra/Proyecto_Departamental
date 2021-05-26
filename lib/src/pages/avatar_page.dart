//import 'dart:html';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage ({Key key}): super (key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('AvatarPage'),
      ),
      body: ListAvatar(),
    );
  }
}

class User {
  String fullname,nameapodo, photoUlr;
  User(this.fullname,this.nameapodo,this.photoUlr);
}

class ListAvatar extends StatefulWidget {
  @override
  _ListAvatarState createState() => _ListAvatarState();
}

class _ListAvatarState extends State<ListAvatar> {
  List<User> users;

  @override
  void initState() {
    users = [
      User('Ricardo Salazar','Richy','Avatar1.png'),
      User('Omar Garrido','Omi','Avatar2.png'),
      User('Felipe Morelos','Feli','Avatar3.png'),
    ];
    super.initState();
  }
  

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemBuilder: (context, index){
        return ListTile(
          title: Text(users[index].fullname),
          subtitle: Text(users[index].nameapodo),
          leading: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 50,
            child: CircleAvatar(
              backgroundColor: Colors.cyan [100],
              backgroundImage: AssetImage(users[index].photoUlr),
              radius: 20,
            ),
          ),
        );
      },
      itemCount: users.length,
    );
  }
}
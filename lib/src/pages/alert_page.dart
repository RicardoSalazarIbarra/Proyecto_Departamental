import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/pages/save_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertPage extends StatelessWidget {
  AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Types Of Dialog Alerts"),
      ),
      body: Container(
        child: new Column(
          
          children: <Widget>[
            ListTile(
              title: Text("Alert Dialog"),
              leading: Icon(Icons.check_circle_rounded,
              color: Colors.lightBlueAccent,
              ),
              onTap: () {
                _alertDialog(context);
              },
            ),
            ListTile(
              title: Text("Simple Dialog"),
              leading: Icon(Icons.check_circle_rounded,
              color: Colors.lightBlueAccent
              ),
              onTap: () {
                _showDialog(context);
              },
            ),
            ListTile(
              title: Text("Show Modal"),
              leading: Icon(Icons.check_circle_rounded,
              color: Colors.lightBlueAccent
              ),
              onTap: () {
                _showModal(context);
              },
            ),
            ListTile(
              title: Text("Show Toast "),
              leading: Icon(Icons.check_circle_rounded,
              color: Colors.lightBlueAccent
              ),
              onTap: () {
                _showToast(context);
              },
            ),
            ListTile(
              title: Text("Dialog Personalizado"),
              leading: Icon(Icons.check_circle_rounded,
              color: Colors.lightBlueAccent
              ),
              onTap: () {
                _dialogPersonal(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _alertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alerta De Dialogo'),
          content: Text('Quieres confirmar tu acción'),
          actions: <Widget>[
            FlatButton(
              child: Text('Exit'),
              onPressed: () {
                Navigator.of(context).pop('Confirm');
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("Simple Dialogo"),
            children: <Widget>[
              ListTile(
                title: Text("Quieres eliminar tu contacto"),
                leading: Icon(Icons.delete),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Quieres editar tu contacto"),
                leading: Icon(Icons.edit),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          );
        });
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Start"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text("Message"),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          );
        });
  }

  void _showToast(BuildContext context) {
    Fluttertoast.showToast(
        msg: "Te Llego Un Mensaje Nuevo",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _dialogPersonal(BuildContext context) {
    String _texto = '¿Qué Agregar Un Recordatorio?';
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: _texto),
                    ),
                    SizedBox(
                      width: 320.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SavePage(_texto)),
                          );
                        },
                        child: Text(
                          "Agregar",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: const Color(0xFF1BC0C5),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
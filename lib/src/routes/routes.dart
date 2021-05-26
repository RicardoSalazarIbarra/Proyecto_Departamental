import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/avatars/circuleAvatar.dart';
import 'package:flutter_application_1/src/avatars/circuleConBorder.dart';
import 'package:flutter_application_1/src/avatars/regtangular.dart';
import 'package:flutter_application_1/src/avatars/regtangularBorde.dart';
import 'package:flutter_application_1/src/pages/alert_page.dart';
import 'package:flutter_application_1/src/pages/avatar_page.dart';
import 'package:flutter_application_1/src/pages/card_page.dart';
import 'package:flutter_application_1/src/pages/home_temp.dart';

Map <String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AvatarPage(),
  'avatar/circular':(BuildContext context)=>CircularAvatar(),
  'avatar/circularBorde':(BuildContext context)=>CircularBordeAvatar(),
  'avatar/rectangulo':(BuildContext context)=>RectanguloAvatar(),
  'avatar/rectanguloBorde':(BuildContext context)=>RectanguloBordeAvatar(), 
  'card': (BuildContext context) => CardPage(),
  };
}
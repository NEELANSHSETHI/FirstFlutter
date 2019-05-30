import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './detail_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Tap to load Data'),
            ),
            body: DetailsCard("pehlanaam")));
  }
}

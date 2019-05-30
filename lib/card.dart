import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardWidget extends StatelessWidget {
  final List<String> cardNames; //only set from outside

  CardWidget(this.cardNames);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: cardNames.length,
        itemBuilder: (BuildContext context, int i) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: Column(
                  children: <Widget>[
                    Text('Item Number $i'),
                    Text(
                      cardNames[i],
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

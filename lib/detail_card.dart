import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './card.dart';

class DetailsCard extends StatefulWidget {
  final String initialName;

  DetailsCard(this.initialName);

  @override
  State<StatefulWidget> createState() {
    return _CardDetailState();
  }
}

class _CardDetailState extends State<DetailsCard> {
  List<String> cardNames = [];
  int i = 0;

  @override
  void initState() {
    cardNames.add(widget.initialName);
    print(" inside initstate $cardNames");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return GestureDetector(
        onTap: () {
          getData();
          print("helloooo");
        },
        child: CardWidget(cardNames));
  }

  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});
    List apidata = jsonDecode(response.body);
    print(apidata[0]["title"]);




    print(cardNames);
    setState(() {
      print("in set state");
    });

    for (int i = 0; i < apidata.length; i++) {
      cardNames.add(apidata[0]["title"]);
    }

  }
}

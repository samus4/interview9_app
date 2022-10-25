import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview9_app/Helpers/mockdata.dart';

import '../Models/itemModel.dart';
import '../Widgets/itemcard.dart';

class Mainpage extends StatefulWidget {
  @override
  ListPage createState() => ListPage();
}

class ListPage extends State<Mainpage> {
  late List<Category> filtereditems = mock.getMockdata();
  void _filtereditems(value) {
    setState(() {
      filtereditems =
          categories.where((categories) => categories.type == value).toList();
    });

    print(filtereditems);
  }

  void _clear() {
    setState(() {
      filtereditems = categories;
    });

    print(filtereditems);
  }

  List<Category> categories = mock.getMockdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Interview App')),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(15)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        const BorderSide(color: Colors.blue)))),
                        onPressed: () => {_clear()},
                        child: Text("Clear Filters".toUpperCase(),
                            style: const TextStyle(fontSize: 14))),
                    TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(15)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        const BorderSide(color: Colors.blue)))),
                        onPressed: () => {_filtereditems('table')},
                        child: Text("Tables".toUpperCase(),
                            style: const TextStyle(fontSize: 14))),
                    TextButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(15)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        const BorderSide(color: Colors.blue)))),
                        onPressed: () => {_filtereditems('chair')},
                        child: Text("Chairs".toUpperCase(),
                            style: const TextStyle(fontSize: 14))),
                  ])),
          Expanded(
              child: ListView.builder(
            itemCount: filtereditems.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                category: filtereditems[index],
              );
            },
          ))
        ]));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_icons_helper/flutter_icons_helper.dart';
import 'package:interview9_app/Models/itemModel.dart';

class mock {
  static List<Category> getMockdata() {
    final helper = IconHelper();
    return [
      Category(name: "Table 1", imgName: "1", type: 'table'),
      Category(name: "Table 2", imgName: "1", type: 'table'),
      Category(name: "Table 3", imgName: "1", type: 'table'),
      Category(name: "Chair 1", imgName: "2", type: 'chair'),
      Category(name: "Chair 2", imgName: "2", type: 'chair'),
    ];
  }
}

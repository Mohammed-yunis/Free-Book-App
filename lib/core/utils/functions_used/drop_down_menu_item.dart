import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

List<DropdownMenuItem<String>>?  modelItemList(context) {
  List<DropdownMenuItem<String>>? modelItems =
  models.entries.map<DropdownMenuItem<String>>(
        (entry) => DropdownMenuItem<String>(
      value: entry.value,
      child: Text(entry.key,style: Style.textTheme16.copyWith(fontWeight: FontWeight.w800,fontSize: 15)),
    ),
  ).toList();
  return modelItems;
}
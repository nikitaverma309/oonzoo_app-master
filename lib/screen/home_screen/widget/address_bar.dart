

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressBar extends StatelessWidget {
  const AddressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration:
      BoxDecoration(color: Colors.red.shade50, boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2,
          offset: Offset(
            2,
            2,
          ),
        )
      ]),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 8,
          ),
          Icon(Icons.location_on_outlined, color: Colors.black54),
          SizedBox(
            width: 8,
          ),
          Text("Select a location to see product availablity"),
          Spacer(),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black54,
            size: 28,
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}

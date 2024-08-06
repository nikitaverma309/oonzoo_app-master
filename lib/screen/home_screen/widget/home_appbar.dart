

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/auth_provider.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 4,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            InkWell(
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&w=600",
                ),
              ),
              onTap: () {
                showDialog(context: context, builder: (builder){

                  return AlertDialog(content: Text("Do you want to logout?"),
                    actions: [
                      TextButton(onPressed: (){
                        Provider.of<AuthProvider>(context, listen: false)
                            .logout(context: context);
                      }, child: Text("Yes")),
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("No")),
                    ],);
                });

              },
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Shop for",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Text("All")
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      SizedBox(
        height: 4,
      ),
    ],);
  }
}

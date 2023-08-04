import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Yash"),
                accountEmail: Text("yashmaheshwari0502@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJquVoNote1XSgowZUW1zV0YvNBBO9TWekGg&usqp=CAU"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_rounded,
                color: Colors.white,
              ),
              title: Text(
                "contact",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

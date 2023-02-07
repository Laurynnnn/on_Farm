// ignore: file_names
import 'package:flutter/material.dart';
import 'package:on_farm/Screens/BottomTabBar/FabsTabs.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}): super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(1.0),
                  bottomRight: Radius.circular(1.0),
                ),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('assets/bg.jpg')
                )
              ),
              child: Text('Onfarm', style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text('Home'),
              onTap: () => {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabsTabs(selectedIndex:0)))
              },
            ),
            ListTile(
              leading: const Icon(Icons.more_horiz_outlined),
              title: const Text('More'),
              onTap: () => {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabsTabs(selectedIndex:1)))
              },
            ),
            ListTile(
              leading: const Icon(Icons.message_outlined),
              title: const Text('Chat'),
              onTap: () => {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabsTabs(selectedIndex:2)))
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () => {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FabsTabs(selectedIndex:3)))
              },
            ),
          ],
        )
        );
        
  }
}

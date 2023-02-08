// ignore: file_names
import 'package:flutter/material.dart';
import 'package:on_farm/Screens/More/More.dart';
import 'package:on_farm/Screens/Profile/Profile.dart';
import 'package:on_farm/Screens/Chat/Chat.dart';
import 'package:on_farm/Screens/Product/AddPost.dart';

import '../Home/home.dart';
import '../Login/Login.dart';

// ignore: must_be_immutable
class FabsTabs extends StatefulWidget {
  // const FabsTabs({Key? key}): super(key: key);
  int selectedIndex = 0;
  FabsTabs({super.key, required this.selectedIndex});

  // FabsTabs({super.key});

  @override
  State<FabsTabs> createState() => _FabsTabsState();
}

class _FabsTabsState extends State<FabsTabs> {
  int currentIndex = 0;

  void onItemTapped(int index){
    widget.selectedIndex = index;
    currentIndex = widget.selectedIndex;
  }

  @override
  void initState(){
    onItemTapped(widget.selectedIndex);
    //implement initState
    super.initState();
  }

  final List<Widget> pages = [
    const Home(),
    const More(),
    const Chat(),
    const Profile(),
    const AddPost(),

  ];
  
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    Widget currentScreen = currentIndex == 0? const Home(): currentIndex == 1? const Login(): currentIndex == 2? const Chat(): currentIndex == 4? const AddPost(): const Profile();
    return Scaffold(
        
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
          onPressed: () {
            // ignore: avoid_print
            // print("Add fab button");
            setState(() {
                      currentScreen = const AddPost();
                      currentIndex = 4;
                    });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                  minWidth: 50,
                  onPressed: (){
                    setState(() {
                      currentScreen = const Home();
                      currentIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: currentIndex== 0? Colors.green: Colors.grey,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: currentIndex == 0? Colors.green: Colors.grey),
                      )
                    ],
                  ),
                ),

                MaterialButton(
                  minWidth: 50,
                  onPressed: (){
                    setState(() {
                      currentScreen = const Login();
                      currentIndex = 1;
                    });
                  }, 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.more_horiz_outlined,
                        color: currentIndex== 1? Colors.green: Colors.grey,
                      ),
                      Text(
                        "More",
                        style: TextStyle(color: currentIndex == 1? Colors.green: Colors.grey),
                      ),
                    ],
                  ),
                ),
                  ],
                ),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                  minWidth: 50,
                  onPressed: (){
                    setState(() {
                      currentScreen = const Chat();
                      currentIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message_outlined,
                        color: currentIndex== 2? Colors.green: Colors.grey,
                      ),
                      Text(
                        "Chat",
                        style: TextStyle(color: currentIndex == 2? Colors.green: Colors.grey),
                      )
                    ],
                  ),
                ),

                MaterialButton(
                  minWidth: 50,
                  onPressed: (){
                    setState(() {
                      currentScreen = const Profile();
                      currentIndex = 3;
                    });
                  }, 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: currentIndex== 3? Colors.green: Colors.grey,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(color: currentIndex == 3? Colors.green: Colors.grey),
                      ),
                    ],
                  ),
                ),
                  ],
                )
    
              ],
            ),
          ),
        ),
    );
  }
}

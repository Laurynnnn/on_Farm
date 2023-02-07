// ignore: file_names
import 'package:flutter/material.dart';

import '../Drawer/SideMenu.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}): super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

//   final messageController = TextEditingController();
//   final List<Message> messages = [];

//   void _submitMessage() {
//     final message = messageController.text;
//     if (message.isNotEmpty) {
//       setState(() {
//         messages.add(Message(
//           text: message,
//           isUser: true,
//         ));
//         messageController.clear();
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: ListView.builder(
//             reverse: true,
//             itemCount: messages.length,
//             itemBuilder: (context, index) {
//               final message = messages[index];
//               return Container(
//                 padding: const EdgeInsets.all(8.0),
//                 margin: const EdgeInsets.symmetric(vertical: 4.0),
//                 decoration: BoxDecoration(
//                   color: message.isUser ? Colors.grey[300] : Colors.grey[100],
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: Text(message.text),
//               );
//             },
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.all(8.0),
//           child: TextField(
//             controller: messageController,
//             onSubmitted: () => _submitMessage(),
//             decoration: InputDecoration(
//               hintText: 'Type a message...',
//               suffixIcon: IconButton(
//                 icon: const Icon(Icons.send),
//                 onPressed: _submitMessage,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class Message {
//   final String text;
//   final bool isUser;

//   Message({
//     @required this.text,
//     @required this.isUser,
//   });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SideMenu(),
        appBar: AppBar(
        title: const Text("Chat",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).colorScheme.secondary,]
              )
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only( top: 16, right: 16,),
            child: Stack(
              children: <Widget>[
                const Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                    constraints: const BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: const Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget> [
              const Text(
                 "Chat", style: TextStyle(fontSize: 40),
              ),
            ],

          ),
        ),
    );
  }
}

import 'package:flutter/material.dart';
class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List contactList=[
    {"name":"mahbub","phone":"01624458798"},
    {"name":"rahim","phone":"01745678932"},
    {"name":"kader","phone":"017654322"},
    {"name":"kashem","phone":"5673245212"},
    {"name":"abul","phone":"324557658"},
    {"name":"unknown","phone":"6575464332"},
    {"name":"mahbub","phone":"01624458798"},
    {"name":"rahim","phone":"01745678932"},
    {"name":"kader","phone":"017654322"},
    {"name":"kashem","phone":"5673245212"},
    {"name":"abul","phone":"324557658"},
    {"name":"unknown","phone":"6575464332"},
    {"name":"mahbub","phone":"01624458798"},
    {"name":"rahim","phone":"01745678932"},
    {"name":"kader","phone":"017654322"},
    {"name":"kashem","phone":"5673245212"},
    {"name":"abul","phone":"324557658"},
    {"name":"unknown","phone":"6575464332"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Contacts",style: TextStyle(
          color: Colors.white70
        )),
      ),
      body:
      ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index)
        {
          return Column(

            children: [
              ListTile(
                tileColor: Colors.blueGrey,
                leading: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: Text(contactList[index]["name"][0]),
                ),
                title: Text(contactList[index]["name"]),
                subtitle: Text("call allowed on office time"),
                trailing: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.message_rounded,color: Colors.orangeAccent),
                    Icon(Icons.call,color: Colors.cyan,),

                  ],
                ),
              )
            ],
          );
        },) ,
    );
  }
}

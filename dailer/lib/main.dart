import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Dialer',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ['Sushant Rahapal', 'Prashant sunar', 'Sukram Rahapal'];
  _callNumber() async {
    var phoneNumber = ['9817194337', '9819166098', '9856023574'];
    bool res = await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Phone Dialer'),
          backgroundColor: Color(0xFF21717),
        ),
        body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.supervised_user_circle_rounded),
              title: Text(contactList[index]),
              trailing: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  _callNumber();
                },
              ),
            );
          },
        ));
  }
}

class FlutterPhoneDirectCaller {}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sushant Rahapal'),
              accountEmail: Text('sushantrahapal@gmail.com'),
            ),
            ListTile(
              title: Text(
                'Purchase',
                style: GoogleFonts.lato(),
              ),
              subtitle: Text('Purchase item'),
              leading: Icon(Icons.shop),
              onTap: () {
                print('Purchase pressed');
              },
            ),
            ListTile(
              title: Text('Sales'),
              subtitle: Text('Sales item'),
              leading: Icon(Icons.leave_bags_at_home),
              onTap: () {
                print('Sales pressed');
              },
            ),
            ListTile(
              title: Text('Report'),
              subtitle: Text('Report item'),
              leading: Icon(Icons.report),
              onTap: () {
                print('Report pressed');
              },
            ),
            ListTile(
              title: Text('User'),
              subtitle: Text('User item'),
              leading: Icon(Icons.supervised_user_circle),
              onTap: () {
                print('User pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}

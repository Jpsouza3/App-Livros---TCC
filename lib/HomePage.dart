import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 30,
            ),
            UserAccountsDrawerHeader( currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network("https://thispersondoesnotexist.com/image")),
              accountName: Text("João Pedro"), accountEmail: Text("jpsouza4032@gmail.com")),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              textColor: Colors.black,
            ),
            const ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("Transações"),
              textColor: Colors.black,
            ),
            const ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text("Agenda Financeira"),
              textColor: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text("SAIR"),
              textColor: Colors.red,
              onTap: () { Navigator.of(context).pushReplacementNamed('/LoginPage'); }
            ),
          ],
        ),
      ),
        body: Column(
          children: [
            Container(
              height: 50,
            ),

            const Center(child: Text('MARCELOOOO'),)
          ],
        ),
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      );
  }
}


class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 35,
        height: 35,
        decoration:
        BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

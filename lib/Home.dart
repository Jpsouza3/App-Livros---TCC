import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Color(0xff316847),
        title: const Text('Book Shop'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff316847),
              ), 
              arrowColor: Color(0xff316847),
              currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network("https://thispersondoesnotexist.com/image")),
              accountName: Text("João Pedro"), accountEmail: Text("jpsouza4032@gmail.com")),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text("Menu"),
              textColor: Colors.black,
            ),
            const ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("Meus pedidos"),
              textColor: Colors.black,
            ),
            const ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("Meu carrinho"),
              textColor: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text("SAIR"),
              textColor: Colors.red,
              onTap: () { Navigator.of(context).pushReplacementNamed('/'); }
            ),
          ],
        ),
      ),

      //tela padrao
      //tela padrao
        body: Column(
          children: [
            Container(
              height: 50,
            ),

            const Center(child: Text('just testing'),)
          ],
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

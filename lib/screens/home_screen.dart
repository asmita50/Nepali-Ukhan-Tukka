import 'package:flutter/material.dart';
import 'package:ukhan_tuka/screens/about_page.dart';
import 'package:ukhan_tuka/screens/ukhana_tukka_data/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: Container(
                color: Colors.tealAccent,
                child: const Center(
                  child: Text(
                    "नेपाली रमाइलो उखान टुका",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AboutPage();
                    },
                  ),
                );
              },
              leading: const Icon(Icons.inbox_outlined),
              title: const Text("About"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("नेपाली उखान टुका"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ));
            },
            icon: const Icon(Icons.info_outline),
            iconSize: 26.0,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: UkhanTukka.data.length,
        itemBuilder: (context, index) {
          var flutterCommand = UkhanTukka.data[index];
          return ListTile(
            isThreeLine: true,
            // contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
            leading: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.tealAccent,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(flutterCommand.key),
            ),
            subtitle: Text(flutterCommand.use),
          );
        },
      ),
    );
  }
}

import 'dart:convert';
import 'package:flavor_folio/models/item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String serverUrl = 'http://10.0.2.2:3000';

  final nameController = TextEditingController();

  Future<List<Item>> fetchItems() async {
    final response = await http.get(Uri.parse('$serverUrl/api/meals'));

    if (response.statusCode == 200) {
      final List<dynamic> itemList = jsonDecode(response.body);
      final List<Item> items = itemList.map((item) {
        return Item.fromJSON(item);
      }).toList();
      return items;
    } else {
      throw Exception("Failed to fetch items");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        FutureBuilder(
            future: fetchItems(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final item = snapshot.data![index];
                    return ListTile(
                      title: Text(item.name),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            })
      ],
    ));
  }
}
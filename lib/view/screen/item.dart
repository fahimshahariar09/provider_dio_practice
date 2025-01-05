import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dio_practice/controller/ui_controller/item.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    ItemProvider itemProvider = Provider.of<ItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Items"),
      ),
      body: ListView.builder(itemBuilder: (context , index){
        return ListTile();
      }),
    );
  }
}
// body: itemProvider.isLoading
// ? Center(child: CircularProgressIndicator())
//     : ListView.builder(
// itemCount: itemProvider.items.length,
// itemBuilder: (context, index) {
// final item = itemProvider.items[index];
// return ListTile(
// title: Text(item.name),
// );
// },
// ),
// floatingActionButton: FloatingActionButton(
// onPressed: () => itemProvider.fetchItems(),
// child: Icon(Icons.refresh),
// ),
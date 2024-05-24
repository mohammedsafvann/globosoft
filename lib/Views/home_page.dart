import 'package:flutter/material.dart';
import 'package:globosoft/Views/widget/items_widget.dart';
import 'package:globosoft/models/items_model.dart';
import 'package:globosoft/utils/api_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ItemsModel itemsModel = ItemsModel();
  bool isLoading = true;
  getApi() async {
    itemsModel = await getData();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    getApi();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(color: Colors.white),
            )
          : SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return ItemsWidget(
                      image: itemsModel.product!.thumb.toString(),
                      name: itemsModel.product!.name.toString(),
                      description: itemsModel.product!.description.toString());
                },
              ),
            ),
    );
  }
}

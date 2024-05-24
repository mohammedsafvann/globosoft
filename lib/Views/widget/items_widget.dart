import 'package:flutter/material.dart';
import 'package:globosoft/Views/widget/build_text_widget.dart';
import 'package:globosoft/utils/api_client.dart';

class ItemsWidget extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  const ItemsWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.description});

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: SizedBox(
              width: size.width / 1.1,
              height: size.height / 2.5,
              child: Image.network(
                baseUrl + widget.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 15),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: size.width,
              height: size.height / 6,
              child: Center(
                child: BuildTextWidget(
                    color: Colors.black,
                    size: 18,
                    text: widget.name,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: BuildTextWidget(
                color: Colors.black,
                size: 15,
                text: widget.description,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

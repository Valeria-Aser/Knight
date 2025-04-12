
import 'package:flutter/material.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => IinventoryState();
}

class IinventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1,
                      style: BorderStyle.solid,
                    )
                  ),
                child: Column(
                  children: [
                    Text("name"),
                  ],
                ),
              );
            },
          );
  }
}

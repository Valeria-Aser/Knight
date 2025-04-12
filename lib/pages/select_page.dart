import 'package:flutter/material.dart';
import 'package:gladiators/widgets/inventory.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(body:
          Column(
            children: [
              Expanded(
                child: 
                    Center(child: Text('data'),
                  ),
              ),
              Expanded(
                child: 
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Inventory(),
                  ),
              ),
          ],
        ), 
      );
  }
}
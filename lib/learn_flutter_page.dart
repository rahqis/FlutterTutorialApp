import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Tutorial"),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint("Actions");
              },
              icon: const Icon(Icons.info_outline),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Icon(Icons.person),
              const SizedBox(height: 10),
              const Divider(color: Colors.black),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "Text Widget",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.blue,
                ),
                onPressed: () {
                  debugPrint("Elevated Button");
                },
                child: const Text("Elevated Button"),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint("Outlined Button");
                },
                child: const Text("Outlined Button"),
              ),
              TextButton(
                onPressed: () {
                  debugPrint("Text Button");
                },
                child: const Text("Text Button"),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint("Gesture Tap Wrapping Row Widget");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.local_cafe,
                      color: Colors.brown,
                    ),
                    Text("Row Widget"),
                    Icon(
                      Icons.local_cafe,
                      color: Colors.brown,
                    ),
                  ],
                ),
              ),
              Switch(
                value: isSwitch,
                onChanged: (bool newbool) {
                  setState(() {
                    isSwitch = newbool;
                  });
                },
              ),
              Checkbox(
                  value: isCheckbox,
                  onChanged: (bool? newBool) {
                    setState(() {
                      isCheckbox = newBool;
                    });
                  }),
              Image.network("https://wallpaperaccess.com/full/1909531.jpg")
            ],
          ),
        ));
  }
}

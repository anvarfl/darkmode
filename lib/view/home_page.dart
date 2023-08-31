import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLight = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mavzu almashtirish"),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height * 1,
        width: MediaQuery.sizeOf(context).width * 1,
        decoration: BoxDecoration(
          color: isLight ? Colors.white : const Color(0xff222222),
        ),
        child: Center(
          child: Text(
            isLight ? "Bu yorug' mavzu" : "Bu qorong'u mavzu",
            style: TextStyle(
                fontSize: 32, color: isLight ? Colors.black : Colors.white),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isLight = !isLight;
            //  dark mode switch qiladi
          });
        },
        child: Center(
          child: isLight
              ? const Icon(Icons.dark_mode)
              : const Icon(Icons.light_mode),
        ),
      ),
    );
  }
}

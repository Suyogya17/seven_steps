import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> UserViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.red)),
        ),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [
            Icon(Icons.share),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 20),
              child: Icon(Icons.favorite),
            )
          ],
          centerTitle: true,
          leading: Icon(Icons.menu),
          title: Text(
            "My App",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                const Positioned(
                  height: 80,
                  left: 20,
                  right: 20,
                  top: 60,
                  child: Card(
                    child: ListTile(
                        trailing: Icon(Icons.check_circle),
                        title: Text("Ram shrestha"),
                        subtitle: Text("Hello, Ram Shrestha"),
                        leading: CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/images/test.jpeg"),
                        )),
                  ),
                ),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
            Image.asset('assets/images/test.jpeg'),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                children: [
                  Center(
                      child: Text("Flutter",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ],
              ),
            ),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
            Image.network(
                "https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png"),
          ],
        ),
      ),
    );
  }
}
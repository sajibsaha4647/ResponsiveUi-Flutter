import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
            title: Text("Responsive UI"),
        ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AspectRatio(aspectRatio: 2,
              child: Container(
                child: Text("AspectRatio"),
                color: Colors.blue,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/4,
                    color: Colors.green,
                  ),Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/4,
                    color: Colors.blue,
                  ),Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/4,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: 150,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              ),
            ),
            OrientationBuilder(builder: (_,oriantation){
              if(oriantation == Orientation.portrait){
                return Text("portrait") ;
              }else{
                return Text("landscape") ;
              }
            })
          ],
        ),
      ),
    ));
  }
}



import 'package:flutter/material.dart';
import 'package:pdf_viewer/pages/chapter1.dart';
import 'package:pdf_viewer/pages/chapter2.dart';
import 'package:pdf_viewer/pages/chapter3.dart';
import 'package:pdf_viewer/pages/chapter4.dart';
import 'package:pdf_viewer/pages/chapter5.dart';
import 'package:pdf_viewer/pages/chapter6.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.purple,
      title: "Flutter PDF Viewer",
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter PDF Viewer"),
        backgroundColor: Colors.purple,
      ),
      // body: FirstChapter()
      body: Container(
        child: Card(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text("Computer Fundamentals"),
                    subtitle: Text("Chapter 1"),
                    trailing: Icon(Icons.forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstChapter()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text("History of Computers"),
                    subtitle: Text("Chapter 2"),
                    trailing: Icon(Icons.forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondChapter()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text("Generations of Computers"),
                    subtitle: Text("Chapter 3"),
                    trailing: Icon(Icons.forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdChapter()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text("Classification of Computers"),
                    subtitle: Text("Chapter 4"),
                    trailing: Icon(Icons.forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FourthChapter()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text("Computer Software"),
                    subtitle: Text("Chapter 5"),
                    trailing: Icon(Icons.forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FifthChapter()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text("Computer Network and Internet"),
                    subtitle: Text("Chapter 6"),
                    trailing: Icon(Icons.forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SixthChapter()),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";

void main() => runApp(
    MaterialApp(
      home: MyApp(),
      theme: ThemeData(
          primaryColor: Colors.teal,
          splashColor: Colors.teal
      ),
    )
);

class MyApp extends StatelessWidget {

  List<String> imgList = [
    "one.jpg","two.jpg","three.jpg","five.jpg","one.jpg","two.jpg","three.jpg","four.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
            itemBuilder: (context,int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 30.0),
                child: new Material(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        "assets/imgs/${imgList[index]}",
                        fit: BoxFit.cover
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight,
                              colors: [
                                Colors.white.withOpacity(0.5),
                                Colors.white12.withOpacity(0.3)
                              ]
                          )
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: imgList.length,
          )
    );
  }
}
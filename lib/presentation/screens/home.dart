import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          child: Column(
            children: [
              VxSwiper(
                  items: [1, 2, 3, 4, 5].map(
                (index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image(
                        image: NetworkImage(
                          "https://apollo-singapore.akamaized"
                          ".net/v1/files/wpd88ihqjn8f3-IN/image;s=272x0",
                        ),
                        width: 300,
                        height: 180,
                      ),
                      Text("Table"),
                    ],
                  )
                      .box
                      .width(300)
                      .height(150)
                      .rounded
                      .alignCenter
                      .color(Vx.amber100)
                      .make();
                },
              ).toList()),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: "Home".text.xl3.make(),
      ),
    );
  }
}

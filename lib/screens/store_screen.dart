import 'package:flutter/material.dart';
import 'package:store_web/screens/widgets/mobile_app_bar.dart';
import 'package:store_web/screens/widgets/product_widget.dart';
import 'package:store_web/screens/widgets/web_app_bar.dart';

class StoreScreen extends StatelessWidget {
  final List<Widget> produts = [
    ProductWidget(
      description: "Kit Multimídia",
      price: "2.200,00",
      image: "p1.jpg",
    ),
    ProductWidget(
      description: "Pnew Goodyear aro 16",
      price: "800,00",
      image: "p2.jpg",
    ),
    ProductWidget(
      description: "Samsung 9",
      price: "4.100,00",
      image: "p3.jpg",
    ),
    ProductWidget(
      description: "Samsung Edge",
      price: "2.150,90",
      image: "p4.jpg",
    ),
    ProductWidget(
      description: "Galaxy 10",
      price: "6.200,00",
      image: "p5.jpg",
    ),
    ProductWidget(
      description: "Iphone 10",
      price: "1.900,20",
      image: "p6.jpg",
    ),
    ProductWidget(
      description: "Kit Multimídia",
      price: "2.200,00",
      image: "p1.jpg",
    ),
    ProductWidget(
      description: "Pnew Goodyear aro 16",
      price: "800,00",
      image: "p2.jpg",
    ),
    ProductWidget(
      description: "Samsung 9",
      price: "4.100,00",
      image: "p3.jpg",
    ),
    ProductWidget(
      description: "Samsung Edge",
      price: "2.150,90",
      image: "p4.jpg",
    ),
    ProductWidget(
      description: "Galaxy 10",
      price: "6.200,00",
      image: "p5.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var width = constraint.maxWidth;
        var widthAppBar = AppBar().preferredSize.height;

        return Scaffold(
          appBar: width < 600
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(width, widthAppBar),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(
                    width,
                    widthAppBar,
                  )),
          body: Stack(
            children: <Widget>[
              Container(height: double.infinity),
              Container(
                height: 250,
                color: Colors.green[100],
              ),
              Positioned(
                top: 50,
                left: 100,
                right: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      labelText: '  Encontrar produto ...',
                      labelStyle: TextStyle(color: Colors.black87),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Buscar",
                            style: TextStyle(fontSize: 13),
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            side: BorderSide(color: Colors.green),
                            backgroundColor: Colors.green,
                            primary: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 170,
                left: 20.0,
                right: 20.0,
                child: Material(
                  elevation: 5,
                  child: Container(
                    color: Colors.white,
                    width: width,
                    padding: const EdgeInsets.all(20),
                    child: GridView.builder(
                      padding: EdgeInsets.all(20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        crossAxisCount: adjustVisualization(width),
                      ),
                      shrinkWrap: true,
                      itemCount: produts.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return produts[index];
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: width,
                  height: 40,
                  color: Colors.green[100],
                  child: Center(
                    child: Text(
                      '© 2021 Store Web.',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  adjustVisualization(double larguraTela) {
    int columns = 2;

    if (larguraTela <= 600) {
      columns = 2;
    } else if (larguraTela <= 960) {
      columns = 4;
    } else {
      columns = 6;
    }

    return columns;
  }
}

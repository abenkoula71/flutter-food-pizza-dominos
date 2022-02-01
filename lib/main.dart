import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.dominos.fr/ManagedAssets/FR/product/PCHP/FR_PCHP_fr_hero_9166.png?v1967803045'))),
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Domin' s ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.3),
                      ),
                      Text(
                        "Pizza",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.3),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '\$239',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Pizza de pepperoni',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Pour vous, nous avons évalué les calories et les valeurs nutritionnelles de nos produits sur la base d'une portion de 100g. Mais malgré l’attention portée à la répartition équilibrée des ingrédients sur cette portion, il se peut que ces valeurs varient légèrement.",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1.1,
                            letterSpacing: 0.4,
                            height: 1.5),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                'Agregar al carrito',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      a = 1;
                    });
                  },
                  child: Icon(
                    Icons.category_outlined,
                    color: a!=1? Colors.grey:Colors.orange,
                  ),
                ),
                GestureDetector(
                  onTap: () {setState(() {
                      a = 2;
                    });},
                  child: Icon(
                    Icons.card_travel,
                    color: a!=2? Colors.grey:Colors.orange,
                  ),
                ),
                GestureDetector(
                  onTap: () {setState(() {
                      a = 3;
                    });},
                  child: Icon(
                    Icons.paste_rounded,
                    color: a!=3? Colors.grey:Colors.orange,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

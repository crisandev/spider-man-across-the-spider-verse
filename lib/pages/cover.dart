import 'package:flutter/material.dart';

class Cover extends StatefulWidget {
  const Cover({super.key});

  @override
  State<Cover> createState() => _CoverState();
}

class _CoverState extends State<Cover> {
  List<String> assets = [
    'assets/images/spiderman-spidersense.png',
    'assets/images/spiderman.png',
    'assets/images/spiderman-lookingback.png',
    'assets/images/spiderman-pose.png',
    'assets/images/spidergwen.png',
    'assets/images/spiderman-pig.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage("assets/images/title.png")),
            const SizedBox(
                ),
            SizedBox(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  itemCount: assets.length,
                  padEnds: false,
                  pageSnapping: false,
                  physics: const BouncingScrollPhysics(),
                  controller:
                      PageController(initialPage: 3, viewportFraction: 0.7),
                  itemBuilder: (context, i) {
                    return Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      child: Image.asset(
                        assets[i],
                        fit: BoxFit.contain,
                      ),
                    );
                  }),
            ),
            const Text(
              "Scroll Left or Right",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_to_act/slide_to_act.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.deepOrangeAccent,
    statusBarIconBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  //@CodeWithFlexz on Instagram

  //AmirBayat0 on Github
  //Programming with Flexz on Youtube

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Slide To Act Example',
        debugShowCheckedModeBanner: false,
        home: SlideToActTest());
  }
}

class SlideToActTest extends StatefulWidget {
  const SlideToActTest({Key? key}) : super(key: key);

  @override
  State<SlideToActTest> createState() => _SlideToActTestState();
}

bool isUnlock = false;

class _SlideToActTestState extends State<SlideToActTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Slide To Act Example"),
            centerTitle: true,
            backgroundColor: Colors.deepOrangeAccent,
          ),
          backgroundColor: Colors.deepOrange[100],
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                isUnlock == false
                    ? Icons.lock_outline_rounded
                    : Icons.lock_open,
                size: 200,
                color: Colors.deepOrangeAccent,
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SlideAction(
                  sliderButtonIcon: const Icon(
                    Icons.lock_open,
                    color: Colors.deepOrangeAccent,
                  ),
                  innerColor: Colors.white,
                  outerColor: Colors.deepOrangeAccent,
                  borderRadius: 25.0,
                  onSubmit: () {
                    setState(() {
                      isUnlock = true;
                    });
                  },
                  text: "Slide To Unlock",
                  textStyle: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:llh/home_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String _loadingText = "Initializing...";
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _updateText();
    _updateProgress();
  }

  @override
  void dispose() {
    super.dispose();
    _textTimer?.cancel();
    _progressTimer?.cancel();
  }

  Timer? _textTimer;
  void _updateText() {
    _textTimer = Timer(const Duration(seconds: 10), () {
      setState(() {
        _loadingText = loadingTexts[
            (loadingTexts.indexOf(_loadingText) + 1) % loadingTexts.length];
      });
      _updateText();
    });
  }

  Timer? _progressTimer;
  void _updateProgress() {
    _progressTimer = Timer(const Duration(milliseconds: 10), () {
      setState(() {
        _progressValue += 0.001;
        if (_progressValue > 1.0) {
          _progressValue = 0.0;
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const HomeScreen(),
              transitionDuration: const Duration(milliseconds: 300),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
          );
        }
      });
      _updateProgress();
    });
  }

  final List<String> loadingTexts = [
    "Wrangling space pixies... almost there!",
    "Downloading patience... please wait.",
    "Unpacking epicness... hold your horses!",
    "We're not crashing, we're just optimizing the fun!",
    "Making sure the aliens speak fluent English...",
    "Coffee break in progress. Be back in a jiffy (or two).",
    "Battling a rogue semicolon. Don't worry, we'll win.",
    "Shh! We're trying to sneak past the loading screen monster.",
    "Calibrating the awesome meter. It's almost off the charts!",
    "Important message from IT: Please don't tap the screen repeatedly.",
    "We're just adding a few more sprinkles of magic.",
    "Please wait while we fold the space-time continuum.",
    "Training attack squirrels for maximum cuteness.",
    "Lost in the Bermuda Triangle of code. Send pizza!",
    "Downloading enough glitter to make unicorns jealous.",
    "Warning: May cause uncontrollable outbreaks of fun.",
    "Achievement Unlocked: Procrastination Level 100!",
    "Our lawyers are busy writing the terms and conditions for fun.",
    "Just kidding, there are no lawyers. We're all about the fun.",
    "Patience is a virtue, but boredom is a superpower. Use it wisely.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/background.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  const Column(
                    children: [
                      Text(
                        "Morwyn",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Luminari',
                          fontSize: 64.0,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        "Last Light's Hope",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Luminari',
                          fontSize: 48.0,
                          letterSpacing: 3,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        _loadingText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Luminari',
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: LinearProgressIndicator(
                          value: _progressValue,
                          backgroundColor: Colors.grey[900],
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.purple,
                          minHeight: MediaQuery.of(context).size.height * 0.025,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'dart:developer';
// import 'dart:js_util';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff363636),
        title: const Text(
          'Flutter hylophone',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            //1 Cesturedetector
            // 2 incwell
            child: GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/do.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/re.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: Colors.orange,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/mi.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/fa.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/sol.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/lya.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: Colors.cyan,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/si.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: Colors.purple,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/do2.mp3'));
              },
              child: Container(
                width: double.infinity,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

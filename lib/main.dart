import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('My music'),
        leading: Icon(Icons.music_note),
      ),
      body: ThirdApp(),
    ),
  ));
}

class ThirdApp extends StatefulWidget {
  ThirdApp({Key? key}) : super(key: key);

  @override
  State<ThirdApp> createState() => _ThirdAppState();
}

class _ThirdAppState extends State<ThirdApp> {
  AudioPlayer? player; // Declare the player variable at the class level

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              await _playMusic('adel.mp3');
            },
            child: const Padding(
              padding:  EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.alarm,
                    color: Colors.pinkAccent,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Adel',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              await _playMusic('alan.mp3');
            },
            child: const Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.music_off_outlined),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Alan',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              await _playMusic('ava.mp3');
            },
            child:const Padding(
              padding:  EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.travel_explore),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Ava',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              await _playMusic('beat.mp3');
            },
            child:const Padding(
              padding:  EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.museum),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Beat',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              await _playMusic('david.mp3');
            },
            child:const Padding(
              padding:  EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.abc),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'David',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              await _playMusic('life.mp3');
            },
            child:  const Padding(
              padding:  EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.account_box_rounded),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Life',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              await _playMusic('pii.mp3');
            },
            child:const Padding(
              padding:  EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.language_outlined),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Pii',
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              await _playMusic('walker.mp3');
            },
            child:const Padding(
              padding:  EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Icon(Icons.light_rounded),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Walker',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _playMusic(String fileName) async {
    if (player != null) {
      await player!.stop(); // Stop the previous player if it exists
      await player!.play(AssetSource(fileName));
    }
  }

  @override
  void dispose() {
    player?.dispose(); // Dispose of the player when the widget is disposed
    super.dispose();
  }
}

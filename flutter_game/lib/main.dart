//TODO: this is X-O game designed with flutter
import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterGame());
}

class FlutterGame extends StatelessWidget {
  const FlutterGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterGame X-O',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //calling the game class
      home: const FlutterOGame(title: 'FlutterGame X-O'),
    );
  }
}

class FlutterOGame extends StatefulWidget {
  const FlutterOGame({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FlutterOGame> createState() => HomeScreen();
}

class HomeScreen extends State<FlutterOGame> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

//we have now 9 sqaure boxes
  var tiles = List.filled(9, 0);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                for (var i = 0; i < 9; i++)
                  //A rectangular area of a Material that responds to touch.
                  InkWell(
                    onTap: () {
                      setState(() {
                        tiles[i] = 1;
                        runAi();
                      });
                    },
                    child: Center(
                        child: Text(tiles[i] == 0
                            ? ''
                            : tiles[i] == 1
                                ? 'X'
                                : 'O')),
                  )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //calling isWinning method
              Text(isWinning(1, tiles)
                  ? 'You won! Scussesfully'
                  : isWinning(2, tiles)
                      ? 'You lost!, Restart and Play Again'
                      : 'Play'),

              //restart button
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      tiles = List.filled(9, 0);
                    });
                  },
                  child: Text('Restart'))
            ],
          )
        ],
      ),
    );
  }

//Asynchronous operations let your program complete work while waiting for another operation to finish.
  void runAi() async {
    await Future.delayed(Duration(milliseconds: 200));

    int? winning;
    int? blocking;
    int? normal;

    for (var i = 0; i < 9; i++) {
      var val = tiles[i];

      if (val > 0) {
        continue;
      }

      var future = [...tiles]..[i] = 2;

      if (isWinning(2, future)) {
        winning = i;
      }

      future[i] = 1;

      if (isWinning(1, future)) {
        blocking = i;
      }

      normal = i;
    }

    var move = winning ?? blocking ?? normal;

    if (move != null) {
      setState(() {
        tiles[move] = 2;
      });
    }
  }

  bool isWinning(int who, List<int> tiles) {
    return (tiles[0] == who && tiles[1] == who && tiles[2] == who) ||
        (tiles[3] == who && tiles[4] == who && tiles[5] == who) ||
        (tiles[6] == who && tiles[7] == who && tiles[8] == who) ||
        (tiles[0] == who && tiles[4] == who && tiles[8] == who) ||
        (tiles[2] == who && tiles[4] == who && tiles[6] == who) ||
        (tiles[0] == who && tiles[3] == who && tiles[6] == who) ||
        (tiles[1] == who && tiles[4] == who && tiles[7] == who) ||
        (tiles[6] == who && tiles[4] == who && tiles[2] == who) ||
        (tiles[4] == who && tiles[6] == who && tiles[2] == who) ||
        (tiles[2] == who && tiles[6] == who && tiles[4] == who) ||
        (tiles[4] == who && tiles[6] == who && tiles[2] == who) ||
        (tiles[2] == who && tiles[6] == who && tiles[4] == who) ||
        (tiles[2] == who && tiles[4] == who && tiles[6] == who) ||
        (tiles[1] == who && tiles[2] == who && tiles[3] == who) ||
        (tiles[0] == who && tiles[3] == who && tiles[6] == who) ||
        (tiles[2] == who && tiles[5] == who && tiles[8] == who);
  }
}

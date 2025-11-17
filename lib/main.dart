import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainPage()));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity, // to get full width
            color: Colors.blue,
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GamePage()),
                  );
                },
                color: Colors.white,
                shape: CircleBorder(), // to make the button circular
                height: 150,
                minWidth: 150,
                child: Text("Start"),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            color: Colors.red,
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GamePage()),
                  );
                },
                color: Colors.white,
                shape: CircleBorder(), // to make the button circular
                height: 150,
                minWidth: 150,
                child: Text("Start"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  double blueCardHeight = 0;
  double redCardHeight = 0;
  int playerA = 0;
  int playerB = 0;
  bool initial = false;
  @override
  Widget build(BuildContext context) {
    if (initial == false) {
      blueCardHeight = MediaQuery.of(context).size.height / 2;
      redCardHeight = MediaQuery.of(context).size.height / 2;
      initial = true;
    }

    return Scaffold(
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              setState(() {
                blueCardHeight = blueCardHeight + 30;
                redCardHeight = redCardHeight - 30;
                playerA += 5;
              });
              double max = MediaQuery.of(context).size.height - 60;
              if (blueCardHeight > max) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ResultPage(playerA, "Player A Won", Colors.blue),
                  ),
                );
              }
            },
            padding: EdgeInsets.zero,
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              height: blueCardHeight,
              width: double.infinity,
              color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Player A",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    playerA.toString(),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                redCardHeight = redCardHeight + 30;
                blueCardHeight = blueCardHeight - 30;
                playerB += 5;

                double max = MediaQuery.of(context).size.height - 60;
                if (redCardHeight > max) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ResultPage(playerB, "Player B won", Colors.red),
                    ),
                  );
                }
              });
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10),
              height: redCardHeight,
              width: double.infinity,
              color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Player B",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    playerB.toString(),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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

class ResultPage extends StatelessWidget {
  int score = 0;
  Color color = Colors.black12;
  String player = "";
  ResultPage(this.score, this.player, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              score.toString(),
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            Text(player, style: TextStyle(fontSize: 35)),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              color: Colors.white,
              child: Text("Restart Game"),
            ),
          ],
        ),
      ),
    );
  }
}

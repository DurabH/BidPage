import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(211, 77, 30, 1),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            children: const [
              Icon(Icons.gavel, size: 28), // Bidding icon
              SizedBox(width: 10),
              Text('Bidding Page', style: TextStyle(fontSize: 22)),
            ],
          ),
        ),
        body: const Center(
          child: MaximumBid(),
        ),
      ),
    );
  }
}

class MaximumBid extends StatefulWidget {
  const MaximumBid({super.key});

  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 0;

  void _increaseBid() {
    setState(() {
      _currentBid += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/img1.jpg', // image path
          width: 400,
          height: 150,
        ),
        const SizedBox(height: 20),
        Text(
          'Current Maximum Bid: \$$_currentBid',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _increaseBid,
          child: const Text('Increase Bid by \$50'),
        ),
      ],
    );
  }
}

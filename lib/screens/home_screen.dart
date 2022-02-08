import 'package:flutter/material.dart';
import 'package:layout_a/controllers/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  static const String name = '/';
  final controller = HomeScreenController();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildHeader(),
          Expanded(child: _buildBody()),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/header-bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/id/100/1000/1000'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._buildHeadlineText1(),
                _buildHeadlineText2(),
                const SizedBox(height: 20),
                _buildGetStartButton(),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildHeadlineText1() {
    return [
      const Text(
        'The Easiest Way',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      ),
      const Text(
        'To do Something',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      ),
      const Text(
        'Special',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      ),
    ];
  }

  Widget _buildHeadlineText2() {
    return Container(
      width: 400,
      margin: const EdgeInsets.only(top: 30),
      child: const Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic',
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget _buildGetStartButton() {
    return GestureDetector(
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Center(
          child: Text(
            'Get Started',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      onTap: () {},
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.blueGrey,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, top: 10, right: 20),
            width: double.infinity,
            height: 8,
            color: Colors.grey,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Terms & Conditions',
                    style: TextStyle(fontSize: 10, color: Colors.white70),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 10, color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

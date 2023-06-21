import 'package:flutter/material.dart';

class JokeList extends StatelessWidget {
  const JokeList({
    super.key,
    required this.controller,
    required this.jokes,
  });

  final PageController controller;
  final List<String> jokes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
         
          controller: controller,
          itemCount: jokes.length,

          itemBuilder: (context, index) {
            return Text(
              jokes[index],
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500),
            );
          },
        ),
      ),
    );
  }
}


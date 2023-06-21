import 'package:flutter/material.dart';
import 'package:mobile/core/util/show_message.dart';

import '../../../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //ListJokesInit
  List<String> jokes = [
    'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on."The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now."The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."',
    'Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!"',
    'The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy, \'I am going to eat that pussy once Jimmy leaves for school today!\'"',
    'A housewife, an accountant and a lawyer were asked "How much is 2+2?" The housewife replies: "Four!". The accountant says: "I think it\'s either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"',
    'That\'s all the jokes for today! Come back another day!'
  ];

  PageController controller = PageController();

  int countFunny = 0;

  int countNotFunny = 0;

  int sumOnPress = 0;
  @override
  void initState() {
    super.initState();
    sumOnPress=0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarApp(),
      body: Column(
        children: [
          //BoxContent
          const BoxContent(),

          //List Joke
          JokeList(controller: controller, jokes: jokes),

          //Button Action
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2C7EDB),
                        shape: const RoundedRectangleBorder()),
                    onPressed: sumOnPress == jokes.length - 1
                        ? null
                        : () {
                            controller.animateToPage(
                                controller.page!.toInt() + 1,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                            setState(() {
                              countFunny++;
                              sumOnPress++;
                              if (countFunny > jokes.length) {
                                countFunny = jokes.length;
                              }
                            });

                            showMessage(context, 'Funny $countFunny');
                          },
                    child: const Text('This is Funny!')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF29B363),
                        shape: const RoundedRectangleBorder()),
                    onPressed: sumOnPress == jokes.length - 1
                        ? null
                        : () {
                            controller.animateToPage(
                                controller.page!.toInt() + 1,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                            setState(() {
                              countNotFunny++;
                              sumOnPress++;
                              if (countNotFunny > jokes.length) {
                                countNotFunny = jokes.length;
                              }
                            });
                            showMessage(context, 'NotFunny $countNotFunny');
                          },
                    child: const Text('This is not funny.'))
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          //RulesAndTerm
          const RulesAndTerm(),
          const Divider(
            thickness: 3,
          ),
        ],
      ),
    );
  }
}

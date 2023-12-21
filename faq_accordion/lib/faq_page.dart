import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/background-pattern-mobile.jpg",
                  ),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                top: 120,
                right: 25,
                bottom: 120,
                left: 25,
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: null,
                            icon: Image.asset(
                              "assets/images/icon-star.png",
                              height: 30,
                            ),
                          ),
                          const Text(
                            'FAQs',
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      const GfAccordion(
                          'What is Frontend Mentor, and how will it help me?,',
                          '''Frontend Mentor offers realistic coding challenges to help developers improve their frontend coding skills with projects in HTML, CSS, and JavaScript. It's suitable for  all levels and ideal for portfolio building.'''),
                      const GfAccordion('Is Frontend Mentor free?',
                          '''Yes, Frontend Mentor offers both free and premium coding challenges, with the free option providing access to a range of projects suitable for all skill levels.'''),
                      const GfAccordion(
                          'Can I use Frontend Mentor projects in my portfolio?',
                          '''Yes, you can use projects completed on Frontend Mentor in your portfolio. It's an excellent way to showcase your skills to potential employers'''),
                      const GfAccordion(
                          'How can I get help if I\'m stuck on a Frontend Mentor challenge?',
                          ''' The best place to get help is inside Frontend Mentor's Discord community. There's a help channel where you can ask questions and seek support from other community members.'''),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GfAccordion extends StatelessWidget {
  const GfAccordion(this.title, this.content, {super.key});
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      title: title,
      textStyle: const TextStyle(
          fontFamily: "WorkSans",
          fontWeight: FontWeight.w600,
          fontSize: 17,
          decorationColor: Colors.deepPurple),
      content: content,
      collapsedIcon: const ImageIcon(
        AssetImage("assets/images/icon-plus.png"),
        size: 26,
      ),
      expandedIcon: const ImageIcon(
        AssetImage("assets/images/icon-minus.png"),
        size: 26,
      ),
    );
  }
}

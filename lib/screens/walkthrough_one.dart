import 'package:flutter/material.dart';

class SlideData {
  String title;
  String subtitle;
  String desc;

  SlideData(
    this.title,
    this.subtitle,
    this.desc,
  );
}

class WalkThroughOne extends StatefulWidget {
  const WalkThroughOne({Key? key}) : super(key: key);

  @override
  State<WalkThroughOne> createState() => _WalkThroughOneState();
}

class _WalkThroughOneState extends State<WalkThroughOne> {
  int activeIndex = 0;

  final List<SlideData> data = [
    SlideData(
      "Lorem Ipsum",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
    ),
    SlideData(
      "Lorem Ipsum",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
    ),
    SlideData(
      "Lorem Ipsum",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
    ),
    SlideData(
      "Lorem Ipsum",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green,
              Colors.green.shade100,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: _SlideBuilder(
                controller: controller,
                data: data,
                onPageChanged: (int index) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
            const _GetStartedBtn(),
            _SlideNavigation(
              controller: controller,
              data: data,
              activeIndex: activeIndex,
            )
          ],
        ),
      ),
    );
  }
}

class _SlideNavigation extends StatelessWidget {
  const _SlideNavigation({
    Key? key,
    required this.controller,
    required this.data,
    required this.activeIndex,
  }) : super(key: key);

  final PageController controller;
  final List<SlideData> data;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 90.0,
          child: TextButton(
            onPressed: () {
              controller.previousPage(
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeIn,
              );
            },
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
            ),
            child: const Text(
              '< Previous',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              data.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: _SlideBullet(
                  color: activeIndex == index ? Colors.black : Colors.grey,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 90.0,
          child: TextButton(
            onPressed: () {
              controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
            },
            style: TextButton.styleFrom(
              alignment: Alignment.centerRight,
            ),
            child: const Text(
              'Next >',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SlideBullet extends StatelessWidget {
  const _SlideBullet({
    required this.color,
    Key? key,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class _SlideBuilder extends StatelessWidget {
  const _SlideBuilder({
    Key? key,
    required this.controller,
    required this.data,
    required this.onPageChanged,
  }) : super(key: key);

  final PageController controller;
  final List<SlideData> data;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: data
          .map((e) => _SlideLayout(
                desc: e.desc,
                subtitle: e.subtitle,
                title: e.title,
              ))
          .toList(),
    );
  }
}

class _GetStartedBtn extends StatelessWidget {
  const _GetStartedBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
          shape: const StadiumBorder(),
        ),
        child: const Text('Get Started'),
      ),
    );
  }
}

class _SlideLayout extends StatelessWidget {
  final String title;
  final String subtitle;
  final String desc;

  const _SlideLayout({
    required this.title,
    required this.subtitle,
    required this.desc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 35.0,
          ),
          child: Column(
            children: [
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey.shade700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

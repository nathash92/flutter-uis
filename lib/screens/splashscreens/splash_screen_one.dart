import 'package:flutter/material.dart';

class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
            image: const NetworkImage(
              'https://images.unsplash.com/photo-1494822493217-c9840aba840c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fG5hdHVyZSUyMG1vdW50YWlufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '👋',
                style: TextStyle(
                  fontSize: 60.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'What is Lorem Ipsum\nWhy do we use it',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Tap to get started'.toUpperCase()),
                    const SizedBox(
                      width: 10.0,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 16.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

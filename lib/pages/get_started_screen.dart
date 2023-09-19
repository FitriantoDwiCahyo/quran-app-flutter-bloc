import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app_review/routes/route.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Quran App',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text('Learn Quran and\nRecite once everyday',textAlign: TextAlign.center,),
            const SizedBox(height: 50),
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/quran.png'),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: ElevatedButton(
                      onPressed: () {
                        context.goNamed(RouteName.home);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      child: const Padding(
                        padding:  EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 40,
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

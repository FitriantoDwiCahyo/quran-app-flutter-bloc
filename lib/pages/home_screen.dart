import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quran App',
          style: TextStyle(color: Colors.amber),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.amber,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.amber),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          ListView(
            padding: const EdgeInsets.all(24),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              const Text(
                'Assalamualaikum',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Tanvir Ahassan',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 24,
              ),
              Stack(
                children: [
                  Container(
                    height: 131,
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/quran-small.png',
                                  height: 25,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text('Last Read'),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Al-Fatihah',
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              'Ayah No: 1',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    right: -15,
                    child: Image.asset(
                      'assets/images/quran_big.png',
                      width: 206,
                      height: 126,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
            
            ],
          ),
            const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:24),
                  child: DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Column(
                      children: [
                         TabBar(
                          labelColor: Colors.amber,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.amber,
                          tabs: [
                            Tab(
                              text: 'Surah',
                            ),
                            Tab(
                              text: 'Juz',
                            ),
                            Tab(
                              text: 'Bookmark',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            physics: const BouncingScrollPhysics(),
                            children: [
                              const Text('Page Satu'),
                              const Text('Page Dua'),
                              const Text('Page Tiga'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
        ],
      ),
    );
  }
}

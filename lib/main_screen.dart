import 'package:flutter/material.dart';

class StarBucks extends StatelessWidget {
  const StarBucks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            toolbarHeight: 50,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/0101_top_banner.jpg'),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/01_01_2023_winter_e-frequency.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/02_01_siren_order.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/03_01_chrismas_event.png'),
                ),
              ),
            ]),
          ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          expandedHeight: 140,
          flexibleSpace: LayoutBuilder(builder: (context, constraints) {
            return FlexibleSpaceBar(
              title: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                //---- WIDGET UNTUK MENGHILANGKAN TULISAN KETIKA DI SCROLL KEBAWAH----//
                opacity: constraints.biggest.height <= 120 ? 1 : 0,
                child: const Text(
                  "Account",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              background:
                  Container(decoration: BoxDecoration(color: Colors.pink[200])),
            );
          }),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //------- CONTAINER PADA HALAMAN PROFILE SCREEN ----------//
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: TextButton(
                        child: SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const Center(
                            child: Text(
                              "Cart",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: const BorderRadius.only(
                            // topLeft: Radius.circular(30),
                            // bottomLeft: Radius.circular(30),
                            ),
                      ),
                      child: TextButton(
                        child: SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const Center(
                            child: Text(
                              "Order",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: TextButton(
                        child: SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const Center(
                            child: Text(
                              "Wishlist",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    //================ ENDS OF CONTAINER PROFILE SCREEN ======//
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

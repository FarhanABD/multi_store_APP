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
      body: Stack(children: [
        Container(
          height: 230,
          decoration: BoxDecoration(color: Colors.pink[200]),
        ),
        CustomScrollView(slivers: [
          SliverAppBar(
            centerTitle: true,
            pinned: true,
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
                background: Container(
                  decoration: BoxDecoration(color: Colors.pink[200]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 30),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("images/inapp/guest.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Guest".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      //================ ENDS OF CONTAINER PROFILE SCREEN ======//
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey.shade300,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 150,
                        child: Image(
                            image: AssetImage('images/inapp/logo_tal.jpeg')),
                      ),

                      const ProfileHeaderLabel(
                        headerLabel: "  Account Info  ",
                      ),

                      //--- ACCOUNT INFO LIST TILE BUAT EMAIL, PHONE DAN ADDRESS -----//
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 260,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: const [
                              RepeatedListTile(
                                title: "Email Address",
                                subtitle: "example@gmail.com",
                                icon: Icons.email,
                              ),
                              PinkDivider(),
                              RepeatedListTile(
                                title: "Phone Number",
                                subtitle: "+62 xxx xxx",
                                icon: Icons.phone,
                              ),
                              PinkDivider(),
                              RepeatedListTile(
                                title: "Address",
                                subtitle: "150 - St Houston",
                                icon: Icons.location_pin,
                              ),
                            ],
                          ),
                        ),
                      ),
                      //=================== ENDS OF LIST TILE ========================//

                      //------------------ LIST TILE OF ACCOUNT SETTINGS -------------//
                      const ProfileHeaderLabel(
                          headerLabel: "  Account Settings  "),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 260,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            children: [
                              RepeatedListTile(
                                title: 'Edit Profile',
                                subtitle: '',
                                icon: Icons.edit,
                                onPressed: () {},
                              ),
                              const PinkDivider(),
                              RepeatedListTile(
                                title: 'Change Password',
                                icon: Icons.lock,
                                onPressed: () {},
                              ),
                              const PinkDivider(),
                              RepeatedListTile(
                                title: 'Log Out',
                                icon: Icons.logout,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      //================= ENDS OF ACCOUNT SETTINGS LIST TILE =========//
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ]),
    );
  }
}

class PinkDivider extends StatelessWidget {
  const PinkDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(
        color: Colors.pink,
        thickness: 1,
      ),
    );
  }
}

//----------- MODAL CLASS OF TITLE, SUBTITLE, ICON AND BUTTON ----------------//

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onPressed;
  const RepeatedListTile(
      {Key? key,
      required this.title,
      this.subtitle = "",
      required this.icon,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(icon),
      ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const ProfileHeaderLabel({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(
            headerLabel,
            style: const TextStyle(
                color: Colors.pinkAccent,
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}

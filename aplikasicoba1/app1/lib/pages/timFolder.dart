import 'package:app1/pages/project.dart';
import 'package:flutter/material.dart';

class HalamanTimFolder extends StatefulWidget {
  const HalamanTimFolder({super.key});

  @override
  State<HalamanTimFolder> createState() => _HalamanTimFolderState();
}

class _HalamanTimFolderState extends State<HalamanTimFolder> {
  double availableScreenWidth = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          alignment: Alignment.bottomCenter,
          height: 170,
          decoration: BoxDecoration(color: Colors.blue.shade800),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Riotters",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Text(
                  "team folder",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(.1)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(.1)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                      text: "storage",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                      text: "9.1/10GB",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    )
                  ])),
              const Text(
                "upgrade",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              buildFileSizeChart("Sources", Colors.blue, .3),
              const SizedBox(
                width: 2,
              ),
              buildFileSizeChart("DOCS", Colors.red, 25),
              const SizedBox(
                width: 2,
              ),
              buildFileSizeChart("Images", Colors.yellow, .20),
              const SizedBox(
                width: 2,
              ),
              buildFileSizeChart("", Colors.grey, .23)
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          height: 20,
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              const Text(
                "recently updated",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  buildFileKolom('Sketch', 'desktop', 'sketch'),
                  SizedBox(
                    width: availableScreenWidth * .03,
                  ),
                  buildFileKolom('sketch', 'mobile', 'sketch'),
                  SizedBox(
                    width: availableScreenWidth * .03,
                  ),
                  buildFileKolom('prd', 'interaction', 'prd'),
                  SizedBox(
                    width: availableScreenWidth * .03,
                  ),
                ],
              ),
              const Divider(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "projects",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Create New",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              buildProjekBaris("ChatBox"),
              buildProjekBaris("namaFolder"),
              buildProjekBaris("namaFolder"),
              buildProjekBaris("namaFolder"),
            ],
          ),
        )
      ]),
      floatingActionButton: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(color: Colors.white, spreadRadius: 7, blurRadius: 1)
        ]),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'folder',
            ),
          ]),
    );
  }

  Widget buildProjekBaris(String namaFolder) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<void>(
          builder: (BuildContext context) => HalamanProjek(
            namaFolder: namaFolder,
          ),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 65,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
      ),
    );
  }

  Column buildFileKolom(String image, String filename, String extenions) {
    return Column();
  }

  Column buildFileSizeChart(String title, Color? color, double withPercentage) {
    return Column();
  }
}

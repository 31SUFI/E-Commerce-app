import 'package:e_commerce_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"}
  ];
  final secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"}
  ];
  final snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"}
  ];
  final hosuehold = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap everything inside a SingleChildScrollView
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Color(0XFFF7CB45),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.CustomText(
                              text: "Blinkit in",
                              color: Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 15,
                              fontfamily: "bold"),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.CustomText(
                              text: "16 minutes",
                              color: Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 20,
                              fontfamily: "bold")
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          UiHelper.CustomText(
                              text: "HOME ",
                              color: Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 14),
                          UiHelper.CustomText(
                              text: "- M. Sufiyan, Burns Road, Saddar",
                              color: Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 14)
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 130,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    child:
                        UiHelper.CustomTextField(controller: searchController))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomText(
                    text: "Grocery & Kitchen",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // Wrap with a Container for controlled height
              height: 120, // You can adjust the height as needed
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: grocerykitchen[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: grocerykitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomText(
                    text: "Second Grocery",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // Wrap with a Container for controlled height
              height: 120,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: secondgrocery[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: secondgrocery[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: secondgrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomText(
                    text: "Snacks & Drinks",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // Wrap with a Container for controlled height
              height: 120,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: snacksanddrinks[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: snacksanddrinks[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: snacksanddrinks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomText(
                    text: "Household Essentials",
                    color: Colors.black,
                    fontweight: FontWeight.bold,
                    fontsize: 14)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // Wrap with a Container for controlled height
              height: 120,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)),
                      child: UiHelper.CustomImage(
                          img: hosuehold[index]["img"].toString()),
                    ),
                  );
                },
                itemCount: hosuehold.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

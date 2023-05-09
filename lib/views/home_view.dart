import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/globals/global_notifiers.dart';
import 'package:marketplace_app/home_page_widget_interfaces.dart';
import 'package:marketplace_app/models/product_model.dart';
import 'package:marketplace_app/views/widgets/product_item.dart';

class HomeView extends HomePageWidgetsInterfaces {
  HomeView({super.key});

  final List<Product> _productList = [
    Product(
      name: "Essential's Men's Short-Sleeve Crewneck T-shirt",
      price: "\$12.00",
      displayImage: 'assets/images/shirt0.png',
      category: 'Shirt',
      rating: 4.9,
      numberOfReviews: 2356,
    ),
    Product(
      name: "Essential's Men's Short-Sleeve Crewneck T-shirt",
      price: "\$12.00",
      displayImage: 'assets/images/shirt1.png',
      category: 'Shirt',
      rating: 4.9,
      numberOfReviews: 2356,
    ),
    Product(
      name: "Essential's Men's Short-Sleeve Crewneck T-shirt",
      price: "\$12.00",
      displayImage: 'assets/images/shirt2.png',
      category: 'Shirt',
      rating: 4.9,
      numberOfReviews: 2356,
    ),
    Product(
      name: "Essential's Men's Short-Sleeve Crewneck T-shirt",
      price: "\$12.00",
      displayImage: 'assets/images/shirt3.png',
      category: 'Shirt',
      rating: 4.9,
      numberOfReviews: 2356,
    ),
    Product(
      name: "Essential's Men's Short-Sleeve Crewneck T-shirt",
      price: "\$12.00",
      displayImage: 'assets/images/shirt4.png',
      category: 'Shirt',
      rating: 4.9,
      numberOfReviews: 2356,
    ),
    Product(
      name: "Essential's Men's Short-Sleeve Crewneck T-shirt",
      price: "\$12.00",
      displayImage: 'assets/images/shirt5.png',
      category: 'Shirt',
      rating: 4.9,
      numberOfReviews: 2356,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.33,
                child: PageView(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      padding: const EdgeInsets.only(left: 20),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(233, 235, 234, 1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  width: MediaQuery.of(context).size.width * 0.33,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      const Text(
                                        "#FASHION DAY",
                                        style:
                                        TextStyle(fontWeight: FontWeight.w900),
                                      ),
                                      const Text(
                                        "80% OFF",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 25),
                                      ),
                                      const Text(
                                          "Discover fashion that suits to\nyour style",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10)),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      MaterialButton(
                                          onPressed: () {},
                                          color:
                                          const Color.fromRGBO(43, 45, 65, 1),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(6)),
                                          child: const Text(
                                            "Check this out",
                                            style: TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Container()
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Image.asset(
                                          "assets/images/header_image1.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      padding: const EdgeInsets.only(left: 20),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(209, 250, 255, 1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  width: MediaQuery.of(context).size.width * 0.33,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      const Text(
                                        "#BEAUTYSALE",
                                        style:
                                        TextStyle(fontWeight: FontWeight.w900),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "DISCOVER OUR\nBEAUTY SELECTION",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 18),
                                      ),
                                      // const Text("Discontain fashion that suits your style"),

                                      const SizedBox(
                                        height: 10,
                                      ),

                                      MaterialButton(
                                          onPressed: () {},
                                          color:
                                          const Color.fromRGBO(43, 45, 65, 1),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(6)),
                                          child: const Text(
                                            "Check this out",
                                            style: TextStyle(color: Colors.white),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.black),
                                          ),
                                          Container()
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Image.asset(
                                          "assets/images/header_image2.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: const [
                          Icon(
                            Iconsax.category,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Icon(
                            Iconsax.airplane,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Icon(
                            Iconsax.note_21,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Icon(
                            Iconsax.data,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(246, 246, 246, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Icon(
                            Iconsax.coin,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
          )
        ),
        SliverAppBar(
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best Sale Product",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ))
              ],
            ),
          ),
          pinned: true,
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 0,
              crossAxisSpacing: 20,
            ),
            itemCount: _productList.length,
            itemBuilder: (BuildContext context, int index) =>
                ProductItem(product: _productList[index]),
          ),
        ),
      ]
    );
  }

  @override
  Widget getWidgetIcon() {
    return const Icon(Iconsax.home_15);
  }

  @override
  String getWidgetName() {
    return "Home";
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String headerTitle;

  Delegate(this.backgroundColor, this.headerTitle);

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Text(
          headerTitle,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

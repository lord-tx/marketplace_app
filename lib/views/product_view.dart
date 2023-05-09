import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _opacity = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Iconsax.heart)
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Iconsax.share)
          ),
          IconButton(
              onPressed: (){},
              icon: const Badge(
                label: Text("1"), // TODO: Add a listener for this
                child: Icon(Iconsax.bag_24),
              ),
          ),
          const SizedBox(width: 5,)
        ],
      ),
      persistentFooterButtons: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Price"),
                  Text("\$18.00",
                    style: TextStyle(
                        color: Color.fromRGBO(76, 178, 153, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        onPressed: (){},
                        elevation: 0,
                        height: 55,
                        color: const Color.fromRGBO(76, 178, 153, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Iconsax.bag_24,color: Colors.white,),
                            SizedBox(width: 5,),
                            Text("1", style: TextStyle(color: Colors.white, fontSize: 22),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: MaterialButton(
                        height: 55,
                        elevation: 0,
                        onPressed: (){},
                        color: const Color.fromRGBO(43,  45, 65, 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                        ),
                        child: const Text(
                          "Buy Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
      body: DefaultTabController(
        length: 2,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: _opacity.value,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                children: [
                  ProductImagePreview(),
                  const SizedBox(height: 30,),
                  ProductDescriptionOverview(),
                  ProductAboutSection(),
                ],
              ),
            );
          }
        ),
      ),
    );
  }

  // TODO: Change all these to stateless widgets
  Widget ProductImagePreview(){
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 247, 247, 1),
        borderRadius: BorderRadius.circular(7)
      ),
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/shirt0.png',
              fit: BoxFit.contain
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(206, 206, 206, 1),
                    borderRadius: BorderRadius.circular(5)
                ),
                height: 45,
                width: 45,
                child: Image.asset(
                  'assets/images/shirt0.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(206, 206, 206, 1),
                    borderRadius: BorderRadius.circular(5)
                ),
                height: 45,
                width: 45,
                child: Image.asset(
                  'assets/images/shirt0.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(206, 206, 206, 1),
                    borderRadius: BorderRadius.circular(5)
                ),
                height: 45,
                width: 45,
                child: Image.asset(
                  'assets/images/shirt0.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(206, 206, 206, 1),
                    borderRadius: BorderRadius.circular(5)
                ),
                height: 45,
                width: 45,
                child: Image.asset(
                  'assets/images/shirt0.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget ProductDescriptionOverview(){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Iconsax.shop, color: Color.fromRGBO(157, 159, 165, 1),),
            SizedBox(width: 5,),
            Text("tokubaju.id", style: TextStyle(color: Color.fromRGBO(157, 159, 165, 1),),),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text("Essential's Men's Short-Sleeve Crewneck T-shirt",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Iconsax.star1,
              color: Color.fromRGBO(246, 163, 64, 1),
              size: 18,
            ),
            SizedBox(
              width: 2,
            ),
            /// Maybe make Text -> Row, so it can expand to end
            Text(
              "4.9 Ratings • 2.3K+ Reviews • 2.9K+ Sold",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }

  Widget ProductAboutSection(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20,),
        const TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(child: Text("About Item", style: TextStyle(fontSize: 18), textAlign: TextAlign.left,)),
            Tab(child: Text("Reviews", style: TextStyle(fontSize: 18), textAlign: TextAlign.left,)),
          ],
        ),
        // TODO: Find a way to make this TabBarView Dynamic
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1.5,
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ProductDescription(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Brand: "),
                                Text("Brand"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Brand: "),
                                Text("Brand"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Brand: "),
                                Text("Brand"),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text("Brand: "),
                                Text("Brand"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Brand: "),
                                Text("Brand"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Brand: "),
                                Text("Brand"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]
          ),
        ),
      ],
    );
  }

  /// TODO: This widget would be broken down further
  Widget ProductDescription(){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Brand: ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color.fromRGBO(157, 159, 165, 1),
                        ),
                      ),
                      Text(
                        "ChArmkpR",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "Category: ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color.fromRGBO(157, 159, 165, 1),
                        ),
                      ),
                      Text(
                        "Casual Shirt",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "Condition: ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color.fromRGBO(157, 159, 165, 1),
                        ),
                      ),
                      Text(
                        "New",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Color: ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color.fromRGBO(157, 159, 165, 1),
                        ),
                      ),
                      Text(
                        "Aprikot",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "Material: ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color.fromRGBO(157, 159, 165, 1),
                        ),
                      ),
                      Text(
                        "Polyester",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "Heavy: ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color.fromRGBO(157, 159, 165, 1),
                        ),
                      ),
                      Text(
                        "200g",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10,),
          const Divider(),
          const SizedBox(height: 20,),
          // ExpansionTile(
          //   tilePadding: EdgeInsets.zero,
          //   expandedAlignment: Alignment.centerLeft,
          //   expandedCrossAxisAlignment: CrossAxisAlignment.start,
          //   title: Text(
          //     "See More: ",
          //     style: TextStyle(
          //       fontWeight: FontWeight.w900,
          //       fontSize: 18,
          //     ),
          //   ),
          // ),
          const Text(
            "Description: ",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,),
          ),
          const SizedBox(height: 10,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("•", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromRGBO(157, 159, 165, 1),
                  ),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Text(
                      "Classic and timeless leather jacket made from premium quality leather.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromRGBO(157, 159, 165, 1),
                      ),
                    )
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("•", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromRGBO(157, 159, 165, 1),
                  ),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Text("Sleek and stylish leather jacket with clean lines and a slim fit.", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color.fromRGBO(157, 159, 165, 1),
                    ),)
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("•", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromRGBO(157, 159, 165, 1),
                  ),),
                  SizedBox(width: 10,),
                  Expanded(child: Text("Bold and eye-catching leather jacket with a unique distressed finish.", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromRGBO(157, 159, 165, 1),
                  ),)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("•", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromRGBO(157, 159, 165, 1),
                  ),),
                  SizedBox(width: 10,),
                  Expanded(child: Text("Warm and stylish leather jacket with a soft and comfortable interior lining.", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromRGBO(157, 159, 165, 1),
                  ),)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15,),
          const Text(
            "Chat us if there's anything at all in this life you need to ask about the product :).",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Color.fromRGBO(157, 159, 165, 1),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: (){},
                child: const Text("See less")
              ),
              const Icon(Iconsax.arrow_circle_up)
            ],
          ),
          const Divider(),
          const SizedBox(height: 15,),
          const Text(
            "Shippings Information: ",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,),
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Text("Delivery: ", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromRGBO(157, 159, 165, 1),
              ),),
              Text("Shipping from Jakarta, Indonesia: ", style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text("Shipping: ", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromRGBO(157, 159, 165, 1),
              ),),
              Text("FREE International Shipping", style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text("Arrive: ", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color.fromRGBO(157, 159, 165, 1),
              ),),
              Text("Estimated arrival on 25 - 27th Oct, 2022", style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),),
            ],
          ),
          const SizedBox(height: 15,),
          const Divider(),
          const SizedBox(height: 15,),
          const Text(
            "Seller Information: ",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromRGBO(157, 159, 165, 0.2),
                backgroundImage: AssetImage("assets/images/shop_1.png"),
                radius: 45,
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shopp.My", style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                  ),),
                  const SizedBox(height: 10,),
                  Text("Active 5 min ago   |   96.7% Positive Feedback", style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromRGBO(157, 159, 165, 1),
                  ),),
                  const SizedBox(height: 10,),
                  MaterialButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: const Color.fromRGBO(76, 178, 153, 1),),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      children: [
                        Icon(Iconsax.shop, color: const Color.fromRGBO(76, 178, 153, 1),),
                        const SizedBox(width: 10,),
                        Text("Visit Store", style: TextStyle(
                          color: const Color.fromRGBO(76, 178, 153, 1),
                          fontWeight: FontWeight.w700
                        ),)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 15,),
          const Divider(),
          const SizedBox(height: 15,),
          const Text(
            "Reviews and Ratings",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,),
          ),
          /// Review Widget
          Row(
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("4.9", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 45,
                      ),),
                      Text("/50", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromRGBO(157, 159, 165, 1),
                      ),)
                    ],
                  ),
                  // Icon(Iconsax.star, color: Colors.yellow,)
                ],
              ),
              Column(),
            ],
          ),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }
}

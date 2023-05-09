import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/models/product_model.dart';
import 'package:marketplace_app/views/product_view.dart';

class ProductItem extends StatefulWidget {
  final Product product;
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        InkWell(
        onTap: (){
          Navigator.push(context, PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return const ProductView();
            },
            transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: const Color.fromRGBO(240, 240, 240, 1),
                child: Image.asset(
                  widget.product.displayImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.category,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      widget.product.name,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Iconsax.star1,
                              color: Color.fromRGBO(246, 163, 64, 1),
                              size: 14,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              "${widget.product.rating.toString()} | ${widget.product.numberOfReviews.toString()}",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Text(
                          widget.product.price,
                          style: TextStyle(
                              color: Color.fromRGBO(52, 155, 130, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
        IconButton(
          onPressed: (){
            setState(() {
              widget.product.likedByCurrentUser = !widget.product.likedByCurrentUser;
            });
          },
          icon: widget.product.likedByCurrentUser
              ? const Icon(Iconsax.heart, fill: 1.0, color: Colors.red,)
              : const Icon(Iconsax.heart)
        ),
      ],
    );
  }
}

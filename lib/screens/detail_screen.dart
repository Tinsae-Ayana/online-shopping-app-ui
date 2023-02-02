import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shopping_ui/models/products.dart';
import 'package:online_shopping_ui/utils/dummy_data.dart';
import 'package:online_shopping_ui/widgets/colored_dot.dart';
import 'package:online_shopping_ui/widgets/custom_button.dart';
import 'package:online_shopping_ui/widgets/large_button.dart';

class DeatailScreen extends StatelessWidget {
  const DeatailScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: product.color),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.5,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _builtAppBar(context),
                  const SizedBox(height: 20),
                  const Text(
                    'Aristicoratic Hand Bag',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    product.title,
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.08),
                  _builtPriceAndImageRow(),
                  _buildColorSizeRow(),
                  SizedBox(height: height * 0.04),
                  Text(
                    DummyData.dummyText,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: height * 0.03),
                  _buildCustomButtonRow(),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 60,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: product.color)),
                        child: SvgPicture.asset(
                          'assets/icons/cart.svg',
                          color: product.color,
                        ),
                      ),
                      LargeButton(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          label: 'BUY NOW',
                          color: product.color)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row _buildCustomButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Custombutton(icon: Icon(Icons.add)),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                '01',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            Custombutton(icon: Icon(Icons.remove)),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration:
              const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: const Icon(
            Icons.favorite_sharp,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Row _buildColorSizeRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Color',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Row(
              children: const [
                ColoredDot(
                  color: Color(0xFF3D82AE),
                  isSelected: true,
                ),
                ColoredDot(color: Color(0xFFD3A984)),
                ColoredDot(color: Color(0xFF989493)),
              ],
            )
          ],
        ),
        const SizedBox(width: 150),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            Text('12 cm',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        )
      ],
    );
  }

  Row _builtAppBar(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
        ),
        Row(
          children: const [
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.shopping_cart_checkout_outlined,
              size: 30,
              color: Colors.white,
            )
          ],
        )
      ],
    );
  }

  Row _builtPriceAndImageRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'price',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Text(
              '\$243',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Hero(
          tag: product,
          child: Image.asset(
            product.image,
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

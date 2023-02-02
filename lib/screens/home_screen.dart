import 'package:flutter/material.dart';
import 'package:online_shopping_ui/utils/dummy_data.dart';
import 'package:online_shopping_ui/widgets/tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Women',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                unselectedLabelColor: Colors.black.withOpacity(0.5),
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                tabs: const [
                  Tab(
                    text: 'Hand Bag',
                  ),
                  Tab(
                    text: 'Jewellery',
                  ),
                  Tab(
                    text: 'Footwear',
                  ),
                  Tab(
                    text: 'Dress',
                  )
                ]),
            SizedBox(
              height: height * 0.025,
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                TabView(
                  products: DummyData.products,
                ),
                TabView(
                  products: DummyData.products,
                ),
                TabView(
                  products: DummyData.products,
                ),
                TabView(
                  products: DummyData.products,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black.withOpacity(0.9),
        size: 30,
      ),
      elevation: 0.0,
      actions: [
        Icon(
          Icons.search,
          color: Colors.black.withOpacity(0.9),
          size: 30,
        ),
        const SizedBox(
          width: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black.withOpacity(0.9),
            size: 30,
          ),
        )
      ],
    );
  }
}

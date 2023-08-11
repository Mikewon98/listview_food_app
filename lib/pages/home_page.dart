import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/cart_bottom_navigation_bar.dart';
import '../widget/catagories_widget.dart';
import '../widget/custom_app_bar.dart';
import '../widget/drawer_widget.dart';
import '../widget/new_items_widget.dart';
import '../widget/popular_items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // custom App Bar
          const AppBarWidget(),
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "What would you like to have?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.filter_list,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          // catagory

          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Catagories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // catagories
          const CatagoriesWidget(),

          // popular Item widgets
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Popular Items",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          const PopularItemsWidget(),

          // New Items
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "New Items",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          const NewItemsWidget(),
        ],
      ),

      //floating action button
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.orange[100],
          onPressed: () {
            Navigator.pushNamed(context, 'cartpage');
          },
          child: const Icon(
            CupertinoIcons.cart_fill,
            size: 28,
            color: Colors.red,
          ),
        ),
      ),

      // Drawer
      drawer: const DrawerWidget(),
    );
  }
}

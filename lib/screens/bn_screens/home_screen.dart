import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsetsDirectional.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 140 / 186,
      ),
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Image.asset('assets/images/jeremy-bezanger-8hYOrlJF5J4-unsplash.jpg', fit: BoxFit.cover,),
        );
      },
    );
  }
}

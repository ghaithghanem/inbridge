import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavigationButton extends StatelessWidget {
  final List<String> routeNames;
  final List<String> iconAssets; // Asset paths for icons
  final String centerRouteName; // Route name for center button
  final String centerAsset; // Asset path for center button
  final Function() onCenterTap;
  final int selectedIndex; // Currently selected index
  final Function(int) onSelect; // Callback to notify selected index
  final double iconSize; // Size of the icons

  CustomNavigationButton({
    required this.routeNames,
    required this.iconAssets, // Use asset paths instead of IconData
    required this.centerRouteName,
    required this.centerAsset,
    required this.onCenterTap,
    required this.selectedIndex,
    required this.onSelect,
    this.iconSize = 30, // Default icon size
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 44), // Adjust the height according to your needs
            Center(
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.9, // Adjust the width as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(routeNames.length, (index) {
                    return IconButton(
                      onPressed: () {
                        onSelect(index);
                        Get.toNamed(routeNames[index]);
                      },
                      icon: Image.asset(
                        iconAssets[index], // Use asset path
                        width: iconSize,
                        height: iconSize,
                        color: index == selectedIndex ? Colors.pink : Colors.grey, // Change color based on selected index
                      ),
                    );

                  }),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 29,
          child: GestureDetector(
            onTap: onCenterTap,
            child: Container(
              padding: EdgeInsets.all(0),
              child: Image.asset(
                centerAsset,
                width: 57,
                height: 57,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

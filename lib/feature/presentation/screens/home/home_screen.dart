import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/consts/consts.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';
import 'package:flutter_app_for_travel/feature/presentation/screens/about/about_screen.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Hi Bobr 👋', style: AppTextStyle.PrimeryText),
                      const SizedBox(height: 10),
                      Text('Explore the world',
                          style: AppTextStyle.SecondaryText),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(AppConst.avatarImage),
                  )
                ],
              ),
              const SizedBox(height: 40),
              DropDownTextField(
                initialValue: 'new_york',
                clearIconProperty: IconProperty(
                  icon: Iconsax.setting_4,
                  color: AppColors.primaryIconsColor,
                ),
                textFieldDecoration: InputDecoration(
                  hintText: 'Where are you going?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppConst.borderRadius),
                    borderSide: const BorderSide(
                        width: 2, color: AppColors.disableBorderColor),
                  ),
                ),
                searchDecoration: InputDecoration(
                  hintText: 'Search for places',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppConst.borderRadius),
                    borderSide: const BorderSide(
                        width: 2, color: AppColors.disableBorderColor),
                  ),
                ),
                dropDownList: const [
                  DropDownValueModel(name: 'New York', value: "new_york"),
                  DropDownValueModel(name: 'Los Angeles', value: "los_angeles"),
                  DropDownValueModel(name: 'Chicago', value: "chicago"),
                  DropDownValueModel(name: 'Houston', value: "houston"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text('Popular places',
                      style: AppTextStyle.PrimeryText.copyWith(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('data', style: AppTextStyle.SecondaryText),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        enableFeedback: false,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.home,
                  size: 30, color: AppColors.primaryIconsColor),
              icon: Icon(Iconsax.home,
                  size: 30, color: AppColors.secondaryIconsColor),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.home,
                  size: 30, color: AppColors.primaryIconsColor),
              icon: Icon(Iconsax.clock,
                  size: 30, color: AppColors.secondaryIconsColor),
              label: 'Clock'),
          BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.home,
                  size: 30, color: AppColors.primaryIconsColor),
              icon: Icon(Iconsax.heart,
                  size: 30, color: AppColors.secondaryIconsColor),
              label: 'Favorite'),
          BottomNavigationBarItem(
              activeIcon: Icon(Iconsax.home,
                  size: 30, color: AppColors.primaryIconsColor),
              icon: Icon(Iconsax.user,
                  size: 30, color: AppColors.secondaryIconsColor),
              label: 'Profile'),
        ],
      ),
    );
  }
}

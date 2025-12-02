import 'package:al_mushrif/src/core/utils/app_colors.dart';
import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:al_mushrif/src/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomVipCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String order;
  final VoidCallback? onTap;


  const CustomVipCard({
    super.key,
     this.title="Save Your Money with",
     this.subtitle="VIP Offers"
    , required this.order,
       this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSizes.h100,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.primary,
            AppColors.secondary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: AppSizes.w10,),
            SvgPicture.asset("assets/svg/vip_mark.svg"),
            SizedBox(width: AppSizes.w20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(title,textStyle: TextStyle(color: AppColors.white),),
                  CustomText(subtitle,textStyle: TextStyle(color:  AppColors.white,fontSize: AppSizes.fs20),)
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                InkWell(
                  onTap: onTap,
                  child: Container(
                    width: AppSizes.w36,
                    height: AppSizes.h36,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: AppColors.primary,
                      size: 20,
                    ),
                  ),
                ),
                CustomText(order,textStyle: TextStyle(color: AppColors.white),)

              ],
            ),
          ],
        )
      ),
    );
  }
}
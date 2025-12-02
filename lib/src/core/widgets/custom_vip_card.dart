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
      height: 100,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFC6161D),
            Color(0xFFFF4B4B),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 10,),
            SvgPicture.asset("assets/svg/vip_mark.svg"),
            SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(title,textStyle: TextStyle(color: Colors.white),),
                  CustomText(subtitle,textStyle: TextStyle(color: Colors.white,fontSize: 20),)
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                InkWell(
                  onTap: onTap,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xFFC6161D),
                      size: 20,
                    ),
                  ),
                ),
                CustomText(order,textStyle: TextStyle(color: Colors.white),)

              ],
            ),
          ],
        )
      ),
    );
  }
}
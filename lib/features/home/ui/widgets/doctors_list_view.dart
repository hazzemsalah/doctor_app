import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    'assets/images/recommendation_doctor.png',
                    height: 120.h,
                    width: 110.w,
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyles.font18DarkBlueBold,
                      ),
                      verticalSpace(5),
                      Text(
                        'Degree | 01004318619',
                        style: TextStyles.font12GrayMedium,
                      ),
                      verticalSpace(5),
                      Text(
                        'Hazzemsalaht6@gmail.com',
                        style: TextStyles.font12GrayMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

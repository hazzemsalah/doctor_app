import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list/data/doctor_item_list_model.dart';
class DoctorsListViewItem extends StatefulWidget {
  final Doctors? doctorsModel;
  final int index;

  const DoctorsListViewItem({
    super.key,
    this.doctorsModel, required this.index,
  });

  @override
  State<DoctorsListViewItem> createState() => _DoctorsListViewItemState();
}

class _DoctorsListViewItemState extends State<DoctorsListViewItem> {
  bool _isImageLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Stack(
            children: [
              if (!_isImageLoaded)
                Shimmer.fromColors(
                  baseColor: ColorsManager.lightGrey,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 110.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                  ),
                ),
              Image.asset(
                doctorItemImageList[widget.index].image,
                width: 110.w,
                height: 120.h,
                fit: BoxFit.cover,
                frameBuilder: (BuildContext context, Widget child, int? frame,
                    bool wasSynchronouslyLoaded) {
                  if (wasSynchronouslyLoaded || frame != null) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted) {
                        setState(() {
                          _isImageLoaded = true;
                        });
                      }
                    });
                    return Container(
                      width: 110.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        image:  DecorationImage(
                          image: AssetImage(doctorItemImageList[widget.index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  } else {
                    return child;
                  }
                },
              ),
            ],
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.doctorsModel?.name ?? "Name",
                  style: TextStyles.font18DarkBlueBold,
                ),
                verticalSpace(5),
                Text(
                  '${widget.doctorsModel?.degree} | ${widget.doctorsModel?.phone}',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  widget.doctorsModel?.email ?? "Email",
                  style: TextStyles.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

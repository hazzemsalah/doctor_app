import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SeeAllSpecializationsGridShimmerLoading extends StatelessWidget {
  const SeeAllSpecializationsGridShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

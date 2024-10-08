import 'package:flutter/material.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;

  const DoctorsListView({
    super.key,
    required this.doctorsList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 12, left: 12),
      child: ListView.builder(
        itemCount: doctorsList?.length ?? 0,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            doctorsModel: doctorsList?[index],
            index: index,
          );
        },
      ),
    );
  }
}

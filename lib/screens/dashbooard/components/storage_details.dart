import 'package:admin/constants.dart';
import 'package:admin/screens/dashbooard/components/chart.dart';
import 'package:admin/screens/dashbooard/components/storagecardinfo.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
    @required this.pieChartDatas,
  }) : super(key: key);

  final List<PieChartSectionData> pieChartDatas;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius:
              const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(pieChartDatas: pieChartDatas),
          StorageInfoCard(
            title: 'Documents Files',
            svgSrc: 'assets/icons/Documents.svg',
            files: '1.5GB',
            numOfFiles: 143,
          ),
          StorageInfoCard(
            title: 'Media Files',
            svgSrc: 'assets/icons/media.svg',
            files: '10.5GB',
            numOfFiles: 72,
          ),
          StorageInfoCard(
            title: 'Documents Files',
            svgSrc: 'assets/icons/folder.svg',
            files: '2.5GB',
            numOfFiles: 201,
          ),
          StorageInfoCard(
            title: 'Documents Files',
            svgSrc: 'assets/icons/unknown.svg',
            files: '4.4GB',
            numOfFiles: 331,
          ),
        ],
      ),
    );
  }
}

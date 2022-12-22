import 'package:flutter/material.dart';
import 'package:vassal/components/skeleton.dart';
import 'package:vassal/utils/constants/style.dart';

class CardSkeleton extends StatelessWidget {
  const CardSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Style.primaryColor;
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: [
          Skeleton(height: 120, width: 120, color: color),
          const SizedBox(width: Style.defaultPadding),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skeleton(width: 80, color: color),
                const SizedBox(height: Style.defaultPadding / 2),
                Skeleton(color: color),
                const SizedBox(height: Style.defaultPadding / 2),
                Skeleton(color: color),
                const SizedBox(height: Style.defaultPadding / 2),
                Row(
                  children: [
                    Expanded(
                      child: Skeleton(color: color),
                    ),
                    const SizedBox(width: Style.defaultPadding),
                    Expanded(
                      child: Skeleton(color: color),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

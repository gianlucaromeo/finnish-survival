import 'dart:developer' as dev;
import 'dart:math';

import 'package:finnish_survival/screens/learn_item.dart';
import 'package:flutter/material.dart';

class LearnItemsList extends StatelessWidget {
  const LearnItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              10,
                  (index) {
                return LearnItem(
                  isComplete: Random().nextBool(),
                  isFavorite: Random().nextBool(),
                  onTap: () {
                    dev.log(name: "LearnPage / LearnItem / onTap", "TODO: Implement");
                  },
                  onFavoriteTap: () {
                    dev.log(name: "LearnPage / LearnItem / onFavoriteTap", "TODO: Implement");
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

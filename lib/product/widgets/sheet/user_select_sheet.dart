import 'package:flutter/material.dart';
import 'package:how_to_atomic_app/features/login/user_model.dart';
import 'package:how_to_atomic_app/product/widgets/expensionTile/user_expension_tiles.dart';
import 'package:how_to_atomic_app/product/widgets/padding/custom_padding.dart';

class UserSelectSheet extends StatelessWidget {
  const UserSelectSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const CustomPadding.normalHorizontal(),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Divider(indent: 100, endIndent: 100),
          UserExpensionTiles(
            users: User.mockUsers,
            onSelectedList: (selectedItems) {},
          ),
          TextButton(onPressed: () {}, child: Text('data'))
        ],
      ),
    );
  }
}

extension UserSelectSheetExtension on UserSelectSheet {
  Future<T?> show<T>(BuildContext context) {
    return showModalBottomSheet<T>(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      isDismissible: false,
      builder: (context) {
        return this;
      },
    );
  }
}

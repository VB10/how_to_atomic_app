import 'package:flutter/material.dart';
import 'package:how_to_atomic_app/features/login/user_model.dart';

class UserExpensionTiles extends StatefulWidget {
  const UserExpensionTiles({Key? key, required this.users, required this.onSelectedList}) : super(key: key);
  final List<User> users;
  final void Function(List<User> selectedItems) onSelectedList;
  @override
  _UserExpensionTilesState createState() => _UserExpensionTilesState();
}

class _UserExpensionTilesState extends State<UserExpensionTiles> {
  final List<User> _selectedUsers = [];
  bool _isExpensionOpen = false;
  void _addOrRemoveUser(User user, bool isAdd) {
    setState(() {
      isAdd ? _selectedUsers.add(user) : _selectedUsers.remove(user);
    });

    widget.onSelectedList(_selectedUsers);
  }

  void _changeOpen(bool value) {
    setState(() {
      _isExpensionOpen = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: (value) {
        _changeOpen(value);
      },
      title: Column(
        children: [
          Text('Hello'),
          Visibility(
            child: Text(_selectedUsers.map((e) => e.name).join(',')),
            visible: _selectedUsers.isNotEmpty && !_isExpensionOpen,
          )
        ],
      ),
      children: List.generate(User.mockUsers.length, (index) {
        final _user = User.mockUsers[index];
        return CheckboxListTile(
          title: Text(_user.name),
          value: _selectedUsers.contains(_user),
          onChanged: (value) {
            _addOrRemoveUser(_user, value ?? false);
          },
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';

class BottomSearchTextField extends StatelessWidget {
  const BottomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'search',
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 22.0, right: 16.0),
            child: Icon(
              Icons.search,
            ),
          ),
        ),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}

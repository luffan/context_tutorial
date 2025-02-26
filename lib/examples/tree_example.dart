import 'package:flutter/material.dart';

class TreeExample extends StatefulWidget {
  const TreeExample({super.key});

  @override
  State<TreeExample> createState() => _TreeExampleState();
}

class _TreeExampleState extends State<TreeExample> {
  bool _isUsualExample = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isUsualExample = !_isUsualExample;
            });
          },
          child:  Text('Change content'),
        ),
        const SizedBox(height: 12),
        _isUsualExample ? Center(child: UsualExample()) : ExpandedExample()
      ],
    );
  }
}

class UsualExample extends StatefulWidget {
  const UsualExample({super.key});

  @override
  State<UsualExample> createState() => _UsualExampleState();
}

class _UsualExampleState extends State<UsualExample> {
  late ThemeData _theme;
  late Size _orientation;
  bool _value = false;

  @override
  void initState() {
    print('Call method initState UsualExample');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _theme = Theme.of(context);
    _orientation = MediaQuery.of(context).size;
    print('Call method didChangeDependencies UsualExample');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(UsualExample oldWidget) {
    print('Call method didUpdateWidget UsualExample');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print('Dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _value = !_value;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _theme.disabledColor,
              border: Border.all(color: Colors.black, width: 4),
            ),
            height: 100,
            width: 100,
            child: Text('$_value'),
          ),
        ),
        const SizedBox(height: 12),
        Text('$_orientation'),
      ],
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          height: 50,
        ),
        Container(
          color: Colors.green,
          height: 50,
        ),
      ],
    );
  }
}

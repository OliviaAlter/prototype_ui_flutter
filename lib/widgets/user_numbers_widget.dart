import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
    => IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildText(context, 'holder', 'holder'),
          buildDivider(),
          buildText(context, 'holder', 'holder'),
          buildDivider(),
          buildText(context, 'holder', 'holder'),
        ],
      ),
    );

  Widget buildText(BuildContext context, String value, String text)
    => MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 15),
      onPressed: () {},
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
          ),
        ],
      ),
    );

  Widget buildDivider() =>  const SizedBox(
    height: 25,
    child: VerticalDivider()
  );

}
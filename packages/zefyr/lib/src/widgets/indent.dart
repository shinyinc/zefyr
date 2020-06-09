import 'package:flutter/widgets.dart';
import 'package:zefyr/zefyr.dart';

class ZefyrIndent extends StatelessWidget {
  final LineNode node;
  final Widget child;

  const ZefyrIndent({Key key, this.node, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final indentLevel =
        node.style.get<int>(NotusAttribute.indentation)?.value ?? 0;

    return Padding(
      padding: EdgeInsets.only(left: (indentLevel * 16.0).abs()),
      child: child,
    );
  }
}

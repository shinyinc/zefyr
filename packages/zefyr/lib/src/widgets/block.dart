// Copyright (c) 2018, the Zefyr project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:notus/notus.dart';

import 'common.dart';
import 'theme.dart';

/// Represents a block in Zefyr editor.
class ZefyrBlock extends StatelessWidget {
  const ZefyrBlock({Key key, @required this.node}) : super(key: key);

  /// Document node represented by this widget.
  final BlockNode node;

  @override
  Widget build(BuildContext context) {
    final zefyrTheme = ZefyrTheme.of(context);

    final items = <Widget>[];
    for (var line in node.children) {
      items.add(_buildLine(line, zefyrTheme.attributeTheme.code.textStyle));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: items,
    );
  }

  Widget _buildLine(Node node, TextStyle style) {
    LineNode line = node;
    return ZefyrLine(node: line, style: style);
  }
}

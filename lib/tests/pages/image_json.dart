import 'package:flutter/material.dart';

import 'package:innenu/widgets/components/components.dart';

class ImageJSONTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Image JSON 测试'),
      ),
      body: ListView(
        children: [
          TextComponent('普通图片'),
          ImageComponent.fromJson(<String, String>{
            'tag': 'img',
            'src': 'https://mp.innenu.com/img/check/check1.jpg',
          }),
          TextComponent('包含描述文字的图片'),
          ImageComponent.fromJson(<String, String>{
            'tag': 'img',
            'src': 'https://mp.innenu.com/img/check/check2.jpg',
            'desc': '报道图片1',
          }),
          TextComponent('包含大量描述文字的图片'),
          ImageComponent.fromJson(<String, String>{
            'tag': 'img',
            'src': 'https://mp.innenu.com/img/check/check2.jpg',
            'desc': '报道图片1报道图片1报道图片1报道图片1报道图片1报道图片1报道图片1报道图片1报道图片1',
          }),
          TextComponent('包含多行描述文字的图片'),
          ImageComponent.fromJson(<String, String>{
            'tag': 'img',
            'src': 'https://mp.innenu.com/img/check/check1.jpg',
            'desc': '报道图片1\n' '报道图片1',
          }),
          TextComponent('加载失败图片'),
          ImageComponent.fromJson(<String, String>{
            'tag': 'img',
            'src': 'https://mp.innenu.com/img/check/acheck1.jpg',
          }),
        ],
      ));
}

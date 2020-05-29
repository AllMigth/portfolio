import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'header.dart';
import 'coolors.dart';

class FooterScreen extends StatelessWidget {
  
  const FooterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      VxDevice(mobile: VStack([
        "Got a project?\nLet's talk".text.center.white.xl2.make(),
        10.heightBox,
        "juangarzon97@gmail.com"
        .text
        .color(Coolers.accentColor)
        .semiBold
        .make()
        .box
        .border(color: Coolers.accentColor)
        .p16
        .rounded
        .make(),
      ],
      crossAlignment: CrossAxisAlignment.center,
      ), 
      web: HStack([
          "Got a project?\nLet's talk".text.center.white.xl2.make(),
          10.heightBox,
          "juangarzon97@gmail.com"
          .text
          .color(Coolers.accentColor)
          .semiBold
          .make()
          .box
          .border(color: Coolers.accentColor)
          .p16
          .rounded
          .make(),
        ],
        alignment: MainAxisAlignment.spaceAround,
        ).w(context.safePercentWidth * 70 ).scale150().p16(),
      ),
      50.heightBox,
      CustomAppBar(),
      10.heightBox,
      "Thanks for scrolling "
      .richText
      .semiBold
      .white
      .withTextSpanChildren([
        " that's all folks".textSpan.gray500.make()]).make(), 
      10.heightBox,
      [
        "Made in India with ".text.red500.make(),
        10.heightBox,
        Icon(
          AntDesign.heart,
          color: Vx.red500,
          size: 14,
        )
        ].hStack(crossAlignment: CrossAxisAlignment.center),
        10.heightBox,
        "for"
        .text
        .white
        .make(),
        "Pawan Kumar - MTECHVIRAL"
        .text
        .red500
        .make(),
         ],
        crossAlignment: CrossAxisAlignment.center
    ).wFull(context).p16();
  }
}
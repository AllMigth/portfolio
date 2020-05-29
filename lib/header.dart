
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import 'coolors.dart';

class HeaderScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var nameWidget = "Juan\nGarzon."
                      .text.white
                      .xl6
                      .lineHeight(1)
                      .size(context.isMobile ? 15 : 20)
                      .bold
                      .make()
                      .shimmer();
        return SafeArea(
          child: VxBox(
            child: VStack([
              ZStack([
                PictureWidget(),
                Row(
                  children: <Widget>[
                    VStack([
                      //*AQUI SE APLICA EL EFECTO DE TRANSICION DE COLOR
                      //*EN EL BOTON >_
                      if(context.isMobile).50.heightBox else 10.heightBox,
                      CustomAppBar().shimmer(
                        primaryColor: Coolers.accentColor,
                      ),
                      30.heightBox,
                      nameWidget,
                      20.heightBox,
                      VxBox()
                      .color(Coolers.accentColor)
                      .size(60, 10)
                      .make()
                      .shimmer(primaryColor: Coolers.accentColor),
                      30.heightBox,
                      SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth*10, 
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    fallback: const Offstage(),
                    medium: IntroductionWidget()
                      .pOnly(left: 120)
                      .h(context.percentHeight * 60),
                    large: IntroductionWidget()
                      .pOnly(left: 120)
                      .h(context.percentHeight * 60)
                    ),
                  ),
              ],
        ).w(context.screenWidth),
          ]),
        ])).size(context.screenWidth, context.percentHeight * 60)
        .color(Coolers.secondaryColor)
        .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
                    [" - Introduction".text.gray500.widest.sm.make(),
                    10.heightBox,
                    "@softwaredeveloper for flutter, dart, web & Designer\nComputer science student."
                    .text
                    .white
                    .xl3
                    .maxLines(5)
                    //!SETTING AND QUESTION PLATFORM
                    .make().w(
                      context
                      .isMobile 
                      ? context.screenWidth
                      : context.percentWidth * 40),
                    20.heightBox,
                    ].vStack(),
                    RaisedButton(
                      onPressed: (){
                        launch("https://juangzgc.blogspot.com");
                      },
                      child: "Go blog".text.make(),
                      color: Coolers.accentColor,
                      shape: Vx.roundedSm,
                      hoverColor: Vx.purple700,
                    ),
                    RaisedButton(
                      onPressed: (){
                        launch("https://mtechviral.com");
                      },
                      child: "mtechviral.com".text.make(),
                      color: Coolers.accentColor,
                      shape: Vx.roundedSm,
                      hoverColor: Vx.purple700,
                    )
                    ],
                    alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}


class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      //*############################
      //*AQUI CARGAMOS LA IMAGEN PRINCIPAL 
      //*############################
      child: Image.asset(
          "assets/pp.png", 
          fit: BoxFit.cover,
          height: context.percentHeight * 60,
        ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}


class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return[
      Icon(AntDesign.twitter,
      color: Colors.white).mdClick((){
        launch("https://twitter.com/juangzgc");
      }).make(),
      20.widthBox,
      Icon(AntDesign.instagram,
      color: Colors.white).mdClick((){
        launch("https://instagram.com/juangzgc");
      }).make(),  
      20.widthBox,
      Icon(AntDesign.youtube,
      color: Colors.white).mdClick((){
        launch("https://youtube.com/juangzgc");
      }).make(), 
      20.widthBox,
      Icon(AntDesign.github,
      color: Colors.white).mdClick((){
        launch("https://github.com/allmigth");
      }).make(), 
    ].hStack();
  }
}
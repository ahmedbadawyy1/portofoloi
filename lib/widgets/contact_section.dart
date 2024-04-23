import 'package:flutter/material.dart';
import 'package:protofolioo/widgets/textInput.dart';
import 'dart:js' as js;
import '../constants/colors.dart';
import '../constants/size.dart';
import '../constants/sns_links.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          Text(
            "Get in touch",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              minHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
             //   if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildnameEmailFieldDesktop();
                }
              //  return buildnameEmailFieldMobile();
             // },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: TextFeild(
              controller: null,
              maxline: 20,
              hintText: 'Your message',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yellowPrimary),
                onPressed: () {},
                child: Text(
                  "Get in touch",
                  style: TextStyle(
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.githup]);
                },
                child: Image.asset(
                  "images/icons8-github-24.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.linkedIn]);
                },
                child: Image.asset(
                  "images/icons8-linkedin-circled-48.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.instagram]);
                },
                child: Image.asset(
                  "images/icons8-instagram-48.png",
                  width: 28,
                ),
              ),
              // InkWell(
              //   onTap: (){},
              //   child: Image.asset("images/icons8-x-50.png",width: 28,),
              // ),
              InkWell(
                onTap: () {
                  js.context.callMethod("open", [SnsLinks.facebook]);
                },
                child: Image.asset(
                  "images/icons8-facebook-48.png",
                  width: 28,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildnameEmailFieldDesktop() {
    return const Row(
      children: [
        Flexible(
          child: TextFeild(
            controller: null,
            maxline: null,
            hintText: 'Your name',
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Flexible(
          child: TextFeild(
            controller: null,
            maxline: null,
            hintText: 'Your email',
          ),
        ),
      ],
    );
  }

  Column buildnameEmailFieldMobile() {
    return const Column(
      children: [
        Flexible(
          child: TextFeild(
            controller: null,
             maxline: null,
            hintText: 'Your name',
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: TextFeild(
            controller: null,
            maxline: null,
            hintText: 'Your email',
          ),
        ),
      ],
    );
  }
}

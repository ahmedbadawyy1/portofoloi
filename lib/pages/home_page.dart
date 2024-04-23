import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/contact_section.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/section_projects.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';
import 'dart:js' as js;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              :  DrawerMobile(onNavItemTap: (int navIndex) {
            scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
          },),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollController,
            child: Column(
              children: [
                //////////////////////////    //header
                SizedBox(key: navbarKeys.first,),
                if (constraints.maxWidth >= kMinDesktopWidth)
                   HeaderDesktop(onNavTap: (int navIndex ) {
                     scrollToSection(navIndex);
                   },

                   )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                //////////////////////// // main
                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),
                //////////////////// Skills
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "What I can do",
                        style: TextStyle(
                          fontSize: 24,
                          color: CustomColor.whitePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        SkillsDesktop()
                      else
                        SkillsMobile()
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ///////////// Projects
                ProjectsSection(
                  key: navbarKeys[2],
                ),
                SizedBox(
                  height: 30,
                ),
                // ////////////// Contact
                 ContactSection(
                  key: navbarKeys[3],
                ),

                const SizedBox(
                  height: 30,
                ),
                Divider(
                  color: CustomColor.whiteSecondary,
                ),
                const Footer(),
              ],
            ),
          ));
    });
  }
  void scrollToSection( int navIndex){
    if (navIndex == 4){

      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration:  const Duration( milliseconds:  500),
      curve:  Curves.easeInOut,
    );
  }
}

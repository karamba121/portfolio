import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/app_class.dart';

import '../../controller/general_controller.dart';
import '../../model/models.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ExperienceWeb extends StatefulWidget {
  const ExperienceWeb({Key? key}) : super(key: key);

  @override
  State<ExperienceWeb> createState() => _ExperienceWebState();
}

class _ExperienceWebState extends State<ExperienceWeb> {
  @override
  Widget build(BuildContext context) {
    List<ExperienceModel> experienceList = [
      ...Strings.works.map(
        (work) => ExperienceModel(
          desig: work.designation,
          compName: work.company,
          duration: work.duration,
          points: Column(
            children: [
              ...work.about.map(
                (point) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Icon(
                          Icons.arrow_right,
                          color: AppColors().neonColor,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: AppClass().getMqWidth(context) * 0.35,
                        child: Text(
                          point,
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 14,
                              fontFamily: 'sfmono'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    return SizedBox(
      height: AppClass().getMqHeight(context) - 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    text: "02.",
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 20,
                        fontFamily: 'sfmono'),
                    children: <TextSpan>[
                      TextSpan(
                        text: ''' Onde já trabalhei''',
                        style: GoogleFonts.robotoSlab(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )
                    ]),
              ),
              Container(
                height: 0.5,
                margin: const EdgeInsets.only(left: 15),
                width: AppClass().getMqWidth(context) * 0.2,
                color: AppColors().textLight,
              )
            ],
          ),
          Consumer(builder: (context, ref, child) {
            var data = ref.watch(selectedExpProvider);
            return Container(
              width: AppClass().getMqWidth(context) * 0.6,
              margin: const EdgeInsets.only(top: 30.0, left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...Strings.works.reversed.map(
                          (work) => InkWell(
                            onTap: () {
                              ref.read(selectedExpProvider.notifier).state =
                                  Strings.works.indexOf(work);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: data == Strings.works.indexOf(work)
                                    ? AppColors().cardColor
                                    : Colors.transparent,
                                border: Border(
                                  left: BorderSide(
                                      color: data == Strings.works.indexOf(work)
                                          ? AppColors().neonColor
                                          : Colors.white,
                                      width: 2),
                                ),
                              ),
                              child: Text(
                                work.company,
                                style: TextStyle(
                                    color: data == Strings.works.indexOf(work)
                                        ? AppColors().neonColor
                                        : AppColors().textLight,
                                    letterSpacing: 1,
                                    height: 1.5,
                                    fontSize: 14,
                                    fontFamily: 'sfmono'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: experienceList[data].desig,
                              style: GoogleFonts.roboto(
                                  color: AppColors().textColor,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 20),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' @${experienceList[data].compName}',
                                  style: GoogleFonts.roboto(
                                      color: AppColors().neonColor,
                                      fontSize: 20),
                                )
                              ]),
                        ),
                        Text(
                          experienceList[data].duration.toString(),
                          style: TextStyle(
                              color: AppColors().textLight,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 14,
                              fontFamily: 'sfmono'),
                        ),
                        experienceList[data].points!
                      ],
                    ),
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}

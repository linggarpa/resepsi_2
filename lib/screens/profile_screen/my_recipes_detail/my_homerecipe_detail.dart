import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resepsi_2/constants.dart';
import 'package:resepsi_2/metods/text_capitalize.dart';
import 'package:resepsi_2/screens/home_screens/home_model.dart';
import 'package:sizer/sizer.dart';

class MyHomeDetailScreen extends StatelessWidget {
  const MyHomeDetailScreen({Key? key, this.myHomeItemModel}) : super(key: key);
  static const String routeName = 'MyHomeDetailScreen';

  final HomeItemModel? myHomeItemModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(myHomeItemModel!.img), fit: BoxFit.cover),
            ),
            child: Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black87.withOpacity(0.5),
              ),
              child: DraggableScrollableSheet(
                maxChildSize: 0.7,
                minChildSize: 0.2,
                initialChildSize: 0.4,
                builder:
                    (BuildContext context, ScrollController scrollcontroller) {
                  return Container(
                    padding: screensDefaultPadding,
                    decoration: const BoxDecoration(
                      color: kScaffoldColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollcontroller,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 20.w,
                            child: const Divider(
                              color: kTextPrimaryColor,
                              thickness: 3.0,
                            ),
                          ),
                          kSizedBox2,
                          kSizedBox2,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    myHomeItemModel!.name,
                                    textAlign: TextAlign.start,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                    '➕ Favourite',
                                    textAlign: TextAlign.start,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              kSizedBox1,
                              Row(
                                children: [
                                  Text(
                                    myHomeItemModel!.foodtype,
                                    textAlign: TextAlign.start,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  Text(
                                    myHomeItemModel!.duration,
                                    textAlign: TextAlign.start,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  )
                                ],
                              ),
                              kSizedBox2,
                              kSizedBox2,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            myHomeItemModel!.chefImg),
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Text(
                                        myHomeItemModel!.chefName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                              color: kTextPrimaryColor,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11.sp,
                                            ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: kErrorBorderColor,
                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      Text(
                                        "${myHomeItemModel!.likesCount}Likes",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                              color: kTextPrimaryColor,
                                              fontWeight: FontWeight.w300,
                                              letterSpacing: 0.5,
                                            ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              kSizedBox2,
                              kDivider,
                              kSizedBox2,
                              Text(
                                'Description',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              kSizedBox2,
                              Text(
                                myHomeItemModel!.description,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              kSizedBox2,
                              kDivider,
                              kSizedBox2,
                              Text(
                                'Ingredients',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              kSizedBox2,
                              kSizedBox1,
                              //
                              Text(
                                getNowLingString(
                                    myHomeItemModel!.ingredients.toList(), '•'),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: kTextPrimaryColor,
                                      letterSpacing: 0.5,
                                    ),
                              ),
                              kSizedBox2,
                              Text(
                                'Steps',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              kSizedBox2,
                              kSizedBox1,
                              Text(
                                getNowLingString(
                                    myHomeItemModel!.recipesSteps.toList(),
                                    '•'),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: kTextPrimaryColor,
                                      letterSpacing: 0.5,
                                    ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
              top: 40,
              left: 10,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 12.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x0fffffff),
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: const Icon(CupertinoIcons.back),
                ),
              ))
        ],
      ),
    );
  }
}
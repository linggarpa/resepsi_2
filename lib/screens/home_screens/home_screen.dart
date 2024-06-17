import 'package:flutter/material.dart';
import 'package:resepsi_2/constants.dart';
import 'package:resepsi_2/global_widgets/custom_grids.dart';
import 'package:resepsi_2/global_widgets/custom_suffix.dart';
import 'package:resepsi_2/screens/home_screens/components/home_component.dart';
import 'package:resepsi_2/screens/home_screens/home_model.dart';
import 'package:resepsi_2/screens/profile_screen/my_recipes_detail/my_homerecipe_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController myPage = PageController(initialPage: _selectedIndex);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: screensDefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kSizedBox2,
                kSizedBox2,
                buildSearchField(),
                kSizedBox2,
                Text(
                  'Category',
                  style: Theme.of(context).textTheme.headline6,
                ),
                kSizedBox2,
                Row(
                  children: [
                    HomeCategoryBtn(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 0;
                            myPage.jumpToPage(_selectedIndex);
                          });
                        },
                        bgColor:
                            _selectedIndex == 0 ? kPrimaryColor : kFillColor,
                        titleColor: _selectedIndex == 0
                            ? kTextWhiteColor
                            : kTextSecondaryColor,
                        title: 'All'),
                    HomeCategoryBtn(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 1;
                            myPage.jumpToPage(_selectedIndex);
                          });
                        },
                        bgColor:
                            _selectedIndex == 1 ? kPrimaryColor : kFillColor,
                        titleColor: _selectedIndex == 1
                            ? kTextWhiteColor
                            : kTextSecondaryColor,
                        title: 'Food'),
                    HomeCategoryBtn(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 2;
                            myPage.jumpToPage(_selectedIndex);
                          });
                        },
                        bgColor:
                            _selectedIndex == 2 ? kPrimaryColor : kFillColor,
                        titleColor: _selectedIndex == 2
                            ? kTextWhiteColor
                            : kTextSecondaryColor,
                        title: 'Drink'),
                  ],
                ),
                kSizedBox2,
                kSizedBox2,
                Expanded(
                    child: PageView(
                  controller: myPage,
                  scrollDirection: Axis.vertical,
                  children: [
                    _buildAllRecipes(),
                    _buildFoodRecipes(),
                    _buildDrinkRecipes(),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildAllRecipes() {
    return GridView.builder(
      gridDelegate: kHomeGridDelegate,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return HomeGridWidget(
          onPress: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomeDetailScreen(
                          myHomeItemModel: homeModel[index],
                        )));
          },
          chefName: homeModel[index].chefName,
          chefImg: homeModel[index].chefImg,
          favIcon: homeModel[index].favorite
              ? Icons.favorite
              : Icons.favorite_outline,
          favIconColor:
              homeModel[index].favorite ? kErrorBorderColor : kScaffoldColor,
          recipeImage: homeModel[index].img,
          recipeName: homeModel[index].name,
          recipeType: homeModel[index].foodtype,
          recipeDuration: homeModel[index].duration,
        );
      },
      itemCount: homeModel.length,
    );
  }

  _buildFoodRecipes() {
    List<HomeItemModel> filteredHomeModel =
        homeModel.where((item) => item.foodtype == 'Food').toList();
    return GridView.builder(
      gridDelegate: kHomeGridDelegate,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return HomeGridWidget(
          onPress: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomeDetailScreen(
                          myHomeItemModel: filteredHomeModel[index],
                        )));
          },
          chefName: filteredHomeModel[index].chefName,
          chefImg: filteredHomeModel[index].chefImg,
          favIcon: filteredHomeModel[index].favorite
              ? Icons.favorite
              : Icons.favorite_outline,
          favIconColor: filteredHomeModel[index].favorite
              ? kErrorBorderColor
              : kScaffoldColor,
          recipeImage: filteredHomeModel[index].img,
          recipeName: filteredHomeModel[index].name,
          recipeType: filteredHomeModel[index].foodtype,
          recipeDuration: filteredHomeModel[index].duration,
        );
      },
      itemCount: filteredHomeModel.length,
    );
  }

  _buildDrinkRecipes() {
    List<HomeItemModel> filteredHomeModel =
        homeModel.where((item) => item.foodtype == 'Drink').toList();
    return GridView.builder(
      gridDelegate: kHomeGridDelegate,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return HomeGridWidget(
          onPress: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomeDetailScreen(
                          myHomeItemModel: filteredHomeModel[index],
                        )));
          },
          chefName: filteredHomeModel[index].chefName,
          chefImg: filteredHomeModel[index].chefImg,
          favIcon: filteredHomeModel[index].favorite
              ? Icons.favorite
              : Icons.favorite_outline,
          favIconColor: filteredHomeModel[index].favorite
              ? kErrorBorderColor
              : kScaffoldColor,
          recipeImage: filteredHomeModel[index].img,
          recipeName: filteredHomeModel[index].name,
          recipeType: filteredHomeModel[index].foodtype,
          recipeDuration: filteredHomeModel[index].duration,
        );
      },
      itemCount: filteredHomeModel.length,
    );
  }

  TextFormField buildSearchField() {
    return TextFormField(
      onTap: () {},
      textAlign: TextAlign.start,
      keyboardType: TextInputType.text,
      style: inputTextHintStyle.copyWith(color: kTextPrimaryColor),
      decoration: const InputDecoration(
        fillColor: kFillColor,
        labelText: 'Search',
        suffixIcon: CustomSuffixIcon(
            iconSrc: 'assets/icons/search.svg', iconColor: kSecondaryColor),
      ),
    );
  }
}

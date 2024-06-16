import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resepsi_2/constants.dart'; // Pastikan constants.dart memiliki padding, colors, dll.
import 'package:resepsi_2/global_widgets/custom_grids.dart';
import 'package:resepsi_2/screens/profile_screen/components/profile_components.dart';
import 'package:resepsi_2/screens/profile_screen/model/profile_model.dart';
import 'package:resepsi_2/screens/sign_in_screen/sign_in_screen.dart';
import 'package:sizer/sizer.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = "MyProfileScreen";

  @override
  State<MyProfileScreen> createState() => _MyProfileScreen();
}

class _MyProfileScreen extends State<MyProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  MyProfileDetailModel myProfileDetailModel = MyProfileDetailModel(
      'assets/images/karina.jpeg', 'Karina', '32', '99', '100');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              // Logout action
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
            icon: const Icon(CupertinoIcons.square_arrow_right),
          ),
        ],
      ),
      body: Padding(
        padding: screensDefaultPadding,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      backgroundImage: AssetImage(myProfileDetailModel.myImage),
                      radius: 7.h,
                    ),
                    kSizedBox2,
                    ProfileName(name: myProfileDetailModel.myName),
                    kSizedBox2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProfileAboutColumn(
                            title: 'Recipes',
                            titleValue: myProfileDetailModel.myRecipeCount),
                        ProfileAboutColumn(
                            title: 'Following',
                            titleValue: myProfileDetailModel.meFollow),
                        ProfileAboutColumn(
                            title: 'Followers',
                            titleValue: myProfileDetailModel.myFollower),
                      ],
                    ),
                    kSizedBox2,
                    kSizedBox2,
                  ],
                ),
              ),
              // TabBar di bawah bagian profil
              TabBar(
                controller: _tabController,
                indicatorColor: kPrimaryColor,
                labelColor: kPrimaryColor,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: 'Recipes'),
                  Tab(text: 'Liked'),
                ],
              ),
              // TabBarView untuk konten Recipes dan Liked
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // Tab Recipes
                    _buildMyrecipes(),
                    _buildMyLike()
                    // Tab Liked
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildMyrecipes() {
    return GridView.builder(
      gridDelegate: kMyProfileGridDelegate,
      itemCount: myRecipes.length, // Pastikan ini sesuai dengan panjang daftar
      itemBuilder: (BuildContext context, int index) {
        final recipe = myRecipes[index];
        return ProfileGridWidget(
          onPress: () {},
          favIcon: recipe.favorite ? Icons.favorite : Icons.favorite_outline,
          favIconColor:
              recipe.favorite ? kErrorBorderColor : kTextSecondaryColor,
          recipeImage: recipe.img,
          recipeName: recipe.name,
          recipeType: recipe.foodtype,
          recipeDuration: recipe.duration,
        );
      },
    );
  }

  _buildMyLike() {
    return GridView.builder(
      gridDelegate: kMyProfileGridDelegate,
      itemCount:
          myLikeRecipes.length, // Pastikan ini sesuai dengan panjang daftar
      itemBuilder: (BuildContext context, int index) {
        final likerecipe = myLikeRecipes[index];
        return ProfileGridWidget(
          onPress: () {},
          favIcon:
              likerecipe.favorite ? Icons.favorite : Icons.favorite_outline,
          favIconColor:
              likerecipe.favorite ? kErrorBorderColor : kTextSecondaryColor,
          recipeImage: likerecipe.img,
          recipeName: likerecipe.name,
          recipeType: likerecipe.foodtype,
          recipeDuration: likerecipe.duration,
        );
      },
    );
  }
}

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resepsi_2/constants.dart';
import 'package:resepsi_2/global_widgets/custom_btn.dart';
import 'package:resepsi_2/screens/upload_screen/Upload_recipe_success.dart';
import 'package:sizer/sizer.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);
  static String routeName = 'UploadScreen';

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _ingredientsController = TextEditingController();
  final _stepsController = TextEditingController();
  final _durationController = TextEditingController();
  XFile? _image;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('Title: ${_titleController.text}');
      print('Description: ${_descriptionController.text}');
      print('Ingredients: ${_ingredientsController.text}');
      print('Steps: ${_stepsController.text}');
      print('Duration: ${_durationController.text}');
      print('Image Path: ${_image?.path}');

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RecipeSuccessScreen()),
      );
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _ingredientsController.dispose();
    _stepsController.dispose();
    _durationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 30.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: _image == null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_a_photo,
                                  size: 10.h,
                                  color: Colors.grey[600],
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  'Tap to add a photo',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(_image!.path),
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Center(
                                    child: Text(
                                      'Failed to load image',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  );
                                },
                              ),
                            ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: 'Recipe Title',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 4.h),
                  TextFormField(
                    controller: _descriptionController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a description';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 4.h),
                  TextFormField(
                    controller: _ingredientsController,
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Ingredients',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter ingredients';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 4.h),
                  TextFormField(
                    controller: _stepsController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: 'Steps',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter cooking steps';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 4.h),
                  TextFormField(
                    controller: _durationController,
                    decoration: InputDecoration(
                      labelText: 'Cooking Duration (e.g., 30 minutes)',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter cooking duration';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 4.h),
                  CustomBtn(
                    onPress: _submitForm,
                    title: 'Upload',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

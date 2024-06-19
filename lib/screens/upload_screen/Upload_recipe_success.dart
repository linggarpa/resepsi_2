import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart'; // Pastikan Anda menambahkan dependensi flutter_spinkit
import 'package:resepsi_2/screens/main_screen/main_screen.dart';
import 'package:sizer/sizer.dart';

class RecipeSuccessScreen extends StatefulWidget {
  const RecipeSuccessScreen({Key? key}) : super(key: key);
  static String routeName = 'RecipeSuccessScreen';

  @override
  State<RecipeSuccessScreen> createState() => _RecipeSuccessScreenState();
}

class _RecipeSuccessScreenState extends State<RecipeSuccessScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, MainScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Ikon centang untuk menunjukkan kesuksesan
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 50.w, // Menggunakan persentase dari lebar layar
              ),
              SizedBox(height: 5.h),
              // Teks pesan sukses
              Text(
                'Resep Anda telah berhasil diunggah!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 3.h),
              // Deskripsi tambahan
              Text(
                'Terimakasih telah mengupload resep baru :)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 5.h),
              // Animasi loading menggunakan flutter_spinkit
              SpinKitDoubleBounce(
                color: Colors.green,
                size: 10.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

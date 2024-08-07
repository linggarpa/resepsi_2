class MyRecipesItemModel {
  String img;
  String name;
  String foodtype;
  String duration;
  String likesCount;
  String description;
  List<String> ingredients;
  List<String> recipesSteps;
  bool favorite;

  MyRecipesItemModel(
      this.img,
      this.name,
      this.foodtype,
      this.duration,
      this.likesCount,
      this.description,
      this.ingredients,
      this.recipesSteps,
      this.favorite);
}

List<MyRecipesItemModel> myRecipes = [
  MyRecipesItemModel(
    "assets/images/nasgor.jpeg",
    "Nasi Goreng Special",
    "Food",
    "> 20 min",
    "260",
    "Nasi goreng menjadi salah satu menu makanan khas Indonesia yang cukup terkenal di berbagai negara lain. Bahkan, kamu bisa menemukan makanan ini dengan mudah di berbagai tempat. Bahan dasarnya yang terbuat dari nasi membuat makanan ini cocok untuk dimakan berbagai kalangan, mulai dari anak-anak hingga lansia. Selain itu, beragam sayuran yang menarik juga bisa menambahkan kandungan nutrisi pada makanan ini. Agar nasi goreng yang kamu konsumsi semakin lezat dan sehat, kamu bisa membuat nasi goreng dengan resep praktis berikut ini!",
    [
      "2 porsi nasi",
      "50gr daging ayam potong dadu",
      "2 butir telur",
      "3 siung bawang merah, cincang kecil",
      "2 bawang putih, cincang kecil",
      "2 batang daun bawang, potong",
      "1 buah cabai keriting",
      "1 sdm kecap manis",
      "2 sdm kecap ikan",
      "1 sdm saus tiram",
      "1/2 sdt kecap asin",
      "1/2 sampai 1 sdm gula",
      "1/2 sdt merica",
      "1/2 sdt margarin",
      "1 sdt kaldu jamur",
      "Minyak untuk menumis",
    ],
    [
      "Panaskan sedikit minyak di wajan, lalu tumis ayam hingga matang dan kemudian  sisihkan.",
      "Di wajan yang sama, panaskan sedikit minyak dan orak-arik telur sampai matang. Kemudian, masukkan semua bawang dan cabai. Aduk dan tumis hingga matang.",
      "Masukan nasi, aduk hingga rata. Lalu, masukkan ayam suwir, dan semua bahan kecap, garam, merica, dan kaldu jamur, aduk kembali sampai rata.",
      "Koreksi rasa. Jika sudah pas, angkat dan sajikan dengan lalapan timun atau selada.",
    ],
    true,
  ),
  MyRecipesItemModel(
    "assets/images/rawon.jpg",
    "Rawon",
    "Food",
    "> 80 min",
    "100",
    "Rawon adalah semacam sup daging sapi kaya rempah-rempah dengan warna hitam pekat yang berasal kluwek. Makanan khas Jawa Timur ini memiliki rasa yang gurih dengan cita rasa rempahnya yang kuat. Bukan itu saja, daging rawon pun terkenal empuk sehingga mudah sekali untuk dikunyah. Hidangan ini umumnya disajikan bersama nasi putih, tauge, telur asin, irisan daun bawang, dan sambal. Berikut resep rawon yang bisa kamu coba!",
    [
      "1/2 kg daging sapi ",
      "7 siung bawang merah ",
      "5 siung bawang putih",
      "3 butir kemiri (sangrai)",
      "2 ruas jari kunyit ",
      "7 gr jahe",
      "5 butir kluwek",
      "3 lembar daun salam",
      "6 lembar daun jeruk",
      "Lengkuas, geprek",
      "2 batang serai, geprek",
      "50 gr gula merah",
      "1 sdt gula pasir",
      "1 1/2 sdt garam",
      "2 sdt kaldu sapi bubuk",
      "1/4 sdt merica bubuk",
      "1/4 sdt ketumbar bubuk",
      "1 1/2 liter air rebusan daging sapi",
    ],
    [
      "Rebus daging sapi hingga mendidih dan kotorannya keluar. Buang air rebusan sapi kemudian rebus kembali dengan air bersih hingga matang. Angkat, tiriskan lalu potong-potong sesuai selera.",
      "Keluarkan daging kluwek dari cangkangnya, pastikan rasanya tidak pahit. Setelah itu, rendam kluwek di air panas dan sisihkan.",
      "Haluskan bawang merah, bawang putih, kemiri, dan jahe. Bisa diblender atau diulek hingga benar-benar halus.",
      "Campurkan kluwek dengan bumbu halus dan haluskan bersama hingga tercampur merata.",
      "Panaskan minyak, tumis bumbu halus. Tambahkan daun salam, daun jeruk yang disobek-sobek, serai, dan lengkuas. Tumis dengan api kecil hingga matang dan tanak.",
      "Masukkan daging dan air rebusan daging. Aduk dan tunggu mendidih. Tambahkan garam, gula, gula merah, kaldu sapi bubuk, merica bubuk, dan ketumbar bubuk.",
      "Jika sudah matang, angkat dan sajikan. Anda juga bisa menambahkan kecambah sebagai topping untuk disantap bersama nasi hangat.",
    ],
    true,
  ),
  MyRecipesItemModel(
    "assets/images/perkedel.jpg",
    "Perkedel Kentang isi ayam",
    "Food",
    "> 90 min",
    "50",
    "Perkedel adalah makanan olahan kentang berbentuk bulat yang digoreng. Resep perkedel kentang yang gurih dan lezat ini bisa kamu buat sendiri di rumah. Caranya cukup mudah, tinggal tumbuk kentang hingga halus, campur dengan bumbu dan irisan daun bawang, lalu celupkan ke dalam kocokan telur, lalu goreng dengan api sedang. Kamu juga bisa membuat perkedel kentang dengan berbagai isian, yuk simak resepnya di sini!",
    [
      "1 kilogram kentang.",
      "200 gram daging ayam giling.",
      "4 siung bawang putih.",
      "4 butir bawang merah.",
      "2 sdt garam(secukupnya).",
      "1/2 sdt penyedap rasa.",
      "1 butir kuning telur.",
      "2 putih telur.",
    ],
    [
      "Kupas kentang dan potong menjadi kecil-kecil, lalu rebus sampai matang. Angkat dan tiriskan. Kemudian, haluskan kentang rebus.",
      "Selanjutnya, iris bawang merah dan bawang putih, lalu goreng.",
      "Campur daging ayam giling dan kentang yang sudah dihaluskan, lalu tambahkan bawang goreng, garam, kuning telur dan penyedap.",
      "Bentuk perkedel menjadi bulat dengan besarnya sesuai selera.",
      "Setelah itu, panaskan minyak. Celupkan perkedel ke dalam putih telur, lalu goreng hingga matang.",
      "Nikmati perkedel selagi hangat.",
    ],
    false,
  ),
  MyRecipesItemModel(
    "assets/images/balado.jpg",
    "Telur Balado",
    "Food",
    "> 60 min",
    "20",
    "Telur balado adalah salah satu hidangan lezat yang sangat populer di Indonesia. Hidangan yang berasal dari Sumatera Barat ini terkenal karena cita rasa pedasnya yang khas dan menggugah selera. Kamu bisa temukan hidangan ini di berbagai restoran, warung makan, atau buat sendiri di rumah. Untuk membuat telur balado, kamu memerlukan beberapa bahan sederhana. Seperti telur rebus dan bumbu balado yang terbuat dari bawang merah, bawang putih, cabai merah, tomat, gula, garam, dan minyak goreng. Yuk cek resep lengkapnya!",
    [
      "1/2 kg telur",
      "200 gr cabai merah",
      "4 butir bawang merah",
      "1 siung bawang putih",
      "1 buah tomat merah",
      "Garam, secukupnya",
      "Penyedap rasa, secukupnya",
      "Minyak, secukupnya",
    ],
    [
      "Rebus telur sampai matang, setelah itu kupas dan goreng sampai kuning keemasan. Angkat dan sisihkan.",
      "Haluskan cabai, bawang merah, bawang putih, tomat. Tambahkan sedikit garam dan penyedap.",
      "Setelah itu, tumis bumbu halus hingga harum dan matang.",
      "Matikan api, kemudian masukan telur yang sudah kamu goreng. Setelah itu, aduk dan koreksi rasa. Sajikan dengan nasi hangat.",
    ],
    false,
  ),
];

class MyProfileDetailModel {
  String myImage;
  String myName;
  String myRecipeCount;
  String meFollow;
  String myFollower;
  MyProfileDetailModel(this.myImage, this.myName, this.myRecipeCount,
      this.meFollow, this.myFollower);
}

class MyLikeItemModel {
  String img;
  String name;
  String foodtype;
  String duration;
  String likesCount;
  String description;
  List<String> ingredients;
  List<String> recipesSteps;
  bool favorite;

  MyLikeItemModel(
      this.img,
      this.name,
      this.foodtype,
      this.duration,
      this.likesCount,
      this.description,
      this.ingredients,
      this.recipesSteps,
      this.favorite);
}

List<MyLikeItemModel> myLikeRecipes = [
  MyLikeItemModel(
    "assets/images/nasgor.jpeg",
    "Nasi Goreng Special",
    "Food",
    "> 20 min",
    "260",
    "Nasi goreng menjadi salah satu menu makanan khas Indonesia yang cukup terkenal di berbagai negara lain. Bahkan, kamu bisa menemukan makanan ini dengan mudah di berbagai tempat. Bahan dasarnya yang terbuat dari nasi membuat makanan ini cocok untuk dimakan berbagai kalangan, mulai dari anak-anak hingga lansia. Selain itu, beragam sayuran yang menarik juga bisa menambahkan kandungan nutrisi pada makanan ini. Agar nasi goreng yang kamu konsumsi semakin lezat dan sehat, kamu bisa membuat nasi goreng dengan resep praktis berikut ini!",
    [
      "2 porsi nasi",
      "50gr daging ayam potong dadu",
      "2 butir telur",
      "3 siung bawang merah, cincang kecil",
      "2 bawang putih, cincang kecil",
      "2 batang daun bawang, potong",
      "1 buah cabai keriting",
      "1 sdm kecap manis",
      "2 sdm kecap ikan",
      "1 sdm saus tiram",
      "1/2 sdt kecap asin",
      "1/2 sampai 1 sdm gula",
      "1/2 sdt merica",
      "1/2 sdt margarin",
      "1 sdt kaldu jamur",
      "Minyak untuk menumis",
    ],
    [
      "Panaskan sedikit minyak di wajan, lalu tumis ayam hingga matang dan kemudian  sisihkan.",
      "Di wajan yang sama, panaskan sedikit minyak dan orak-arik telur sampai matang. Kemudian, masukkan semua bawang dan cabai. Aduk dan tumis hingga matang.",
      "Masukan nasi, aduk hingga rata. Lalu, masukkan ayam suwir, dan semua bahan kecap, garam, merica, dan kaldu jamur, aduk kembali sampai rata.",
      "Koreksi rasa. Jika sudah pas, angkat dan sajikan dengan lalapan timun atau selada.",
    ],
    true,
  ),
  MyLikeItemModel(
    "assets/images/rawon.jpg",
    "Rawon",
    "Food",
    "> 80 min",
    "100",
    "Rawon adalah semacam sup daging sapi kaya rempah-rempah dengan warna hitam pekat yang berasal kluwek. Makanan khas Jawa Timur ini memiliki rasa yang gurih dengan cita rasa rempahnya yang kuat. Bukan itu saja, daging rawon pun terkenal empuk sehingga mudah sekali untuk dikunyah. Hidangan ini umumnya disajikan bersama nasi putih, tauge, telur asin, irisan daun bawang, dan sambal. Berikut resep rawon yang bisa kamu coba!",
    [
      "1/2 kg daging sapi ",
      "7 siung bawang merah ",
      "5 siung bawang putih",
      "3 butir kemiri (sangrai)",
      "2 ruas jari kunyit ",
      "7 gr jahe",
      "5 butir kluwek",
      "3 lembar daun salam",
      "6 lembar daun jeruk",
      "Lengkuas, geprek",
      "2 batang serai, geprek",
      "50 gr gula merah",
      "1 sdt gula pasir",
      "1 1/2 sdt garam",
      "2 sdt kaldu sapi bubuk",
      "1/4 sdt merica bubuk",
      "1/4 sdt ketumbar bubuk",
      "1 1/2 liter air rebusan daging sapi",
    ],
    [
      "Rebus daging sapi hingga mendidih dan kotorannya keluar. Buang air rebusan sapi kemudian rebus kembali dengan air bersih hingga matang. Angkat, tiriskan lalu potong-potong sesuai selera.",
      "Keluarkan daging kluwek dari cangkangnya, pastikan rasanya tidak pahit. Setelah itu, rendam kluwek di air panas dan sisihkan.",
      "Haluskan bawang merah, bawang putih, kemiri, dan jahe. Bisa diblender atau diulek hingga benar-benar halus.",
      "Campurkan kluwek dengan bumbu halus dan haluskan bersama hingga tercampur merata.",
      "Panaskan minyak, tumis bumbu halus. Tambahkan daun salam, daun jeruk yang disobek-sobek, serai, dan lengkuas. Tumis dengan api kecil hingga matang dan tanak.",
      "Masukkan daging dan air rebusan daging. Aduk dan tunggu mendidih. Tambahkan garam, gula, gula merah, kaldu sapi bubuk, merica bubuk, dan ketumbar bubuk.",
      "Jika sudah matang, angkat dan sajikan. Anda juga bisa menambahkan kecambah sebagai topping untuk disantap bersama nasi hangat.",
    ],
    true,
  ),
];

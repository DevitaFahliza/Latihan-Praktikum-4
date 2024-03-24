class Recipe{
  String label;
  String imageUrl;

int servings;
  List<Ingredient> ingredients;
  String description; // Properti baru untuk deskripsi
  List<String> cookingSteps;
  Recipe(this.label, this.imageUrl, this.servings, this.ingredients, this.cookingSteps,  {this.description = ""});

  static List<Recipe> samples = [
    Recipe(
      'Soto Lamongan', 
      'assets/SotoLamongan.jpeg',
      2,
      [
        Ingredient(1/2, 'KG', 'Ayam fillet'),
        Ingredient(2, 'Liter', 'Air'),
        Ingredient(10, 'Siung', 'Bawang merah'),
        Ingredient(8, 'Siung', 'Bawang putih'),
        Ingredient(5, 'Butir', 'Kemiri sangrai'),
        Ingredient(7, 'Lembar', 'Daun jeruk'),
        Ingredient(7, 'Lembar', 'Daun Salam'),
        Ingredient(2, 'Batang', 'Sereh'),
        Ingredient(2, 'Batang', 'Daun Bawang'),
        Ingredient(1/2, 'SDM', 'Kunyit bubuk'),
        Ingredient(1, 'SDM', 'Garam'),
        Ingredient(1/2, 'SDT', 'Gula'),
        Ingredient(1/2, 'SDT', 'Merica bubuk'),
        Ingredient(1, 'SDT', 'Penyedap'),
      ],
      [
        'Rebus ayam hingga matang. Buang air rebusan pertama.',
        'Tumis bumbu halus hingga harum dan matang.',
        'Masukkan sereh, daun salam, dan daun jeruk. Tumis hingga harum.',
        'Tambahkan bumbu tumis ke dalam panci dengan ayam yang sudah direbus.',
        'Tambahkan garam, gula, merica, dan penyedap. Rebus hingga empuk dan meresap, sekitar 30 menit hingga 1 jam.',
        'Potong-potong ayam.',
        'Sajikan soto hangat dan nikmat.'
      ],
      description: "Soto Ayam Lamongan adalah hidangan khas dari Lamongan, Jawa Timur, yang terkenal dengan kuah kaldu ayamnya yang kaya rempah. Hidangan ini disajikan dengan potongan daging ayam yang lembut, mie, telur rebus, dan bahan pelengkap lainnya seperti bawang goreng, daun seledri, dan irisan jeruk nipis. Kuahnya yang hangat dan gurih membuat soto ayam ini menjadi pilihan yang sempurna untuk dinikmati kapan pun, terutama saat cuaca dingin atau hujan. Rasakan kenikmatan cita rasa rempah-rempah yang lezat dalam setiap suapan soto ayam Lamongan ini!"
    ),

    Recipe(
      'Bakso Malang', 
      'assets/BaksoMalang.jpeg',
      4,
      [
        Ingredient(300, 'gram', 'Daging sapi giling'),
        Ingredient(150, 'gram', 'Tepung tapioka'),
        Ingredient(2, 'butir', 'Telur'),
        Ingredient(3, 'siung', 'Bawang putih, haluskan'),
        Ingredient(1, 'sendok teh', 'Merica bubuk'),
        Ingredient(1, 'sendok teh', 'Garam'),
        Ingredient(500, 'ml', 'Kaldu sapi'),
        Ingredient(100, 'gram', 'Tauge'),
        Ingredient(100, 'gram', 'Mi kuning'),
        Ingredient(2, 'batang', 'Daun bawang, iris halus'),
        Ingredient(2, 'batang', 'Seledri, iris halus'),
        Ingredient(2, 'sendok makan', 'Bawang goreng')
      ],
      [
        'Campur daging sapi giling, tepung tapioka, telur, bawang putih, merica bubuk, dan garam dalam satu wadah.',
        'Aduk rata hingga adonan tercampur sempurna.',
        'Bentuk bulatan-bulatan kecil dari adonan bakso dengan tangan.',
        'Didihkan kaldu sapi dalam panci besar.',
        'Masukkan bulatan bakso ke dalam kaldu mendidih.',
        'Rebus bakso hingga mengapung dan matang, sekitar 10-15 menit.',
        'Sementara itu, rebus mie kuning dan tauge dalam air mendidih hingga matang. Tiriskan.',
        'Siapkan mangkuk saji, letakkan mie kuning dan tauge di dalamnya.',
        'Tuangkan kaldu dan bakso ke dalam mangkuk saji.',
        'Taburkan potongan daun bawang, seledri, dan bawang goreng di atasnya.',
        'Bakso Malang siap disajikan, nikmati selagi hangat!'
      ],
      description: "Bakso Malang adalah hidangan khas dari Kota Malang, Jawa Timur, yang terkenal dengan bakso sapi yang kenyal dan lezat. Biasanya disajikan dengan mie kuning, tauge, dan kuah kaldu sapi yang gurih. Hidangan ini dilengkapi dengan taburan daun bawang, seledri, dan bawang goreng sebagai penyedap. Bakso Malang adalah pilihan yang sempurna untuk dinikmati sebagai hidangan utama yang menghangatkan, terutama saat cuaca dingin."
    ),

    Recipe(
      'Rawon',
      'assets/Rawon.jpeg',
      4,
      [
        Ingredient(500, 'gram', 'Daging sapi sandung lamur (sirloin)'),
        Ingredient(2, 'liter', 'Air'),
        Ingredient(200, 'gram', 'Kluwek'),
        Ingredient(5, 'buah', 'Cabe merah besar'),
        Ingredient(10, 'buah', 'Cabe rawit merah'),
        Ingredient(8, 'siung', 'Bawang putih'),
        Ingredient(6, 'siung', 'Bawang merah'),
        Ingredient(4, 'cm', 'Kunyit'),
        Ingredient(4, 'cm', 'Jahe'),
        Ingredient(3, 'cm', 'Lengkuas'),
        Ingredient(2, 'batang', 'Serai'),
        Ingredient(3, 'lembar', 'Daun salam'),
        Ingredient(4, 'lembar', 'Daun jeruk'),
        Ingredient(1, 'batang', 'Daun bawang'),
        Ingredient(2, 'sendok makan', 'Gula merah, sisir'),
        Ingredient(2, 'sendok makan', 'Kecap manis'),
        Ingredient(1, 'sendok teh', 'Garam'),
        Ingredient(1/2, 'sendok teh', 'Merica bubuk'),
        Ingredient(1/2, 'sendok teh', 'Ketumbar bubuk'),
        Ingredient(1/2, 'sendok teh', 'Pala bubuk'),
        Ingredient(2, 'sendok makan', 'Minyak untuk menumis')
      ],
      [
        'Haluskan cabe merah, cabe rawit merah, bawang putih, bawang merah, kunyit, jahe, lengkuas, dan serai.',
        'Tumis bumbu halus hingga harum dan matang. Tambahkan daun salam, daun jeruk, dan serai. Aduk rata.',
        'Masukkan daging sapi, aduk hingga berubah warna.',
        'Tambahkan air, kluwek, gula merah, garam, merica bubuk, ketumbar bubuk, pala bubuk, dan kecap manis. Aduk rata.',
        'Masak dengan api kecil hingga daging empuk dan bumbu meresap, kurang lebih selama 2-3 jam.',
        'Tambahkan potongan daun bawang. Aduk rata dan masak sebentar.',
        'Sajikan rawon hangat dengan nasi putih, tauge, sambal, dan irisan jeruk limau.'
      ],
      description: "Rawon adalah salah satu masakan khas Jawa Timur, Indonesia. Hidangan ini terkenal dengan kuah hitam pekatnya yang dihasilkan dari kluwek (buah keluak) yang telah difermentasi. Daging sapi yang empuk direbus dalam kuah kluwek bersama dengan rempah-rempah dan bumbu lainnya, menciptakan cita rasa yang kaya dan lezat. Rawon biasanya disajikan dengan nasi putih, tauge, sambal, dan irisan jeruk limau. Rasakan kenikmatan rasa rempah tradisional dalam setiap suapan rawon yang hangat dan gurih."
    ),

    Recipe(
      'Rujak Cingur', 
      'assets/RujakCingur.jpeg',
      4,
      [
        Ingredient(250, 'gram', ' Daging sapi cingur'),
        Ingredient(1, 'butir', ' Tahu'),
        Ingredient(1, 'buah', ' Timun'),
        Ingredient(2, 'buah', ' Mangga muda'),
        Ingredient(2, 'buah', ' Jeruk bali'),
        Ingredient(2, 'buah', ' Tomat merah'),
        Ingredient(1, 'buah', ' Pepaya muda'),
        Ingredient(150, 'gram', ' Kol'),
        Ingredient(100, 'gram', ' Kacang panjang'),
        Ingredient(2, 'buah', ' Cabe rawit'),
        Ingredient(2, 'buah', ' Cabe merah'),
        Ingredient(1, 'batang', ' Serai'),
        Ingredient(2, 'lembar', ' Daun jeruk'),
        Ingredient(2, 'lembar', ' Daun salam'),
        Ingredient(2, 'lembar', ' Daun kemangi'),
        Ingredient(1, 'batang', ' Daun bawang'),
        Ingredient(2, 'sendok makan', ' Petis'),
        Ingredient(2, 'sendok makan', ' Kacang tanah goreng'),
        Ingredient(2, 'sendok makan', ' Bawang goreng'),
        Ingredient(2, 'sendok makan', ' Gula merah'),
        Ingredient(1, 'sendok teh', ' Garam'),
        Ingredient(3, 'sendok makan', ' Air asam jawa'),
        Ingredient(2, 'sendok makan', ' Air matang')
      ],
      [
        'Rebus daging sapi cingur hingga empuk, angkat dan potong-potong.',
        'Potong-potong tahu, lalu goreng hingga kuning keemasan. Angkat dan tiriskan.',
        'Potong-potong timun, mangga muda, jeruk bali, tomat merah, pepaya muda, kol, dan kacang panjang sesuai selera.',
        'Haluskan cabe rawit, cabe merah, dan serai.',
        'Tumis bumbu halus hingga harum, masukkan daun jeruk, daun salam, dan daun kemangi, aduk hingga layu.',
        'Tambahkan petis, kacang tanah goreng, bawang goreng, gula merah, garam, air asam jawa, dan air matang. Aduk rata.',
        'Sajikan potongan daging cingur, tahu goreng, dan potongan sayuran dengan bumbu saus kacang.',
      ],
      description: "Rujak Cingur adalah salah satu makanan khas Jawa Timur yang terkenal dengan citarasa pedas dan gurih. Hidangan ini terdiri dari potongan daging sapi cingur, tahu goreng, sayuran segar seperti timun, mangga muda, dan kol, serta bumbu saus kacang yang kaya akan rempah-rempah. Rasa gurih dari petis dan kacang tanah goreng yang dicampur dengan gula merah dan air asam jawa memberikan sentuhan khas pada hidangan ini. Rujak Cingur biasanya disajikan sebagai hidangan pembuka atau makanan ringan di berbagai acara dan festival tradisional."
    ),

    Recipe(
      'Rujak Soto',
      'assets/RujakSoto.jpeg',
      4,
      [
        Ingredient(300, 'gram', 'Tahu'),
        Ingredient(200, 'gram', 'Tempe'),
        Ingredient(100, 'gram', 'Ketimun'),
        Ingredient(100, 'gram', 'Kol'),
        Ingredient(2, 'buah', 'Tomat'),
        Ingredient(2, 'buah', 'Mangga muda'),
        Ingredient(2, 'buah', 'Nanas'),
        Ingredient(1, 'buah', 'Jeruk nipis'),
        Ingredient(2, 'buah', 'Cabe rawit'),
        Ingredient(2, 'batang', 'Serai'),
        Ingredient(2, 'lembar', 'Daun salam'),
        Ingredient(2, 'lembar', 'Daun jeruk'),
        Ingredient(2, 'sendok makan', 'Gula merah'),
        Ingredient(2, 'sendok makan', 'Kacang tanah goreng'),
        Ingredient(2, 'sendok makan', 'Ebi sangrai'),
        Ingredient(1, 'sendok makan', 'Terasi bakar'),
        Ingredient(1, 'sendok teh', 'Garam'),
        Ingredient(1/2, 'sendok teh', 'Terasi bakar'),
        Ingredient(500, 'ml', 'Air'),
        Ingredient(2, 'sendok makan', 'Minyak untuk menumis')
      ],
      [
        'Potong-potong tahu, tempe, ketimun, kol, tomat, mangga muda, nanas, cabe rawit, dan jeruk nipis sesuai selera.',
        'Haluskan terasi bakar, gula merah, kacang tanah goreng, ebi sangrai, garam, dan terasi bakar.',
        'Tumis bumbu halus menggunakan minyak sampai harum.',
        'Tambahkan serai, daun salam, dan daun jeruk, aduk rata.',
        'Masukkan air, biarkan mendidih.',
        'Tambahkan potongan tahu dan tempe, biarkan matang.',
        'Siapkan mangkok saji, masukkan potongan sayuran dan buah.',
        'Tuangkan kuah soto panas ke dalam mangkok.',
        'Sajikan rujak soto dengan bumbu taburan dan sambal.',
      ],
      description: "Rujak Soto adalah hidangan unik yang menggabungkan cita rasa segar dari rujak dan kehangatan kuah soto. Dalam hidangan ini, potongan tahu, tempe, sayuran, dan buah-buahan segar seperti ketimun, kol, tomat, mangga muda, dan nanas disajikan dalam kuah soto yang kaya rempah. Kuah soto yang gurih dan segar dipadukan dengan rasa asam dan manis dari buah-buahan serta kelezatan dari tahu dan tempe. Rujak Soto cocok dinikmati sebagai hidangan penutup yang menyegarkan atau sebagai hidangan utama yang menggugah selera."
    ),


    Recipe(
      'Lontong Balap',
      'assets/LontongBalap.jpeg',
      4,
      [
        Ingredient(400, 'gram', ' Lontong'),
        Ingredient(200, 'gram', ' Tauge'),
        Ingredient(100, 'gram', ' Kacang tanah goreng'),
        Ingredient(2, 'batang', ' Daun seledri'),
        Ingredient(2, 'batang', ' Daun bawang'),
        Ingredient(2, 'buah', ' Telur rebus'),
        Ingredient(4, 'buah', ' Kerupuk udang'),
        Ingredient(2, 'sachet', ' Kecap manis'),
        Ingredient(2, 'sendok', ' Sambal'),
      ],
      [
        'Didihkan air dalam panci, masukkan lontong ke dalam air mendidih dan biarkan sebentar hingga hangat.',
        'Sajikan lontong dalam mangkuk, tambahkan tauge, kacang tanah goreng, daun seledri, dan daun bawang di atas lontong.',
        'Letakkan potongan telur rebus di atasnya, tambahkan kerupuk udang di sampingnya.',
        'Tambahkan kecap manis dan sambal sesuai selera.',
        'Lontong balap siap disajikan, nikmati selagi hangat!',
      ],
      description:
          "Lontong Balap adalah hidangan khas dari Surabaya, Jawa Timur, yang terkenal dengan cita rasa yang khas dan kelezatannya. Hidangan ini terdiri dari lontong (nasi ketan yang dibungkus dalam daun pisang), tauge, kacang tanah goreng, daun seledri, daun bawang, telur rebus, dan kerupuk udang. Semua bahan disajikan dalam satu mangkuk dan disiram dengan kecap manis serta disertai dengan sambal untuk memberikan rasa pedas yang nikmat. Lontong Balap adalah hidangan yang lezat dan cocok dinikmati kapan saja, baik sebagai sarapan, makan siang, atau makan malam."
    ),
   
    Recipe(
      'Lontong Kupang', 
      'assets/LontongKupang.jpeg',
      4,
      [
        Ingredient(500, 'gram', 'Kupang (kerang kecil)'),
        Ingredient(300, 'gram', 'Beras'),
        Ingredient(1, 'batang', 'Serai, memarkan'),
        Ingredient(2, 'lembar', 'Daun salam'),
        Ingredient(2, 'lembar', 'Daun jeruk'),
        Ingredient(1, 'ruas', 'Jahe, memarkan'),
        Ingredient(2, 'lembar', 'Daun pisang, untuk membungkus'),
        Ingredient(100, 'gram', 'Kecambah'),
        Ingredient(4, 'buah', 'Cabe rawit, iris tipis'),
        Ingredient(2, 'batang', 'Daun bawang, iris tipis'),
        Ingredient(2, 'batang', 'Seledri, iris tipis'),
        Ingredient(2, 'sendok makan', 'Kecap manis'),
        Ingredient(2, 'sendok makan', 'Bawang goreng, untuk taburan'),
        Ingredient(1, 'sendok teh', 'Garam'),
        Ingredient(1/2, 'sendok teh', 'Merica bubuk'),
      ],
      [
        'Cuci bersih kupang dan rebus hingga matang. Tiriskan dan sisihkan.',
        'Cuci beras hingga bersih, masukkan ke dalam panci bersama air secukupnya, serai, daun salam, daun jeruk, dan jahe. Masak hingga menjadi nasi.',
        'Bungkus lontong dengan daun pisang. Masukkan nasi ke dalam daun pisang, lalu kukus hingga matang.',
        'Siapkan bahan pelengkap: kecambah, cabai rawit, daun bawang, seledri.',
        'Sajikan lontong dengan kuah kupang, beri bahan pelengkap, taburi bawang goreng, dan teteskan kecap manis.',
      ],
      description: "Lontong Kupang adalah hidangan khas dari Kupang, Nusa Tenggara Timur, yang terdiri dari kupang (kerang kecil) yang direbus dengan bumbu rempah, disajikan dengan lontong dan kuahnya yang gurih. Hidangan ini biasanya disajikan dengan pelengkap seperti kecambah, cabai rawit, daun bawang, dan seledri. Rasakan sensasi kelezatan Lontong Kupang yang nikmat dan kaya rasa dalam setiap suapannya!"
    ),

    Recipe(
      'Pecel Semanggi', 
      'assets/PecelSemanggi.jpeg',
      4,
      [
        Ingredient(2, 'Gelas', ' Semanggi'),
        Ingredient(1, 'Genggam', ' Kacang tanah'),
        Ingredient(3, 'Siung', ' Bawang putih'),
        Ingredient(5, 'Buah', ' Cabai merah keriting'),
        Ingredient(3, 'Buah', ' Cabai rawit merah'),
        Ingredient(2, 'SDM', ' Gula merah'),
        Ingredient(1, 'SDT', ' Terasi bakar'),
        Ingredient(2, 'SDM', ' Air jeruk nipis'),
        Ingredient(1/2, 'SDT', ' Garam'),
        Ingredient(1, 'SDM', ' Air'),
        Ingredient(2, 'SDM', ' Minyak goreng'),
        Ingredient(1/2, 'Genggam', ' Kerupuk'),
        Ingredient(1/2, 'Genggam', ' Emping'),
        Ingredient(1, 'Batang', ' Serai, memarkan'),
        Ingredient(2, 'Lembar', ' Daun salam'),
        Ingredient(2, 'Lembar', ' Daun jeruk'),
      ],
      [
        'Rebus semanggi hingga empuk, angkat dan tiriskan.',
        'Haluskan kacang tanah, bawang putih, cabai merah keriting, cabai rawit merah, gula merah, terasi bakar, dan air jeruk nipis.',
        'Panaskan minyak, tumis bumbu halus hingga harum.',
        'Tambahkan serai, daun salam, dan daun jeruk. Aduk rata.',
        'Tuangkan air, aduk hingga bumbu meresap.',
        'Sajikan semanggi dengan bumbu, kerupuk, dan emping.',
      ],
      description: "Pecel Semanggi adalah salah satu makanan khas Indonesia yang terbuat dari daun semanggi yang direbus dan disajikan dengan bumbu kacang yang khas. Pecel Semanggi biasanya disajikan dengan tambahan kerupuk dan emping sebagai pelengkap. Hidangan ini memiliki cita rasa yang gurih dan pedas, sangat cocok dinikmati sebagai camilan atau hidangan utama."
    ),

    Recipe(
      'Pecel Tumpang',
      'assets/PecelTumpang.jpeg',
      4,
      [
        Ingredient(300, 'gram', 'Kacang tanah'),
        Ingredient(1, 'batang', 'Serai'),
        Ingredient(3, 'buah', 'Cabe merah besar'),
        Ingredient(5, 'buah', 'Cabe rawit'),
        Ingredient(6, 'siung', 'Bawang putih'),
        Ingredient(4, 'buah', 'Kemiri'),
        Ingredient(2, 'cm', 'Kunyit'),
        Ingredient(3, 'cm', 'Kencur'),
        Ingredient(2, 'buah', 'Tomat'),
        Ingredient(4, 'buah', 'Kecambah'),
        Ingredient(1, 'ikat', 'Kangkung'),
        Ingredient(1, 'ikat', 'Daun singkong'),
        Ingredient(1, 'ikat', 'Daun kemangi'),
        Ingredient(2, 'sendok makan', 'Gula merah, sisir'),
        Ingredient(2, 'sendok makan', 'Asam jawa, larutkan dalam sedikit air'),
        Ingredient(2, 'sendok makan', 'Garam'),
        Ingredient(2, 'sendok makan', 'Air matang'),
      ],
      [
        'Panggang kacang tanah hingga matang, kemudian kupas kulitnya.',
        'Haluskan cabe merah besar, cabe rawit, bawang putih, kemiri, kunyit, kencur, dan tomat. Tumis bumbu halus hingga harum.',
        'Tambahkan air matang, serai yang dimemarkan, daun jeruk, daun salam, gula merah sisir, garam, dan air asam. Masak hingga mendidih.',
        'Tambahkan kacang tanah yang telah dihaluskan ke dalam kuah, aduk rata dan masak sebentar.',
        'Rebus kangkung, daun singkong, dan daun kemangi hingga layu.',
        'Sajikan pecel tumpang dengan nasi dan bumbu kacang, lengkap dengan sayuran yang telah direbus.',
      ],
      description: "Pecel Tumpang adalah hidangan khas dari Jawa Tengah yang terkenal dengan bumbu kacangnya yang gurih dan sedikit pedas. Hidangan ini terdiri dari kacang tanah yang dihaluskan, disiram dengan bumbu kacang, dan disajikan dengan sayuran rebus seperti kangkung, daun singkong, dan daun kemangi. Rasakan kelezatan cita rasa tradisional Jawa Tengah dalam setiap suapan Pecel Tumpang ini!"
    ),

    Recipe(
      'Tahu Tek',
      'assets/TahuTek.jpeg',
      4,
      [
        Ingredient(4, 'buah', 'Tahu'),
        Ingredient(200, 'gram', 'Kecap manis'),
        Ingredient(4, 'sendok makan', 'Air'),
        Ingredient(2, 'buah', 'Telur, rebus'),
        Ingredient(100, 'gram', 'Kol, iris tipis'),
        Ingredient(100, 'gram', 'Taoge'),
        Ingredient(2, 'batang', 'Seledri, iris halus'),
        Ingredient(2, 'buah', 'Timun, iris halus'),
        Ingredient(2, 'buah', 'Kentang, rebus, potong dadu'),
        Ingredient(4, 'sendok makan', 'Bawang goreng'),
        Ingredient(4, 'sendok makan', 'Kacang tanah goreng'),
      ],
      [
        'Potong tahu menjadi dua bagian tipis.',
        'Goreng tahu hingga kecokelatan. Angkat dan tiriskan.',
        'Campur kecap manis dengan air. Didihkan di panci.',
        'Atur tahu, telur rebus, kol, taoge, seledri, timun, dan kentang di atas piring.',
        'Siram dengan campuran kecap manis tadi.',
        'Taburkan bawang goreng dan kacang tanah goreng di atasnya.',
      ],
      description: "Tahu Tek adalah hidangan khas Surabaya yang terdiri dari tahu goreng, telur rebus, sayuran segar seperti kol, taoge, dan timun, serta disiram dengan campuran kecap manis. Hidangan ini sering dihidangkan bersama dengan bawang goreng dan kacang tanah goreng sebagai topping. Rasakan sensasi rasa manis, gurih, dan segar dalam setiap suapan Tahu Tek yang lezat ini!"
    ),

    Recipe(
      'Tahu Campur',
      'assets/TahuCampur.jpeg',
      4,
      [
        Ingredient(4, 'buah', ' Tahu putih'),
        Ingredient(200, 'gram', ' Tepung beras'),
        Ingredient(2, 'buah', ' Telur ayam'),
        Ingredient(2, 'batang', ' Daun bawang, iris halus'),
        Ingredient(2, 'siung', ' Bawang putih, haluskan'),
        Ingredient(1, 'sdt', ' Ketumbar bubuk'),
        Ingredient(1/2, 'sdt', ' Merica bubuk'),
        Ingredient(1/2, 'sdt', ' Garam'),
        Ingredient(1/2, 'sdt', ' Gula'),
        Ingredient(1, 'tangkai', ' Daun seledri, iris halus'),
        Ingredient(300, 'ml', ' Air'),
        Ingredient(500, 'ml', ' Minyak untuk menggoreng'),
        Ingredient(1, 'batang', ' Seledri, iris halus untuk taburan'),
        Ingredient(1, 'buah', ' Jeruk nipis, potong-potong'),
      ],
      [
        'Potong-potong tahu bentuk dadu.',
        'Siapkan bahan adonan: campur tepung beras, telur, daun bawang, bawang putih, ketumbar bubuk, merica bubuk, garam, gula, daun seledri, dan air, aduk hingga rata.',
        'Panaskan minyak dalam wajan dengan api sedang.',
        'Celupkan tahu ke dalam adonan tepung beras hingga rata.',
        'Goreng tahu dalam minyak panas hingga keemasan dan matang.',
        'Angkat tahu dan tiriskan.',
        'Sajikan tahu goreng dengan taburan daun seledri dan irisan jeruk nipis.',
      ],
      description: "Tahu Campur adalah hidangan tradisional Indonesia yang terdiri dari tahu goreng yang disajikan dengan adonan tepung beras yang gurih dan bumbu-bumbu rempah yang khas. Hidangan ini sering disajikan sebagai camilan atau hidangan pendamping lainnya. Rasakan kelezatan tahu yang renyah dilapisi dengan adonan bumbu yang meresap, disajikan dengan sentuhan segar daun seledri dan jeruk nipis yang menyegarkan."
    ),

    Recipe(
      'Sate Madura',
      'assets/SateMadura.jpeg',
      4,
      [
        Ingredient(500, 'gram', 'Daging sapi'),
        Ingredient(1, 'sendok makan', 'Minyak goreng'),
        Ingredient(1, 'sendok makan', 'Kecap manis'),
        Ingredient(1, 'sendok teh', 'Garam'),
        Ingredient(1, 'sendok teh', 'Merica bubuk'),
        Ingredient(1, 'sendok teh', 'Ketumbar bubuk'),
        Ingredient(1, 'sendok teh', 'Bubuk kunyit'),
        Ingredient(1, 'sendok makan', 'Air asam jawa'),
      ],
      [
        'Potong daging sapi menjadi dadu kecil.',
        'Campurkan daging sapi dengan minyak goreng, kecap manis, garam, merica bubuk, ketumbar bubuk, bubuk kunyit, dan air asam jawa. Aduk rata dan diamkan selama 1-2 jam untuk marinasi.',
        'Tusukkan potongan daging yang telah dimarinasi ke tusukan sate, sisakan sedikit ruang di bagian bawah sate untuk pegangan.',
        'Panggang sate di atas bara api atau panggangan dengan api sedang sampai matang dan berwarna kecoklatan, sambil sesekali diolesi dengan sisa bumbu marinasi.',
        'Angkat sate Madura dari panggangan dan sajikan dengan bumbu kacang dan lontong atau nasi putih.'
      ],
      description: "Sate Madura adalah hidangan khas dari Pulau Madura, Jawa Timur, yang terkenal dengan cita rasa rempah-rempahnya yang khas dan daging sapi yang empuk. Potongan daging sapi dimarinasi dengan campuran kecap manis, bumbu rempah, dan air asam jawa untuk memberikan rasa yang khas dan nikmat. Setelah dimarinasi, potongan daging tersebut ditusuk dan dipanggang hingga matang dan berwarna kecoklatan. Sate Madura biasanya disajikan dengan bumbu kacang, lontong atau nasi putih sebagai pelengkapnya. Rasakan kenikmatan cita rasa khas Pulau Madura dalam setiap suapan sate Madura ini!"
    ),

     Recipe(
      'Nasi Tempong',
      'assets/NasiTempong.jpeg',
      2,
      [
        Ingredient(2, 'cup', ' Nasi'),
        Ingredient(150, 'gram', ' Ayam goreng'),
        Ingredient(2, 'buah', ' Cabai rawit'),
        Ingredient(3, 'buah', ' Cabai merah'),
        Ingredient(5, 'buah', ' Cabai hijau'),
        Ingredient(4, 'siung', ' Bawang merah'),
        Ingredient(3, 'siung', ' Bawang putih'),
        Ingredient(1, 'batang', ' Serai'),
        Ingredient(2, 'lembar', ' Daun jeruk'),
        Ingredient(2, 'lembar', ' Daun salam'),
        Ingredient(1, 'batang', ' Sereh'),
        Ingredient(1/2, 'sendok makan', ' Garam'),
        Ingredient(1/2, 'sendok makan', ' Gula merah'),
        Ingredient(2, 'sendok makan', ' Minyak goreng')
      ],
      [
        'Haluskan cabai rawit, cabai merah, cabai hijau, bawang merah, bawang putih, sereh, garam, dan gula merah.',
        'Tumis bumbu halus hingga harum.',
        'Masukkan daun jeruk, daun salam, dan serai. Aduk hingga layu.',
        'Masukkan ayam goreng, aduk rata dengan bumbu.',
        'Tambahkan nasi, aduk hingga rata dan tercampur dengan bumbu.',
        'Sajikan nasi tempong panas dengan pelengkap lainnya seperti sayuran mentah, irisan timun, atau telur ceplok.'
      ],
      description: "Nasi Tempong adalah hidangan khas dari Jawa Tengah yang terkenal dengan kepedasannya yang menggugah selera. Hidangan ini terdiri dari nasi putih yang disajikan dengan ayam goreng dan sambal pedas yang menggoda selera. Sambalnya terbuat dari cabai rawit, cabai merah, cabai hijau, dan bumbu rempah lainnya yang dihaluskan dan ditumis dengan minyak goreng. Rasakan sensasi pedas yang nikmat dan kenikmatan cita rasa rempahnya dalam setiap suapan nasi tempong ini!"
    ),

    Recipe(
      'Nasi Krawu', 
      'assets/NasiKrawu.jpeg',
      4,
      [
        Ingredient(500, 'gram', ' Daging sapi (bagian sengkel)'),
        Ingredient(2, 'liter', ' Air'),
        Ingredient(4, 'lembar', ' Daun salam'),
        Ingredient(3, 'lembar', ' Daun jeruk'),
        Ingredient(3, 'batang', ' Serai, memarkan'),
        Ingredient(3, 'cm', ' Lengkuas, memarkan'),
        Ingredient(5, 'buah', ' Cabe merah besar'),
        Ingredient(10, 'buah', ' Cabe rawit'),
        Ingredient(10, 'siung', ' Bawang merah'),
        Ingredient(6, 'siung', ' Bawang putih'),
        Ingredient(1, 'sendok teh', ' Ketumbar'),
        Ingredient(1, 'sendok teh', ' Jinten'),
        Ingredient(1/2, 'sendok teh', ' Merica'),
        Ingredient(1/2, 'sendok teh', ' Pala'),
        Ingredient(1, 'batang', ' Sereh, memarkan'),
        Ingredient(4, 'sendok makan', ' Minyak goreng'),
        Ingredient(600, 'gram', ' Nasi putih'),
        Ingredient(4, 'buah', ' Telur, rebus'),
        Ingredient(2, 'batang', ' Daun bawang, iris halus'),
        Ingredient(4, 'sendok makan', ' Kerupuk, goreng'),
        Ingredient(4, 'sendok makan', ' Bawang goreng'),
        Ingredient(4, 'sendok makan', ' Sambal'),
      ],
      [
        'Rebus daging sapi dengan air hingga empuk dan kuah menyusut.',
        'Tumis bumbu halus hingga harum dan matang.',
        'Masukkan daun salam, daun jeruk, serai, lengkuas, dan cabe merah besar. Aduk rata dan tumis hingga layu.',
        'Tambahkan daging sapi yang telah direbus, aduk hingga bumbu meresap.',
        'Sajikan nasi krawu bersama telur rebus, irisan daun bawang, kerupuk, bawang goreng, dan sambal.',
      ],
      description: "Nasi Krawu adalah hidangan khas dari Surabaya, Jawa Timur, yang terkenal dengan cita rasa rempah yang kaya dan daging sapi yang empuk. Hidangan ini disajikan dengan nasi putih, telur rebus, irisan daun bawang, kerupuk, dan bawang goreng sebagai pelengkap. Sajian khas ini juga sering disertai dengan sambal untuk memberikan rasa pedas yang nikmat. Nasi Krawu adalah pilihan yang sempurna untuk dinikmati saat makan siang atau malam, memberikan pengalaman kuliner yang autentik dari Jawa Timur."
    ),

    Recipe(
      'Bandeng Asap',
      'assets/BandengAsap.jpg',
      4,
      [
        Ingredient(4, 'buah', 'Ikan Bandeng segar'),
        Ingredient(2, 'sdt', 'Garam'),
        Ingredient(1, 'sdt', 'Gula pasir'),
        Ingredient(1, 'sdt', 'Merica bubuk'),
        Ingredient(2, 'sdm', 'Kecap manis'),
        Ingredient(2, 'buah', 'Jeruk nipis (peras airnya)'),
        Ingredient(2, 'sdm', 'Minyak goreng'),
        Ingredient(2, 'buah', 'Teh celup (opsional, untuk memberikan aroma)'),
      ],
      [
        'Bersihkan ikan bandeng dan belah dua, bersihkan bagian dalamnya.',
        'Campur garam, gula, merica, kecap manis, dan air perasan jeruk nipis. Aduk rata dan lumuri ikan dengan campuran ini. Diamkan selama 30 menit hingga bumbu meresap.',
        'Panaskan grill atau alat pemanggang, olesi dengan minyak goreng.',
        'Letakkan ikan di atas panggangan, panggang dengan api kecil hingga matang dan beraroma asap, sekitar 30-40 menit. Sambil sesekali diolesi sisa bumbu.',
        'Setelah matang, angkat dan sajikan dengan nasi hangat dan sambal.',
      ],
      description: "Bandeng Asap adalah hidangan ikan panggang khas Indonesia yang memiliki cita rasa gurih dan asap yang lezat. Ikan bandeng segar dibumbui dengan campuran garam, gula, merica, kecap manis, dan perasan jeruk nipis untuk memberikan rasa yang khas. Kemudian ikan dipanggang dengan api kecil hingga matang dan beraroma asap. Hidangan ini sangat cocok disajikan sebagai hidangan utama bersama nasi hangat dan sambal. Rasakan kelezatan dan aroma harum ikan panggang ala Bandeng Asap yang menggugah selera ini!"
    ),
  ];
}

class Ingredient{
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
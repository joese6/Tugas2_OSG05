import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleText = Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        'Logo HUT Kemerdekaan ke-74 RI',
        textAlign: TextAlign.center,
        maxLines: 1,
        style: TextStyle(
          color: Colors.brown,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    Widget detailText = Container(
      color: Colors.green,
      padding: const EdgeInsets.all(10),
      child: Text(
        'Kementerian Sekretariat Negara merilis gambar logo untuk peringatan Hari Ulang Tahun Kemerdekaan ke-74 Republik Indonesia dengan tema besar -Menuju Indonesia Unggul-.\n\nMenteri Sekretaris Negara Pratikno telah menandatangani surat No. B 681 /M Sesneg/Set/TU 00 04/06/2019 tentang Penyampaian Tema dan Logo Peringatan Hari Kemerdekaan Tahun 2019 yang disampaikan ke pimpinan lembaga negara dan institusi. Surat diterbitkan pada Senin (24/6/2019).\n\nDalam surat tersebut, Pratikono menyampaikan bahwa tema dan logo peringata HUT Kemerdekaan ke-74 RI dapat diunduh melaui situs resmi Sekretariat Negara.\n\nMensesneg juga mengimbau kepada pimpinan lemnbaga, institusi pemerintahan, institusi swasta, para kepala daerah, dan pihak terkait lainnya untuk ikut melakukan sosialisasi tema dan logo menyambut HUT RI tersebut.\n\nUntuk menyemarakan HUT Kemerdekaan ke-74 RI, pihaknya meminta masyarakat untuk mengibarkan Bendera Merah Putih serentak di lingkungan instansi mulai 1 Agustus hingga 31 Agustus 2019.\n\nSelain itu, pemerintah mengimbau partisipasi masyarakat dengan memasang umbul-umbul, dekorasi, dan hiasan lainnya yang sejalan dengan tema HUT Kemerdekaan ke-74 RI.',
      ),
    );

    Widget iconSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.black, Icons.favorite, '550'),
          _buildButtonColumn(Colors.black, Icons.favorite_border, '450'),
          _buildButtonColumn(Colors.black, Icons.save, '300'),
          _buildButtonColumn(Colors.black, Icons.delete, '100'),
          _buildButtonColumn(Colors.black, Icons.add_box, '150'),
        ],
      ),
    );

    Widget iconStar = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_half),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
          Text('1000 vote'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Tugas 2',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.school),
            title: Text('Tugas 2 - OSG05'),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'images/hutri74.jpg',
                  fit: BoxFit.cover,
                ),
                titleText,
                detailText,
                iconStar,
                iconSection,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

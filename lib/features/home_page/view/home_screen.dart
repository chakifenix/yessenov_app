import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yessenov_app/features/autorization_info/view/autorization_page.dart';

class HomeScreen extends StatelessWidget {
  List title = ['Авторизация', 'Аутентификация'];
  List content = [
    'Пайдаланушының жүйенің белгілі бір ресурстарына немесе функцияларына қол жеткізу құқығын тексеру процесі',
    'Пайдаланушының жеке басын растау үшін логин мен пароль сияқты тіркелгі деректерінің түпнұсқалығын тексеру процесі.'
  ];

  List topic = ['Аутентифицакия', 'Авторизация'];
  List titleCard = [
    'Екі факторлы аутентификация',
    'Рөлдік авторизация (role based authorization)'
  ];
  List contentCard = [
    'Екі факторлы аутентификация (2FA)-бұл кіру үшін құпия сөзді ғана емес, сонымен қатар бір реттік код, Биометрия немесе физикалық құрылғы (мысалы, USB кілті) сияқты қосымша растау факторын қажет ететін есептік жазбаны қорғау әдісі. Қауіпсіздіктің бұл қосымша қабаты, егер шабуылдаушы парольге қол жеткізе алса да, есептік жазбаны бұзуды едәуір қиындатады. 2FA құпия сөздің ағып кетуінен қорғау және құпия ақпаратты қорғауды қамтамасыз ету арқылы қауіпсіздікті жақсартады. Көптеген онлайн қызметтер бұл мүмкіндікті есептік жазбаның қауіпсіздік параметрлерінде қолдайды.',
    'Пайдаланушылардың жүйедегі рөлдеріне негізделген қол жеткізу құқықтарын анықтау әдісі. Әрбір рөл пайдаланушының жүйеде қандай әрекеттерді орындай алатынын анықтайтын рұқсаттар жиынтығына сәйкес келеді. Пайдаланушылар бір немесе бірнеше рөлдерге тағайындалады және олардың кіру құқықтары осы рөлдер негізінде анықталады. Мысалы, әдеттегі жүйеде "әкімші", "менеджер", "пайдаланушы" және т.б. рөлдері болуы мүмкін, олардың әрқайсысының өзіндік рұқсаттары бар. Рөлдік авторизация қол жеткізу құқықтарын басқаруды жеңілдетеді және жаңа пайдаланушыларды қосу немесе қол жеткізу құқықтарын өзгерту кезінде икемділікті қамтамасыз етеді, өйткені рөлдік өзгерістер автоматты түрде сол рөлдерге тағайындалған барлық пайдаланушыларға таралады.'
  ];
  List image = ['images/img1.png', 'images/img2.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Color(0xFF246BFD),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: Column(
              children: [
                SizedBox(
                  height: 56,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('images/notification.png'),
                    Text(
                      'Қош келдіңіз Мақсым!',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
                CupertinoTextField(
                  placeholder: 'Поиск',
                  suffix: Row(
                    children: [
                      SvgPicture.asset('images/search.svg'),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Жоба туралы',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Мобильді құрылғылар күнделікті өмірдің ажырамас бөлігіне айналған қазіргі ақпараттық қоғамда ақпараттық қауіпсіздік және пайдаланушылардың жеке деректерін қорғау мәселелері барған сайын өзекті және өзекті бола түсуде. Технологияның дамуымен және мобильді қосымшалардың мүмкіндіктерінің кеңеюімен киберқауіпсіздік қатерлері де артып келеді және мобильді қызметтердегі авторизация жүйелері қауіпсіздік пен қол жетімділікті басқарудың басты нүктесіне айналуда.',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 249,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AutorizationInfo(
                                topic: topic[index],
                                title: titleCard[index],
                                content: contentCard[index],
                                image: image[index])));
                  },
                  child: ContentCard(
                    title: title[index],
                    content: content[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFFE1E1E1))),
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 144, child: Image.asset('images/Frame.png')),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle()),
                Text(
                  content,
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

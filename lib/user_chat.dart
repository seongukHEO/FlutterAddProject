import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_2/screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class UserChat extends StatelessWidget {
  const UserChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DM", style: GoogleFonts.lobsterTwo(fontSize: 32),),
      ),
      body: DmList(),
    );
  }
}

class DmData{
  final String sendUser;
  final String sendContent;

  DmData({required this.sendUser, required this.sendContent});
}

//더미 데이터
final DmDataList = [
  DmData(sendUser: "허성욱 : ", sendContent: "하,,,,,졸리다ㅠㅠㅠㅠ"),
  DmData(sendUser: "곎공쥬 : ", sendContent: "내 부대찌게ㅜㅜㅜ"),
  DmData(sendUser: "김계림 : ", sendContent: "알바 가기 실타,,,,"),
  DmData(sendUser: "허성욱 : ", sendContent: "공쥬 미안해ㅜㅜㅜㅜ"),
  DmData(sendUser: "페페 : ", sendContent: "멍멍멍,, 멍멍멍"),
  DmData(sendUser: "자반씌 : ", sendContent: "하,,,이 새끼 또 간식가지고 장난치네;;;;"),
  DmData(sendUser: "참새 : ", sendContent: "하,,,고양이새끼;;;;"),
  DmData(sendUser: "페페 : ", sendContent: "내 최애 음식은 고구마여~"),
  DmData(sendUser: "페페 : ", sendContent: "방석은 언니 몰래 써야지~"),
  DmData(sendUser: "콩자반 : ", sendContent: "똥은 언제나 맛있지~~"),
  DmData(sendUser: "허성욱 : ", sendContent: "알바 언제 끝나냐,,,,"),
  DmData(sendUser: "계림 공쥬 : ", sendContent: "텅욱 우리 진차 일본가?!"),
  DmData(sendUser: "페페 : ", sendContent: "방석은 언니 몰래 써야지~"),
  DmData(sendUser: "콩자반 : ", sendContent: "똥은 언제나 맛있지~~"),
  DmData(sendUser: "허성욱 : ", sendContent: "알바 언제 끝나냐,,,,"),
  DmData(sendUser: "계림 공쥬 : ", sendContent: "텅욱 우리 진차 일본가?!"),
  DmData(sendUser: "페페 : ", sendContent: "방석은 언니 몰래 써야지~"),
  DmData(sendUser: "콩자반 : ", sendContent: "똥은 언제나 맛있지~~"),
  DmData(sendUser: "허성욱 : ", sendContent: "알바 언제 끝나냐,,,,"),
  DmData(sendUser: "계림 공쥬 : ", sendContent: "텅욱 우리 진차 일본가?!"),

];

class DmList extends StatelessWidget {
  const DmList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: DmDataList.length,
        itemBuilder: (c, i) {
         return DmBody(dmData: DmDataList[i]);
        }
    );
  }
}



class DmBody extends StatelessWidget {

  final DmData dmData;

  const DmBody({required this.dmData ,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Row(
                children: [
                  Container(
                    height: 40, width: 40, decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey
                  ),
                  ),
                  SizedBox(width: 8,),
                  Text(dmData.sendUser, style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              Text(dmData.sendContent, style: TextStyle(fontWeight: FontWeight.w100),)
            ],
          ),
        )
      ],
    );
  }
}

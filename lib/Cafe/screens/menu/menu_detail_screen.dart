import 'package:flutter/material.dart';
import 'package:recipe_sample/Cafe/models/coffee.dart';

class MenuDetailScreen extends StatefulWidget {
  const MenuDetailScreen({super.key,required this.item});
  final Coffee item;
  @override
  State<MenuDetailScreen> createState() => _MenuDetailScreenState();
}

class _MenuDetailScreenState extends State<MenuDetailScreen> {
  String? choice='hot';
  @override
  Widget build(BuildContext context) {
    Coffee thisCoffee=widget.item;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '커피&음료',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.grey,
        ),
      ),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(40.0),

          child: Column(

            children: [
              ClipRRect(
                borderRadius:BorderRadius.circular(16.0),
                child:Image.asset(
                  choice=='hot'?"${thisCoffee.imageUrl}":"${thisCoffee.imageUrl2}",
                ),
              ),
              Text("${thisCoffee.title}",
              style: Theme.of(context).textTheme.titleLarge,),
              Text(
                "${thisCoffee.price} 원",
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],

          ),),
          Divider(

          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "온도",style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChoiceChip(label: SizedBox(
                width: 140,
                child: Text('핫',textAlign: TextAlign.center,),
              ),
                  selected: choice=='hot',
              onSelected: (selected){
                  setState(() {
                    choice='hot';
                  });
              },
              selectedColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(
                  color: choice=='hot'?Colors.black:Colors.grey
                ),
              ),
              ),
              ChoiceChip(label: SizedBox(
                width: 140,
                child: Text('아이스',textAlign: TextAlign.center,),
              ),
                selected: choice=='ice',
                onSelected: (selected){
                  choice='ice';

                },
              selectedColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(
                  color: choice=='ice'?Colors.black:Colors.grey
                )
              ),),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 60,
              color: Colors.red,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '${thisCoffee.price}원',
                  style: TextStyle(color: Colors.white,fontSize: 18),
                ),
              ),
            ),
            TextButton(
                child: Text(
                  '주문하기',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22
                  ),
                ),
              onPressed: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text('${thisCoffee.title}'),
                          content: Text('${thisCoffee.price}원입니다.'),
                          actions: <Widget>[
                            TextButton(
                                onPressed: ()=>Navigator.pop(context,'Cancle'),
                                child: const Text('취소')),
                            TextButton(
                                onPressed: ()=>Navigator.pop(context,'Ok'),
                                child: const Text('확인'))
                          ],
                        );
                      });
              },)
          ],
        ),
      ),
    );
  }
}

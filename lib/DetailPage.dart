// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MangaModel.dart';

var informationTextStyle = const TextStyle(
  fontFamily: 'opensans',
  fontWeight: FontWeight.bold,
  fontSize: 16.0
);
var secondTitleTextStyle = const TextStyle(
  fontFamily: 'opensans',
  fontWeight: FontWeight.normal,
  fontSize: 10.0
);
var titleTextStyle = const TextStyle(
  fontFamily: 'opensans',
  fontWeight: FontWeight.bold,
  fontSize: 24.0
);

class DetailPage extends StatelessWidget{
  final Manga manga;

  const DetailPage({Key? key, required this.manga}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < 900) {
        return DetailSmallMobile(manga: manga);
      // } else if (constraints.maxWidth < 900) {
      //   return DetailMobile(manga: manga);
      } else {
        return DetailWeb(manga: manga);
      }
    }));
  }
}

class DetailWeb extends StatelessWidget {
  final Manga manga;
  const DetailWeb({
    Key? key,
    required this.manga,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(43, 122, 11, 100),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
          child: Center(
            child: SizedBox(
              width: 1000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    manga.title,
                    style: TextStyle(
                      fontFamily: 'opensans',
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 32,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(manga.coverImage),
                      ),
                      SizedBox(width: 16.0,),
                      Expanded(
                        child: Column(
                          children: [
                            Card(
                              child: Padding(padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Text('Information', style: titleTextStyle,),
                                    const Divider(color: Colors.grey, height: 30,),
                                    Row(
                                    children: [
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Text("Title :", style: secondTitleTextStyle,),
                                              Text(manga.title, style: informationTextStyle,),
                                              Text("Author :", style: secondTitleTextStyle,),
                                              Text(manga.author, style: informationTextStyle,),
                                              Text("Status :", style: secondTitleTextStyle,),
                                              Text(manga.status, style: informationTextStyle,),
                                              Text("Category :", style: secondTitleTextStyle,),
                                              SizedBox(height: 4.0,),
                                              Wrap(
                                                crossAxisAlignment: WrapCrossAlignment.center,
                                                runAlignment: WrapAlignment.center,
                                                spacing: 8.0,
                                                runSpacing: 8.0,
                                                children: manga.category.map((category){
                                                  return Chip(
                                                    label: Text(category, style: informationTextStyle,),
                                                  );
                                                }).toList(),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.star_rate, 
                                                size: 50.0,
                                                color: Color.fromARGB(255, 207, 204, 0),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 4.0),
                                                child: Text(
                                                  manga.rating.toString(),
                                                  style: const TextStyle(
                                                    fontFamily: 'opensans',
                                                    fontSize: 48.0,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              )
                                            ],
                                          )
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ),
                            ),
                            Card(
                              child: Padding(padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Text('Synopsis', style: titleTextStyle,),
                                    const Divider(color: Colors.grey, height: 30,),
                                    Text(manga.synopsis, style: informationTextStyle,),
                                  ],
                                )
                              ),
                            )
                          ],
                        )
                      )
                    ],
                  ),
                ]
              )
            ),
          ),
        ),
      )
    );
  }
  
}

class DetailSmallMobile extends StatelessWidget {
  final Manga manga;

  const DetailSmallMobile({
    Key? key,
    required this.manga,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(manga.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Padding(padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {
                      showDialog(context: context, builder: (_) =>
                        Dialog(
                          child: Container(
                            width: 200,
                            height: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage(manga.coverImage),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                      );
                    },
                  child: Image.asset(manga.coverImage, fit: BoxFit.cover, height: 300,),
                ),
                )
              ),
              Card(
                child: Padding(padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Information', style: titleTextStyle,),
                      const Divider(color: Colors.grey, height: 30,),
                      Text("Title :", style: secondTitleTextStyle,),
                      Text(manga.title, style: informationTextStyle,),
                      Text("Author :", style: secondTitleTextStyle,),
                      Text(manga.author, style: informationTextStyle,),
                      Text("Status :", style: secondTitleTextStyle,),
                      Text(manga.status, style: informationTextStyle,),
                      Text("Category :", style: secondTitleTextStyle,),
                      SizedBox(height: 4.0,),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.center,
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: manga.category.map((category){
                          return Chip(
                            label: Text(category, style: informationTextStyle,),
                          );
                        }).toList(),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star_rate, 
                            size: 50.0,
                            color: Color.fromARGB(255, 207, 204, 0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              manga.rating.toString(),
                              style: const TextStyle(
                                fontFamily: 'opensans',
                                fontSize: 48.0,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ),
              ),
              Card(
                child: Padding(padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text('Synopsis', style: titleTextStyle,),
                      const Divider(color: Colors.grey, height: 30,),
                      Text(manga.synopsis, style: informationTextStyle,),
                    ],
                  )
                ),
              ) 
            ],
          ),
        )
      ),
    );
  }
}
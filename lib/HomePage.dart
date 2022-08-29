import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangaingfo/DetailPage.dart';
import 'package:mangaingfo/MangaModel.dart';

class HomePage extends StatelessWidget {
  final accountName;
  const HomePage({Key? key,required this.accountName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MangaIngfo'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Welcome ${accountName}!',
                        style: TextStyle(
                          fontFamily: 'opensans',
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      Text(
                        'Here are some Top Mangas for you!',
                        style: TextStyle(
                          fontFamily: 'opensans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal
                        )
                      ),
                    ],
                  ),
                ),
              )
            ),
            Expanded(child: 
              LayoutBuilder(builder: (context, constraints){
                if (constraints.maxWidth<=600) {
                  return MangaGrid(gridCount: 2,);
                } else if (constraints.maxWidth<=900){
                  return MangaGrid(gridCount: 3,);
                } else if (constraints.maxWidth<=1200){
                  return MangaGrid(gridCount: 4,);
                }else {
                  return MangaGrid(gridCount: 5);
                }
              }),
            )
          ],
        )
    );
  }
}

class MangaGrid extends StatelessWidget {
  final int gridCount;
  const MangaGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: mangaList.map((manga) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(manga: manga);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      manga.coverImage,
                      fit: BoxFit.fitHeight,
                    )
                  ),
                  const SizedBox(height: 2.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Text(
                      manga.title,
                      style: const TextStyle(
                        fontFamily: 'opensans',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      manga.author,
                      style: const TextStyle(
                        fontFamily: 'opensans',
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                            Icons.star_rate, 
                            size: 16.0,
                            color: Color.fromARGB(255, 207, 204, 0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            manga.rating.toString(),
                            style: const TextStyle(
                              fontFamily: 'opensans',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
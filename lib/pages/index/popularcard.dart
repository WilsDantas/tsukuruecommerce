import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  final String image;
  final String name;

  const PopularCard({this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.pushNamed(context, '/productDetail');
      },
      child: Card(
        child: Hero(
            tag: name,
            child: Material(
              child: InkWell(
                child: GridTile(
                    footer: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      color: Colors.white70,
                      child: 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ],
                          ),
                    ),
                    child: _buildImage(image)),
              ),
            )),
      ),
    );
  }

  Widget _buildImage(image) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: image,
      placeholder: (context, url) => Container(
        height: 80,
        width: 80,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      errorWidget: (context, url, error) => Center(
        child: Icon(Icons.error),
      ),
    );
  }
}

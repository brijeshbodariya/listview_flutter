import 'package:flutter/material.dart';
import 'package:listview_flutter/model/Item.dart';
import 'package:listview_flutter/screen/get_rating.dart';
import 'package:listview_flutter/screen/list_view_item_details.dart';

class ItemList extends StatelessWidget {
  final Item? item;

  const ItemList({Key? key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ListItemDetails(item),
          ),
        );
      },
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                item!.imageUrl!,
                height: 120.0,
                width: 120.0,
                fit: BoxFit.fitHeight,
              ),
              Flexible(
                //padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item!.name!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFFD73C29),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        item!.category!,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 9.0,
                        ),
                      ),
                      const SizedBox(height: 0.0),
                      GetRatings(),
                      const SizedBox(height: 2.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 4.0),
                            child: Column(
                              children: <Widget>[
                                const Text(
                                  'RELEASE DATE:',
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  item!.releaseDate!,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 4.0),
                            child: Column(
                              children: <Widget>[
                                const Text(
                                  'RUNTIME:',
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  item!.runtime!,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderContent extends StatelessWidget {
  final Item? item;

  const HeaderContent(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item!.name!,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFFD73C29),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item!.category!,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 9.0,
                    ),
                  ),
                  GetRatings(),
                  MovieDesc(item!),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDesc extends StatelessWidget {
  final Item item;

  const MovieDesc(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              const Text(
                'RELEASE DATE:',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 9.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.releaseDate!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 9.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: <Widget>[
                const Text(
                  'RUNTIME:',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.runtime!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

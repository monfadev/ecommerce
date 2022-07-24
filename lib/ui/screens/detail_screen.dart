part of 'screens.dart';

class DetailScreen extends StatelessWidget {
  final List<DataDummy> items;
  final int index;
  const DetailScreen({required this.items, required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(items[index].title ?? ""),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            width: double.infinity,
            child: Hero(
              tag: "product-home-${items[index].id}",
              child: Material(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 1.1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                  ),
                  items: [1, 2].map((e) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(items[index].img ?? "no-profile", fit: BoxFit.cover),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: const Color(0xFF656565).withOpacity(0.15),
                blurRadius: 1.0,
                spreadRadius: 0.2,
              )
            ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(items[index].title ?? ""),
                  const SizedBox(height: 10),
                  Text(items[index].price ?? ""),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.black12, height: 1.0),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 75,
                              decoration: const BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    items[index].rattingValue ?? "",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const Padding(padding: EdgeInsets.only(left: 8.0)),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 19.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            items[index].itemSale ?? "",
                            style: const TextStyle(color: Colors.black54, fontSize: 13.0, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

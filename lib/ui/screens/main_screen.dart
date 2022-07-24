part of 'screens.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 15,
            children: List.generate(
              data.length,
              (index) => Container(
                width: MediaQuery.of(context).size.width / 2 - 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 5),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      startScreen(context, DetailScreen(items: data, index: index));
                    },
                    child: Column(
                      children: [
                        Hero(
                          tag: 'product-home-${data[index].id}',
                          child: GestureDetector(
                            onTap: () {
                              startScreen(
                                context,
                                Material(
                                  color: Colors.black54,
                                  child: Container(
                                    padding: const EdgeInsets.all(30.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Hero(
                                          tag: 'product-home-${data[index].id}',
                                          child: Image.network(
                                            data[index].img ?? "no-profile",
                                            width: 300.0,
                                            height: 300.0,
                                            alignment: Alignment.center,
                                            fit: BoxFit.contain,
                                          )),
                                    ),
                                  ),
                                ),
                                opaque: false,
                              );
                            },
                            child: Container(
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                image: DecorationImage(image: NetworkImage(data[index].img ?? "no-profile"), fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                data[index].title ?? unknown,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5),
                              Text(data[index].price ?? unknown),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(data[index].rattingValue ?? unknown),
                                  const SizedBox(width: 5),
                                  const Icon(Icons.star, size: 14, color: Colors.yellow),
                                  const Spacer(),
                                  Text(data[index].itemSale ?? unknown),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ).toList(),
          ),
        ],
      ),
    );
  }
}

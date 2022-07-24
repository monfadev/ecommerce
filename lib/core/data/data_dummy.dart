class DataDummy {
  final String? id;
  final String? img;
  final String? title;
  final String? price;
  final String? rattingValue;
  final String? itemSale;
  final String? description;

  DataDummy({
    this.id,
    this.img,
    this.title,
    this.price,
    this.rattingValue,
    this.itemSale,
    this.description,
  });
}

List<DataDummy> data = [
  DataDummy(
    id: "1",
    img: "https://images.unsplash.com/photo-1605636808063-ba999ff935eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    title: "Iphone",
    price: "\$ 200",
    itemSale: "932 Sale",
    rattingValue: "4.8",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.....",
  ),
  DataDummy(
    id: "2",
    img: "https://images.unsplash.com/photo-1603566234499-85676f87022f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80",
    title: "Samsung",
    price: "\$ 200",
    itemSale: "892 Sale",
    rattingValue: "4.2",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen.....",
  ),
];

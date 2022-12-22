import 'package:flutter/material.dart';

class CartItems extends StatefulWidget {
  final List<dynamic> cartList;

  const CartItems({super.key, required this.cartList});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shipping address'),
      ),
      body: widget.cartList.isEmpty
          ? Center(child: Text('No Items'))
          : ListView.builder(
              itemCount: widget.cartList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: FadeInImage(
                                image: NetworkImage(
                                    "${widget.cartList[index]['pic']}"),
                                placeholder:
                                    AssetImage("assets/images/placeholder.png"),
                                imageErrorBuilder:
                                    (context, error, stackTrace) {
                                  return Image.asset('assets/images/error.png',
                                      fit: BoxFit.fitWidth);
                                },
                                fit: BoxFit.fitWidth,
                              )),
                          Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {
                                          widget.cartList[index]['quantity'] =
                                              (widget.cartList[index]
                                                      ['quantity']) +
                                                  1;
                                          setState(() {});
                                        },
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: Text(
                                          '${widget.cartList[index]['quantity']}')),
                                  Expanded(
                                      flex: 1,
                                      child: IconButton(
                                        icon: Icon(Icons.remove),
                                        onPressed: () {
                                          if (widget.cartList[index]
                                                  ['quantity'] =
                                              (widget.cartList[index]
                                                      ['quantity']) >
                                                  1)
                                            widget.cartList[index]['quantity'] =
                                                (widget.cartList[index]
                                                        ['quantity']) -
                                                    1;
                                          setState(() {});
                                        },
                                      )),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Text(
                                  '${widget.cartList[index]['quantity']} x ${widget.cartList[index]['cost']}')),
                        ],
                      ),
                    ));
              }),
    );
  }
}

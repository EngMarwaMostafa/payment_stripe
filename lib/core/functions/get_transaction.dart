import '../../features/checkout/data/models/amount/amount_models.dart';
import '../../features/checkout/data/models/details.dart';
import '../../features/checkout/data/models/item_list_model/item_list_model.dart';
import '../../features/checkout/data/models/item_list_model/order_item_model.dart';

({AmountModel amount, ItemListModel itemList}) getTransctionsData() {
  var amount = AmountModel(
      total: "100",
      currency: 'USD',
      details: Details(shipping: "0", shippingDiscount: 0, subtotal: '100'));

  List<OrderItemModel> orders = [
    OrderItemModel(
      currency: 'USD',
      name: 'Apple',
      price: "4",
      quantity: 10,
    ),
    OrderItemModel(
      currency: 'USD',
      name: 'Apple',
      price: "5",
      quantity: 12,
    ),
  ];

  var itemList = ItemListModel(orders: orders);

  return (amount: amount, itemList: itemList);
}
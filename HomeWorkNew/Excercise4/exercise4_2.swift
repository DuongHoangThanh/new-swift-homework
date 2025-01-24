class Product {
    var productID: String
    var name: String
    var price: Double
    var quantity: Int
    
    init(productID: String, name: String, price: Double, quantity: Int) {
        self.productID = productID
        self.name = name
        self.price = price
        self.quantity = quantity
    }
}

class Order {
    var orderID: String
    var customerName: String
    var items: [Product]
    
    init(orderID: String, customerName: String, items: [Product]) {
        self.orderID = orderID
        self.customerName = customerName
        self.items = items
    }
    
    func addProduct(_ product: Product) {
        items.append(product)
    }
    
    func removeProduct(_ productName: String) {
        if let index = items.firstIndex(where: { $0.name == productName}) {
            items.remove(at: index)
        } else {
            print("Index not found")
        }
    }
    
    func totalPrice() -> Double {
        return items.reduce(0.0, { $0 + $1.price})
    }
    
    func checkValid() -> Bool {
        return items.allSatisfy { $0.quantity > 0}
    }
}

func exercise4_2() {
    
    // 2:
    let p1 = Product(productID: "#P001", name: "Iphone 16", price: 1500, quantity: 10)
    let p2 = Product(productID: "#P002", name: "Macbook m4", price: 2500, quantity: 15)
    let p3 = Product(productID: "#P003", name: "Ipad mini", price: 1000, quantity: 5)
    
    let o1 = Order(orderID: "#O11", customerName: "Hoang Thanh", items: [p1, p2, p3])
    print(o1.totalPrice())
    print(o1.checkValid())
    
}

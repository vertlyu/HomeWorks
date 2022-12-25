import Foundation

class Product {
    var nameProduct: String
    var priceProduct: Int
    var amountProduct: Int
    

    init(nameProduct: String, priceProduct: Int, amountProduct: Int) {
        self.nameProduct = nameProduct
        self.priceProduct = priceProduct
        self.amountProduct = amountProduct
    }

    func showInfo() {
        print("Наименование товара: \(nameProduct) Кол-во товара: \(amountProduct). Цена товара: \(priceProduct)")
    }
}

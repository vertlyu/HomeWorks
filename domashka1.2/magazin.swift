import Foundation

class Product {
    var name: String
    var company: String
    var price: Double
    var availab: Int?

    init(name: String, company: String, price: Double, availab: Int? = nil) {
        self.name = name
        self.company = company
        self.price = price
        self.availab = availab
    }
    
}

var products: [Product] = []



import Foundation

class Dukon {
    var dukonName: String
    var space: Int
    var location: String
    var graphicWork: String
    var products: [Product] = [Product]()
    var brand: String
    
    init(dukonName: String, space: Int, location: String, graphicWork: String, products: [Product], brand: String) {
        self.dukonName = dukonName
        self.space = space
        self.location = location
        self.graphicWork = graphicWork
        self.products = products
        self.brand = brand
    }
    
    func showInfo(){
        print("Название магазина: \(dukonName). Площадь: \(space)")
        print("Расположение: \(location). График работы: \(graphicWork)")
        print("Бренд магазина: \(brand)")
        
        for i in products{
            i.showInfo()
        }
    }
}


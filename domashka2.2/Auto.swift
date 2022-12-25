import Foundation

class AutoStore: Dukon {
    var incurance: Bool
    var repair: Bool
    var cars: [Auto]
    
    init(brandCar: String, incurance: Bool, repair: Bool, autoProducts: [Auto], dukonName: String, space: Int, location: String, graphicWork: String) {
        self.incurance = incurance
        self.repair = repair
        self.cars = autoProducts
        super.init(dukonName: dukonName, space: space, location: location, graphicWork: graphicWork, products: autoProducts, brand: brandCar)
    }
    
    func showAutoStoreInfo(){
        super.showInfo()
        print("Предоставление страховки: \(incurance)")
        print("Предоставление ремонта: \(repair)")
        
        cars.forEach { auto in
            auto.showAutoInfo()
        }
    }
}

class Auto: Product{
    var model: String
    var horsePower: Int
    var age: Int
    
    init(nameProduct: String, priceProduct: Int, amountProduct: Int, model: String, horsePower: Int, age: Int) {
        self.model = model
        self.horsePower = horsePower
        self.age = age
        super.init(nameProduct: nameProduct, priceProduct: priceProduct, amountProduct: amountProduct)
    }
    
    func showAutoInfo(){
        super.showInfo()
        print("Модель: \(model), Лошадиние силы: \(horsePower), Год выпуска: \(age)")
    }
}

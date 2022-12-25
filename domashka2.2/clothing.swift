import Foundation

class ClothesDukon: Dukon {
    var delivery: Bool
    var kabinkiCount: Int
    var clothes: [Clothes]
    
    init(dukonName: String, space: Int, location: String, graphicWork: String, clothesProducts: [Clothes], brand: String, delivery: Bool, kabinkiCount: Int) {
        self.delivery = delivery
        self.kabinkiCount = kabinkiCount
        self.clothes = clothesProducts
        super.init(dukonName: dukonName, space: space, location: location, graphicWork: graphicWork, products: clothesProducts, brand: brand)
    }
    
    func showClothesStoreInfo() {
        super.showInfo()
        print("Предоставление доставки: \(delivery)")
        print("Общее количество кабинок: \(kabinkiCount)")
        
        clothes.forEach { clothes in
            clothes.showClothesInfo()
        }
    }
}

class Clothes: Product{
    var size: Double
    var material: String
    
    init(size: Double, material: String, nameProduct: String, priceProduct: Int, amountProduct: Int) {
        self.size = size
        self.material = material
        super.init(nameProduct: nameProduct, priceProduct: priceProduct, amountProduct: amountProduct)
    }

    func showClothesInfo(){
        super.showInfo()
        print("Размер: \(size), Материал: \(material)")
    }
    
}

import Foundation

//#1. Создать класс Магазин
//Свойства: Название, Площадь, Расположение, Часы работы, массив с товарами
//Создать класс Товар
//Свойства: Название товара, кол-во. Цена товара
//После чего путём наследования от класса Магазин создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
//Так же в конце должен быть метод, который будет отображать следующую информацию:
//Название магазина. Площадь.
//Расположение. Часы работы.
//Наименование товара. Кол-во товара. Цена товара (Если у вас два и более одинаковых по названию товаров - соединить)

let regularDukon = Dukon(dukonName: "Кыргызмедтехника", space: 710, location: "Кийизбаева, 3", graphicWork: "с 10:00 до 18:00", products: [Product](), brand: "Brand")

var moloko = Product(nameProduct: "Сут", priceProduct: 312, amountProduct: 2)
var airan = Product(nameProduct: "Айран", priceProduct: 243, amountProduct: 7)

regularDukon.products.append(moloko)
regularDukon.products.append(airan)

regularDukon.showInfo()



let teslaStore = AutoStore(
    brandCar: "Tesla",
    incurance: true,
    repair: true,
    autoProducts: [Auto](),
    dukonName: "Tesla Dukon",
    space: 555,
    location: "Резиденция",
    graphicWork: "24/7")

var teslaModelS = Auto(nameProduct: "Tesla", priceProduct: 23523, amountProduct: 3, model: "Model S Plaid", horsePower: 1024, age: 2020)
teslaStore.cars.append(teslaModelS)

var teslaCyberTruck = Auto(nameProduct: "Tesla", priceProduct: 235235, amountProduct: 2, model: "CyberTruck", horsePower: 655, age: 2022)
teslaStore.cars.append(teslaCyberTruck)

teslaStore.showAutoStoreInfo()

let clothesStore = ClothesDukon(
    dukonName: "Be Adam Dukon",
    space: 210,
    location: "Чынгыза Айтматова, 3",
    graphicWork: "10:00 - 22:00",
    clothesProducts: [Clothes](),
    brand: "Be Adam",
    delivery: true,
    kabinkiCount: 2)

var nike = Clothes(size: 3.5, material: "ХБ", nameProduct: "Zip-Hoodie", priceProduct: 6999, amountProduct: 3)
clothesStore.clothes.append(nike)

var zara = Clothes(size: 4.5, material: "ХБ", nameProduct: "Футболка - (oversize)", priceProduct: 7500, amountProduct: 3)
clothesStore.clothes.append(zara)

clothesStore.showClothesStoreInfo()





import Foundation

//№1. Составить программу, которая будет добавлять товары в базу данных товаров магазина. Учесть, что у некоторых товаров может не быть некоторых параметров
//
//Параметры:
//Название
//Производитель
//Вес
//Штрих-код
//Цена
//Скидка (если есть - указываете, если нет - nil)
//Наличие (если есть - указываете, если нет - nil)
//В конце вывести общее количество товаров (какого вида сколько товаров) и общую стоимость товаров магазина

struct Product {
    var name: String
    var company: String
    var weight: Double
    var code: Int
    var price: Double
    var discount: Double?
    var availab: Int?
}

var products: [Product] = []

var end = false

func magazine(nameProduct: String, nameCompany: String, weightProduct: Double, codeProduct: Int, priceProduct: Double, discountProduct: Double, availabProduct: Int){

    var newProduct = Product(name: nameProduct, company: nameCompany, weight: weightProduct, code: codeProduct, price: priceProduct)

    if(discountProduct != 0) {
        newProduct.price -= discountProduct
        newProduct.discount = discountProduct
    }

    if(availabProduct != 0) {
        newProduct.availab = availabProduct

    }

    products.append(newProduct)
}

while(!end) {
    print("Введите название товара,которого хотите добавить в базу данных, магазина 'Brother,Tucker'")
    var inputNameProduct = readLine()
    while(inputNameProduct == nil){
        print("Ошибка! Введите название товара!")
        inputNameProduct = readLine()!
    }
    print("Введите название производителя товара")
    var inputNameCompany = readLine()
    while(inputNameCompany == nil){
        print("Ошибка! Введите название производителя!")
        inputNameCompany = readLine()!
    }
    print("Введите вес товара")
    var inputWeightProduct = Double(readLine()!)
    while(inputWeightProduct == nil){
        print("Ошибка! Введите вес товара!")
        inputWeightProduct = Double(readLine()!)
    }
    print("Введите штрих-код товара")
    var inputCodeProduct = Int(readLine()!)
    while(inputCodeProduct == nil){
        print("Ошибка! Введите штрих-код товара!")
        inputCodeProduct = Int(readLine()!)
    }
    print("Введите цену товара")
    var inputPriceProduct = Double(readLine()!)
    while(inputPriceProduct == nil){
        print("Ошибка! Введите цену товара!")
        inputPriceProduct = Double(readLine()!)
    }
    print("Введите скидку для товара(если нету то введите 0)")
    var inputDiscountProduct = Double(readLine()!)
    while(inputDiscountProduct == nil){
        print("Ошибка! Введите скидку для товара(если нету то введите 0)")
        inputDiscountProduct = Double(readLine()!)
    }
    print("Введите сколько товара хотите указать (если нету то введите 0)")
    var inputAvailabProduct = Int(readLine()!)
    while(inputAvailabProduct == nil){
        print("Ошибка! Введите сколько товара хотите внести(цело-численное значение)!")
        inputAvailabProduct = Int(readLine()!)
    }

    print("Хотите добавить еще? yes/no")
    var inputReplies: String = readLine()!
    if inputReplies == "no"{
        end = true
    }

    magazine(nameProduct: inputNameProduct!, nameCompany: inputNameCompany!, weightProduct: inputWeightProduct!, codeProduct: inputCodeProduct!, priceProduct: inputPriceProduct!, discountProduct: inputDiscountProduct!, availabProduct: inputAvailabProduct!)
}

var totalPrice: Double = 0

for singleProduct in products {
    print("Название: \(singleProduct.name)")
    print("Производитель: \(singleProduct.company)")
    print("Вес: \(singleProduct.weight)")
    print("Штрих-код: \(singleProduct.code)")
    print("Цена: \(singleProduct.price)")
    print("Скидка: \(singleProduct.discount)")
    print("Наличие: \(singleProduct.availab)")

    totalPrice = totalPrice + singleProduct.price
}

print("Общая стоимость товаров в магазине \(totalPrice)")
print("Общее количество товаров в магазине \(products.count)")


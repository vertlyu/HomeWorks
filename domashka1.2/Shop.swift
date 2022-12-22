//
//  Product.swift
//  domashka1.2
//
//  Created by Vyacheslav Vert on 12/22/22.
//

import Foundation

class Shop {
    var shopName: String
    var products: [Product] = [Product]()
    var totalPrice: Double = 0
    
    init(shopName: String) {
        self.shopName = shopName
    }
    
    
    func addProduct() {
        var end = false
        
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
            print("Введите цену товара")
            var inputPriceProduct = Double(readLine()!)
            while(inputPriceProduct == nil){
                print("Ошибка! Введите цену товара!")
                inputPriceProduct = Double(readLine()!)
            }
            print("Введите сколько товара хотите указать (если нету то введите 0)")
            var inputAvailabProduct = Int(readLine()!)
            while(inputAvailabProduct == nil){
                print("Ошибка! Введите сколько товара хотите внести(цело-численное значение)!")
                inputAvailabProduct = Int(readLine()!)
            }
            
            let newProduct = Product(name: inputNameCompany!, company: inputNameCompany!, price: inputPriceProduct!)
            products.append(newProduct)
            print("Хотите добавить еще? yes/no")
            var inputReplies: String = readLine()!
            if inputReplies == "no"{
                end = true
            }
        }
    }
    
    
    func showInfo () {
        
        for singleProduct in products {
            print("Название: \(singleProduct.name)")
            print("Производитель: \(singleProduct.company)")
            print("Цена: \(singleProduct.price)")

            totalPrice = totalPrice + singleProduct.price
        }

        print("Общая стоимость товаров в магазине \(totalPrice)")
        print("Общее количество товаров в магазине \(products.count)")
    }
    
    
}

import Foundation

//1. Создать класс "Машина"(Car) и задать ему свойства
//Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)
var firstCar = Car(brand: "Mercedes-Maybach", model: "S680 4MATIC", engine: "V12 biturbo", hp: 621, frontBumper: "classic", rearBumper: "classic", spoiler: "classic")
var carsArray: [Car] = [firstCar]

//firstCar.tuningCar()

//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине




let shop = Shop(shopName: "shop")
shop.addProduct()
shop.showInfo()
//3. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту

var firstPerson = Clients(name: "Erzhan", surname: "Tokochev", balanceClient: 465177, idClient: "770777779", transfer: 2432)
var secondPerson = Clients(name: "Сhyngyz", surname: "Karachalov", balanceClient: 264426, idClient: "770777779", transfer: 6534)
var threePerson = Clients(name: "Raul", surname: "Karryanov", balanceClient: 265473, idClient: "770777779", transfer: 2536)
var fourPerson = Clients(name: "Temirlan", surname: "Sydykov", balanceClient: 465436, idClient: "770777779", transfer: 245)
var fivePerson = Clients(name: "Bektur", surname: "Karimov", balanceClient: 423577, idClient: "770777779", transfer: 4324)

var bank = Bank(clientsBank: [firstPerson, secondPerson, threePerson, fourPerson, firstPerson])
bank.bankClientsCount()
bank.showClientInfo()


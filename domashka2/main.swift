
//№1. Используя функции, условные операторы составить следующую программу прогноза погоды:

//При вводе одного из городов в readLine (Бишкек, Чолпон-Ата, Талас, Ош, Джалал-Абад, Нарын, Баткен) выводить в итоге данные о погоде на ближайшие 3 дня в указанном городе

func prognozPogody(){
    print("Введите город: Bishkek, Cholpon-Ata, Talas, Osh, Jalal-Abad, Naryn, Batken")
    
    let inputCity = readLine()
    
    if (inputCity == "Bishkek") {
        print("Tue 22: +4 +11")
        print("Wed 23: +3 +9")
        print("Thu 24: +3 +8")
    } else if inputCity == "Cholpon-Ata" {
        print("Tue 22: +3 +6")
        print("Wed 23: +3 +8")
        print("Thu 24: +4 +7")
    } else if inputCity == "Talas" {
        print("Tue 22: +3 +6")
        print("Wed 23: +4 +9")
        print("Thu 24: +6 +13")
    } else if inputCity == "Osh" {
        print("Tue 22: +6 +10")
        print("Wed 23: +6 +13")
        print("Thu 24: +8 +14")
    } else if inputCity == "Jalal-Abad" {
        print("Tue 22: +7 +11")
        print("Wed 23: +7 +14")
        print("Thu 24: +8 +16")
    } else if inputCity == "Naryn" {
        print("Tue 22: -5 -1")
        print("Wed 23: -5 0")
        print("Thu 24: -6 +1")
    } else if inputCity == "Batken" {
        print("Tue 22: +6 +11")
        print("Wed 23: +6 +12")
        print("Thu 24: +7 +13")
    } else {
        print("Нет прогноза погода для города с названием \(inputCity!)")
    }
    
    /* switch(inputCity){
     case ("Bishkek"):
     print("Tue 22: +4 +11")
     print("Wed 23: +3 +9")
     print("Thu 24: +3 +8")
     
     case("Cholpon-Ata"):
     print("Tue 22: +3 +6")
     print("Wed 23: +3 +8")
     print("Thu 24: +4 +7")
     
     case("Talas"):
     print("Tue 22: +3 +6")
     print("Wed 23: +4 +9")
     print("Thu 24: +6 +13")
     
     case("Osh"):
     print("Tue 22: +6 +10")
     print("Wed 23: +6 +13")
     print("Thu 24: +8 +14")
     
     case("Jalal-Abad"):
     print("Tue 22: +7 +11")
     print("Wed 23: +7 +14")
     print("Thu 24: +8 +16")
     
     case("Naryn"):
     print("Tue 22: -5 -1")
     print("Wed 23: -5 0")
     print("Thu 24: -6 +1")
     
     case("Batken"):
     print("Tue 22: +6 +11")
     print("Wed 23: +6 +12")
     print("Thu 24: +7 +13")
     
     default:
     print("error")
     }
     }*/
}
    
    prognozPogody()
    
    //№2. Используя условные операторы и функции создать программу, которая после ввода 5 наименований продуктов через readLine будет считать итоговую стоимость покупок (со скидкой в 5%
    //В итоге должно быть так: (например)
    //Ваши товары:
    //Кола - 50с
    //Кефир - 65с
    //Молоко - 40с
    //Хлеб - 20с
    //Салат - 100с
    //
    //275с + скидка 13,75c
    //Итого: 261,25с
    
    func tovary(){
        
        print("Введите товары: Кола, Кефир, Молоко, Хлеб, Масло, Салат, Хлопья")
        let product = readLine()!
        var check: Double = 0
        
        if product.contains("Кола") {
            print("Кола - 50с")
            check =  check + 50
        }
        if product.contains("Кефир") {
            print("Кефир - 65с")
            check =  check + 65
        }
        if product.contains("Молоко") {
            print("Молоко - 40с")
            check =  check + 40
        }
        if product.contains("Хлеб") {
            print("Хлеб - 20с")
            check =  check + 20
        }
        if product.contains("Масло") {
            print("Масло - 55с")
            check =  check + 55
        }
        if product.contains("Салат") {
            print("Салат - 100с")
            check =  check + 100
        }
        if product.contains("Хлопья") {
            print("Хлопья - 80с")
            check =  check + 80
        }
        
        // 1% ot checka
        let onePercent = check / 100
        let fivePercent = onePercent * 5
        check = check - fivePercent
        print("Скидка \(fivePercent)")
        print("Итого \(check)")
        
    }
    
    tovary()
    
    //№3. Доработать калькулятор с прошлого урока с помощью условных операторов и соединить всё с readLine (например сначала спрашиваете число, после чего “Какое действие совершить?”, затем второе число и т.д ) И в итоге выдать итоговый результат используя заранее подготовленные функции для вычислений
    
    print("Введите первое число")
    var inputNumber = Int(readLine()!)
    while(inputNumber == nil) {
        print("Ошибка! Введите число!")
        inputNumber = Int(readLine()!)
    }
    
    print("Введите второе число")
    var inputSecondNumber =  Int(readLine()!)
    while(inputSecondNumber == nil) {
        print("Ошибка! Введите число!")
        inputSecondNumber = Int(readLine()!)
    }
    
    print("Введите символ для решения: + - / *")
    let inputSymbol = Character(readLine()!)
    
    func calculate(first: Int, second: Int, operation: Character) -> Int {
        var result: Int = 0
        
        if (operation == "+") {
            result = first + second
        }
        
        if (operation == "-") {
            result = first - second
        }
        
        if (operation == "/") {
            result = first / second
        }
        
        if (operation == "*") {
            result = first * second
        }
        
        return result
    }
    
    let output = calculate(first: inputNumber!, second: inputSecondNumber!, operation: inputSymbol)
    
    print("Ответ - \(output)")
    

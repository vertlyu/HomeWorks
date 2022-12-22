import Foundation

//1. Создать класс "Машина"(Car) и задать ему свойства
//Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)

class Car {
    var brand: String
    var model: String
    var engine: String
    var hp: Int
    var frontBumper: String
    var rearBumper: String
    var spoiler: String
    
    init(brand: String, model: String, engine: String, hp: Int, frontBumper: String, rearBumper: String, spoiler: String) {
        self.brand = brand
        self.model = model
        self.engine = engine
        self.hp = hp
        self.frontBumper = frontBumper
        self.rearBumper = rearBumper
        self.spoiler = spoiler
    }
    
    
    func tuningCar(){
        print("Хотели бы вы затюнинговать двигатель? yes/no")
        var inputRepliesEngine = readLine()!
        if inputRepliesEngine == "yes"{
            self.engine = "V16"
            print("Тюнинг двигателя произошел успешно - \(engine)")
            self.hp = hp + 100
            print("Лошадиние силы - \(hp)")
        } else {
            print("Вы не затюнинговали двигатель")
        }
        
        print("Хотели бы вы затюнинговать передний бампер? yes/no")
        var inputRepliesFrontBumper = readLine()!
        if inputRepliesFrontBumper == "yes"{
            self.frontBumper = "Brabus"
        } else {
            print("Вы не затюнинговали передний бампер")
        }
        
        print("Хотели бы вы затюнинговать задний бампер? yes/no")
        var inputRepliesRearBumper = readLine()!
        if inputRepliesRearBumper == "yes"{
            self.rearBumper = "Brabus"
        } else {
            print("Вы не затюнинговали задний бампер")
        }
        
        print("Хотели бы вы затюнинговать спойлер? yes/no")
        var inputRepliesSpoiler = readLine()!
        if inputRepliesSpoiler == "yes"{
            self.spoiler = "Brabus"
        } else {
            print("Вы не затюнинговали спойлер")
        }
        
        print("Бренд авто - \(self.brand). Модель авто - \(self.model). Двигатель авто - \(self.engine). Лошадиние силы авто - \(self.hp). Передний бампер авто - \(self.frontBumper). Задний бампер авто - \(self.rearBumper). Спойлер - \(self.spoiler)")
    }

}


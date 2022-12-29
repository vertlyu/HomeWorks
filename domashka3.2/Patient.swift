import Foundation

//№2.
//Создать класс Больница
//Создать класс пациент
//Добавить массив пациентов в больницу
//Создать приватную функцию поиска по фамилии и имени, функцию для отобржения заболевания пациента по фамилии и имени, добавление(с учетом что такого человека еще нет) и удаление с учетом если есть
//В main создать объект Больницы и протестировать ваш код разными кейсами

class Patient{
    var name: String
    var surname: String
    var age: Int
    var disease: String
    
    init() {
        self.name = ""
        self.surname = ""
        self.age = 0
        self.disease = ""
    }
    
    init(name: String, surname: String, age: Int, disease: String) {
        self.name = name
        self.surname = surname
        self.age = age
        self.disease = disease
    }
}

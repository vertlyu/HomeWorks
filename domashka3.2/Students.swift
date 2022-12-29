import Foundation

//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса(модели), потом использовать)
//Должны быть методы для удаления, добавления и считывания учеников/учителей.(возвращеное модели по параметрам)
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл

class Student {
    var name: String
    var surname: String
    var age: Int
    var grade: Int
    var gpa: Int
    
    init() {
        self.name = ""
        self.surname = ""
        self.age = 0
        self.grade = 0
        self.gpa = 0
    }
    
    init(name: String, surname: String, age: Int, grade: Int, gpa: Int){
        self.name = name
        self.surname = surname
        self.age = age
        self.grade = grade
        self.gpa = gpa
    }
}



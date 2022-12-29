import Foundation

//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса(модели), потом использовать)
//Должны быть методы для удаления, добавления и считывания учеников/учителей.(возвращеное модели по параметрам)
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл

var dataBase = DataBase()

var chyngyz = Student(name: "Chyngyz", surname: "Karachalov", age: 14, grade: 8, gpa: 4)
var erzhan = Student(name: "Erzhan", surname: "Tokochev", age: 14, grade: 8, gpa: 4)
var raul = Student(name: "Raul", surname: "Karryanov", age: 18, grade: 8, gpa: 4)
var temirlan = Student(name: "Temirlan", surname: "Sydykov", age: 18, grade: 8, gpa: 4)
var kurmanbek = Student(name: "Kurmanber", surname: "Berikov", age: 14, grade: 8, gpa: 3)

dataBase.addStudents(model: chyngyz)
dataBase.addStudents(model: erzhan)
dataBase.addStudents(model: raul)
dataBase.addStudents(model: temirlan)
dataBase.addStudents(model: kurmanbek)

var sharshenov = Teacher(name: "Ruslan", surname: "Sharshenov", age: 23)
var alimgulova = Teacher(name: "Rimma", surname: "Alimgulova", age: 56)
var abasov = Teacher(name: "Ramis", surname: "Abasov", age: 21)
var sultanovich = Teacher(name: "Aidar", surname: "Sultanovich", age: 31)
var richer = Teacher(name: "Giom", surname: "Richer", age: 24)

dataBase.addTeachers(model: sharshenov)
dataBase.addTeachers(model: alimgulova)
dataBase.addTeachers(model: abasov)
dataBase.addTeachers(model: sultanovich)
dataBase.addTeachers(model: richer)



dataBase.getCount()
dataBase.showAllStudentsInfo()
dataBase.showAllTeachersInfo()

dataBase.removeStudent(model: temirlan)
dataBase.removeTeacher(model: richer)

dataBase.getCount()
dataBase.showAllStudentsInfo()
dataBase.showAllTeachersInfo()


//№2.
//Создать класс Больница
//Создать класс пациент
//Добавить массив пациентов в больницу
//Создать приватную функцию поиска по фамилии и имени, функцию для отобржения заболевания пациента по фамилии и имени, добавление(с учетом что такого человека еще нет) и удаление с учетом если есть
//В main создать объект Больницы и протестировать ваш код разными кейсами

var dataBaseHospital = Hospital()

var sharshenbekov = Patient(name: "Ayaz", surname: "Sharshenbekov", age: 14, disease: "Синдром Дауна")
var abdulbakiev = Patient(name: "Ihsan", surname: "Abdulbakiev", age: 14, disease: "Шизофрения")

dataBaseHospital.addPatients(model: sharshenbekov)
dataBaseHospital.addPatients(model: abdulbakiev)

dataBaseHospital.printModelDetails("Vyacheslav", "Pechkin")
dataBaseHospital.printModelDetailsDisease("Ayaz", "Sharshenbekov")


import Foundation

//#1. Создать класс DataBase.
//
//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса(модели), потом использовать)
//
//Должны быть методы для удаления, добавления и считывания учеников/учителей.(возвращеное модели по параметрам)
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл

class DataBase{
    private var students = [Student]()
    private var teachers = [Teacher]()
    
    init(students: [Student] = [Student](), teachers: [Teacher] = [Teacher]()) {
        self.students = students
        self.teachers = teachers
    }
    
    func getCount(){
        print("Количество учеников - \(students.count) \nКоличество учителей - \(teachers.count)")
    }
    
    func addStudents(model: Student){
        students.append(model)
    }
    
    func addTeachers(model: Teacher){
        teachers.append(model)
    }
    
    func removeStudent(model: Student){
        let index = getStudentIndexBy(name: model.name, surname: model.surname, age: model.age, grade: model.grade, gpa: model.gpa)
        students.remove(at: index)
    }
    
    func removeTeacher(model: Teacher){
        let indexTeacher = getTeacherIndexBy(name: model.name, surname: model.surname, age: model.age)
        teachers.remove(at: indexTeacher)
    }
    
    func getStudentIndexBy(name: String, surname: String, age: Int, grade: Int, gpa: Int) -> Int {
        var indexToReturn: Int = -1
        for (indx, std) in students.enumerated() {
            if std.name == name &&
                std.surname == surname &&
                std.age == age &&
                std.grade == grade &&
                std.gpa == gpa {
                indexToReturn = indx
                break
            }
        }
        return indexToReturn
    }
    
    func getTeacherIndexBy(name: String, surname: String, age: Int) -> Int {
        var indexToReturn: Int = -1
        for (indx, teach) in teachers.enumerated() {
            if teach.name == name &&
                teach.surname == surname &&
                teach.age == age {
                indexToReturn = indx
                break
            }
        }
        return indexToReturn
    }
    
    func showAllStudentsInfo(){
        for (index, student) in students.enumerated(){
            print("#\(index + 1) Имя - \(student.name) Фамилия - \(student.surname) Возраст - \(student.age) Класс - \(student.grade) Средний балл - \(student.gpa)")
        }
    }
    
    func showAllTeachersInfo(){
        for (index, teachers) in teachers.enumerated(){
            print("#\(index + 1) Имя - \(teachers.name) Фамилия - \(teachers.surname) Возраст - \(teachers.age)")
        }
    }
}


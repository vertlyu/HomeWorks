import Foundation

//№2.
//Создать класс Больница
//Создать класс пациент
//Добавить массив пациентов в больницу
//Создать приватную функцию поиска по фамилии и имени, функцию для отобржения заболевания пациента по фамилии и имени, добавление(с учетом что такого человека еще нет) и удаление с учетом если есть
//В main создать объект Больницы и протестировать ваш код разными кейсами

class Hospital {
    private var patients = [Patient]()
    
    init(patients: [Patient] = [Patient]()) {
        self.patients = patients
    }
    
    func addPatients(model: Patient){
        patients.append(model)
    }
    
    func removePatient(model: Patient){
        let index = getPatientIndexBy(name: model.name, surname: model.surname, age: model.age)
        patients.remove(at: index)
    }
    
    func getPatientIndexBy(name: String, surname: String, age: Int) -> Int {
        var indexToReturn: Int = -1
        for (indx, ptt) in patients.enumerated() {
            if ptt.name == name &&
                ptt.surname == surname &&
                ptt.age == age {
                indexToReturn = indx
                break
            }
        }
        return indexToReturn
    }
    
    private func getModelByNameSurname (_ name: String, _ surname: String) -> Patient{
        var model = Patient()
        for i in patients{
            if i.surname == surname && i.name == name{
                model = i
                break
            }
        }
        return model
    }
    
    func printModelDetails (_ name: String, _ surname: String){
        let model = getModelByNameSurname(name, surname)
        if model.name != "" || model.surname != ""{
            print("Name - \(model.name), Surname - \(model.surname), Age - \(model.age)")
        } else {
            print("No such patient")
        }
    }
    
    func printModelDetailsDisease (_ name: String, _ surname: String){
        let model = getModelByNameSurname(name, surname)
        if model.name != "" && model.surname != ""{
            print("Name - \(model.name), Surname - \(model.surname), Age - \(model.age), Diasease - \(model.disease)")
        }
    }
    
}

//№1 Создать 20 переменных (10 “let” и 10 “var”) с разными типами данных и их вариантами и вывести их в консоль

let name: String = "Erzhan"
print(name)
let surname: String = "Tokochev"
print(surname)
let age: Int = 14
print(age)
let city: String = "Bishkek"
print(city)
let height: Int = 170
print(height)
let weight: Int = 47
print(weight)
let school: String = "KSMS"
print(school)
let phoneNumber: Int = 0999228028
print(phoneNumber)
let numberPiDouble: Double = 3.14159265358979
print(numberPiDouble)
let firstLetterOfTheName: Character = "E"
print(firstLetterOfTheName)

var names: String = "Ayaz"
print(names)
var surnames: String = "Sharshenbekov"
print(surnames)
var citys: String = "Bishkek"
print(citys)
var heights: Int = 168
print(heights)
var weights: Int = 55
print(weights)
var coursesGeekTech = true
if coursesGeekTech {
    print("yeah")
} else{
    print("no")
}
var valuation: Character = "A"
print(
    Ё
print(isItColdToday)
var numberPiFloat: Float = 3.1415
print(numberPiFloat)

//№2 Создать функцию, которая будет принимать число Int и выдавать в консоль таблицу умножения его от 1 до 10

var firstNumber: Int = 9
func inputFirstNumber(firstNumber: Int){
    print(firstNumber * 1)
    print(firstNumber * 2)
    print(firstNumber * 3)
    print(firstNumber * 4)
    print(firstNumber * 5)
    print(firstNumber * 6)
    print(firstNumber * 7)
    print(firstNumber * 8)
    print(firstNumber * 9)
    print(firstNumber * 10)
}
inputFirstNumber(firstNumber: firstNumber)

//№3 Создать 4 функции для калькулятора ( + - / *) с двумя операндами и произвести 10 разных вычислений с разными числами (Усовершенствованный)

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
var inputSymbol = Character(readLine()!)

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

var output = calculate(first: inputNumber!, second: inputSecondNumber!, operation: inputSymbol)

print("Ответ - \(output)")

// Анкета (Усовершенствованный)

print("Введите имя")
var inputName = readLine()!

print("Введите фамилию")
var inputSurname = readLine()!

print("Введите возраст")
var inputAge = readLine()!

print("Введите город проживания")
var inputCity = readLine()!

print("Введите номер телефона")
var inputPhoneNumber = readLine()!

func printAnketa(){
    print("Имя - \(inputName)")
    print("Фамилия - \(inputSurname)")
    print("Возраст - \(inputAge)")
    print("Город проживания - \(inputCity)")
    print("Номер телефона - \(inputPhoneNumber)")
}

printAnketa()

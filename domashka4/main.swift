import Foundation

//№1.  Используя условные операторы, функции и циклы создать следующую программу:

//Разобрать числа от 1 до 100
//Выписать через запятую все числа(в одну строку) кратные 2, 3, 4, 5 (для каждого числа разные переменные)
//Например: "2,4,6,8...)

var sa = ""

for a in 0...100 where a % 2 == 0 {

    sa = sa  + String(a) + ","

}
print(sa)


var sb = ""

for b in 0...100 where b % 3 == 0 {

    sb = sb  + String(b) + ","

}
print(sb)


var sc = ""

for c in 0...100 where c % 4 == 0 {

    sc = sc  + String(c) + ","

}
print(sc)


var sd = ""

for d in 0...100 where d % 5 == 0 {

    sd = sd  + String(d) + ","

}
print(sd)


//#2
//Используя условные операторы, функции и циклы создать следующую программу:
//Записать в одну переменную типа String 20 разных слов (с разной длиной) через запятую
//После того, как созданная ранее функция примет как аргумент созданную строку - вернет следующее (например) - “Яблоко - 6 символов \n Морковь - 7 символов” и т.д до последнего слова

var slova: String = "about, through, just, do, name, breaking, bad, swift, happy, clinique, for, men, ghost, call, of , duty, shift, control, space, escape"

var breaking = ""
var bad = ""

func curltai(){
    for slovaVova in slova{
        if slovaVova != "," && slovaVova != "."{
            breaking += "\(slovaVova)"
        } else{
            bad += breaking
            bad += " - \(breaking.count) символов"
            breaking = ""
        }
    }

}

curltai()
print(bad)







//доп
//Добавить в ваш калькулятор функции нахождения cos, sin, tg, ctg,(по углу) и %

var sin = 0.0
var cos = 0.0
var tg = 0.0
var ctg = 0.0

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

    print("Введите символ для решения: + - / * cos sin tg ctg")
let inputSymbol: String = readLine()!

func calculate(first: Int, second: Int, operation: String) -> Int {
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
    if (operation == "%") {
        result = first % second
    }

    return result
}

func sinus(num: Double) {
    sin = (((4.0 * num)*(180.0 - num)) / (40500.0 - (180.0 - num)))
}

func cosinus(num:Double) {
    sinus(num: (3.14159 / 2 - num))
    cos = sin
}
func tangenc(num: Double) {
    sinus(num: num)
    cosinus(num: num)
    tg = sin / cos
}

func cotangenc(num: Double) {
    sinus(num: num)
    cosinus(num: num)
    ctg = cos / sin
}

cosinus(num: 90)
print( cos)

    let output = calculate(first: inputNumber!, second: inputSecondNumber!, operation: inputSymbol)

    print("Ответ - \(output)")

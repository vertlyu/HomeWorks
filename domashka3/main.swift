//1. Используя if/else создать функцию, которая будет принимать число Int и строку String как аргумент (например Бишкек 22) -> вы делаете принт “”Кыргыз среднего возраста”. Т.е учитываете столицы 2-3 стран и возраст (0-18)(19-30)(31-70) и выводите ответ в консоль

print("Введите столицу и возраст")
let inputCity = readLine()!
let inputAge = Int(readLine()!)!

func calculateCityAge(city: String, age: Int) {
    
    var nation: String = ""
    
    switch(city) {
    case "Бишкек": nation = "Кыргыз"
    case "Прага": nation = "Чех"
    case "Ташкент": nation = "Узбек"
    default: print("выберите из списка столицу и выпишите в консоль")
    }
    
    switch(age) {
    case 0...18: print("\(nation) младшего возраста")
    case 19...30: print("\(nation) среднего возраста")
    case 31...70: print("\(nation) старшего возраста")
    default: print("вы ввели возраст больше 70 лет")
    }
}
calculateCityAge(city: inputCity, age: inputAge)

//2. Используя условный оператор switch и функцию создаете программу, которая будет проверять число Int(номер месяца) например 3 (Март) и тд и выводите в принт следующую информацию “”Месяц 3 - Март. Это весна. 8 Марта праздник” и т.д для каждого месяца заранее заготавливаете

print("Введите номер месяца")
let mounthReadLine = Int(readLine()!)

func mounthPrint(mounth: Int){
    switch mounth{
    case 1 :
        print("Месяц \(mounth) - Январь. Это зима. 1 Января праздник")
    case 2 :
        print("Месяц \(mounth) - Февраль. Это зима. 23 Февраля праздник")
    case 3 :
        print("Месяц \(mounth) - Март. Это весна. 8 Марта праздник")
    case 4 :
        print("Месяц \(mounth) - Апрель. Это весна. 7 Апреля праздник")
    case 5 :
        print("Месяц \(mounth) - Май. Это весна. 9 Мая праздник")
    case 6 :
        print("Месяц \(mounth) - Июнь. Это лето. 1 Июня праздник")
    case 7 :
        print("Месяц \(mounth) - Июль. Это лето. 4 Июля праздник")
    case 8 :
        print("Месяц \(mounth) - Август. Это лето. 31 Августа праздник")
    case 9 :
        print("Месяц \(mounth) - Сентябрь. Это осень. 1 Сентября праздник")
    case 10 :
        print("Месяц \(mounth) - Октябрь. Это осень.31 Октябрь праздник")
    case 11 :
        print("Месяц \(mounth) - Ноябрь. Это осень. 19 Ноября праздник")
    case 12 :
        print("Месяц \(mounth) - Декабрь. Это зима. 31 декабря праздник")
    default:
        print("нет такого месяца")
    }
}
mounthPrint(mounth: (mounthReadLine ?? 0))

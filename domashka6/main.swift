import Foundation


//    Через readLine вводится любое количество слов
//    После чего эти слова сортируются по количеству символов
//    Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное

    
    print("введите слово")
    var readline = readLine()!
    var array:[String] = []
    var string = ""
    
    for i in readline {
        if i != "," && i != " " && i != "." {
            string += String (i)
        }else {
            array.append(string)
            string = ""
    
        }
    }
    var arraySort = array.sorted()
    print(arraySort)



//    Составить список из 20 (словарь) контактов (Имя - номер телефона)
//    Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено
    
    var listContact = [[String]]()
    var sortContactList = [[String]]()
    func sort(sort1:String) {
        let firstletter = sort1.first!
        var A = false
        for (index,item) in listContact.enumerated() {
            for (index1, item1) in item.enumerated() {
                if index1 == 0 && item1 == String (firstletter) && A == false {
                    listContact [index].append(sort1)
                    A = true
                }else {
                    continue
                }
            }
        }
        if A == false {
            var contacts = [String] ()
            contacts.append(String(firstletter))
            contacts.append(sort1)
            listContact.append(contacts)
        }
     }
    sort(sort1: "Рауль - 0999022766")
    sort(sort1: "Тима - 0312312312")
    sort(sort1: "Аян - 09990229383")
    sort(sort1: "Иска - 070678765")
    sort(sort1: "Саке - 0111111111")
    sort(sort1: "Ташиев - 022222222")
    sort(sort1: "Абама - 0333333333")
    sort(sort1: "Джо-Байден - 0444444444")
    sort(sort1: "Карим - 08908457358")
    sort(sort1: "Ромазан - 09990232132")
    sort(sort1: "Оксана - 0432242424")
    sort(sort1: "Бема - 3213131231")
    sort(sort1: "Арсен - 0904395340")
    sort(sort1: "Мирбек - 09432489324")
    sort(sort1: "Кошой - 02222223333")
    sort(sort1: "Donald Trump - +132331234432")
    sort(sort1: "Cristiano Ronaldo - +2324324324234")
    sort(sort1: "Leonel Messi - +3213434324234")
    sort(sort1: "Neymar jr - +443542323324234")
    sort(sort1: "Tony Stark - +213213213123123")
    sort(sort1: "Thanos - +111111111111111")
    
    let alphavit = ["А", "Б", "В", "Г", "Д", "Е", "Ё", "Ж", "З", "И", "Й", "К", "Л", "М", "Н", "О", "П", "Р", "С", "Т", "У", "Ф", "Х", "Ц", "Ч", "Щ", "Щ", "Ъ", "Ы", "Ь", "Э", "Ю", "Я"]
    var a = 0
    for (index1,item1) in sortContactList.enumerated(){
        print("\(item1[0]) - \(sortContactList [index1].count - 1) контактов ")
    }
    print (sortContactList)
    print (listContact)


    /* Составить мини-игру “Викторина” используя массивы для записи вопросов и ответов
    В игре должно быть 5 раундов по 3 вопроса
    Так же должны быть несгораемые суммы
    Так же в конце если человек проиграл - показать какой ответ был верным и отобразить выигрыш и сколько раундов было выиграно */

    
    print ("Игра началась")
    print ("В каком году началась 2-ая мировая война?")
    print ("Варианты ответов: a - 1941, b - 1943, c - 1938, d - 1945")
    var a = readLine()!
    switch a {
    case "a": print("Верно")
    case "b": print("Неверно")
    case "c": print("Ты тупой?")
    case "d": print("Эта игра не для тебя")
    default: break
    }
    
    print ("Ну раз ты прошел 1-ый вопрос, то приступим ко 2-ому вопросу")
    print ("Какого числа праздник день защиты детей?")
    print ("Варианты ответов: a - 31 августа, b - 30 мая, с - 1 июня, d - 45 - мая")
    var b = readLine()!
    switch b {
    case "a": print("Почти, ну нет")
    case "b": print("Да, верно")
    case "c": print("хорош, ты проходишь этот уровень")
    case "d": print("ой боже, не играй больше в эту игру")
    default: break
    }
    
    print ("Начинается самый сок, удачи")
    print ("Когда у меня день рождение?")
    print ("Варианты ответов: a - 31 августа, b - 28 апреля, с - 1 июня, d - 28 - марта")
    var d = readLine()!
    switch d {
    case "a": print("Неее")
    case "b": print("Почти-почти")
    case "c": print("Нет")
    case "d": print("Ooooo, хорош")
    default: break
    }
    print("")
    print("Поздравляю, ты прошел мою викторину и твой выйгрыш составляет 3000 $")

import Foundation

class Bank {
    var clientsBank: [Clients]
    
    init(clientsBank: [Clients]){
        self.clientsBank = clientsBank
    }

    func bankClientsCount(){
        print(clientsBank.count)
    }
    
    func showClientInfo(){
        print("Введите фамилию или ID клиента чтобы узнать баланс")
        let inputSurnameID = readLine()!
        
        var found = false
        for client in clientsBank {
            if client.idClient == inputSurnameID || client.surname == inputSurnameID {
                print("Клиент был найден в Базе Данных Имя - \(client.name)")
                print("Имя - \(client.name). Фамилия - \(client.surname). Баланс - \(client.balanceClient). Клиент переводил средства к другому клиенту сумму в размере - \(client.transfer) сомов")
                found = true
                break
            }
        }
        
        if found == false {
            print("Такого клиента еще нет в Базе Данных банка")
        }
        
        
        
    }

}


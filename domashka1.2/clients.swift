import Foundation

class Clients {
    var name: String
    var surname: String
    var balanceClient: Int
    var idClient: String
    var transfer: Int

    init(name: String, surname: String, balanceClient: Int, idClient: String, transfer: Int) {
        self.name = name
        self.surname = surname
        self.balanceClient = balanceClient
        self.idClient = idClient
        self.transfer = transfer
    }
    }

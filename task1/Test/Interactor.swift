//
//  Interactor.swift
//  task1
//
//  Created by macBook on 09.03.2023.
//

import Foundation


protocol InteractorInputProtocol {
    init(presenter: InteractorOutputProtocol)
    func GetData()
}

protocol InteractorOutputProtocol: AnyObject {
    func reciveDataToPresenter(data: [String])
    
}

class Interactor: InteractorInputProtocol {


    unowned let presenter: InteractorOutputProtocol
    
    required init(presenter: InteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func GetData() {
      let arrayPhrase = ["Когда б я был, как ты, поэт.",
                         "Предмет его привычных дум;",
                         "Чудак, попав на пир огромный,",
                         "И уж порядком отомстить.",
                         "И промотался наконец.",
                         "С досады взоры опустив,",
                         "«Неужто ты влюблён в меньшую?»"]
        presenter.reciveDataToPresenter(data: arrayPhrase)
    }
   
    
    
    
}

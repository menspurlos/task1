//
//  Presenter.swift
//  task1
//
//  Created by macBook on 09.03.2023.
//

import UIKit

class Presenter: ViewOutPutProtocol {
  
    unowned let view: ViewInputProtocol
    var interactor: InteractorInputProtocol!
    
    required init(view: ViewInputProtocol) {
        self.view = view
    }
}

extension Presenter: InteractorOutputProtocol {
    func reciveDataToPresenter(data: [String]) {
        let random = Int.random(in: 0...data.count-1)
        view.changeTextInLabel(data: data[random])
    }
    
    func getRandomPhraze() {
        interactor.GetData()
    }
   
}


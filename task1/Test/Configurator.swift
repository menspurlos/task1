//
//  Configurator.swift
//  task1
//
//  Created by macBook on 09.03.2023.
//


import Foundation

protocol ConfiguratorInputProtocol {
    func configure(with view: TestViewController)
}

class Configurator: ConfiguratorInputProtocol {
    func configure(with view: TestViewController) {
        let presenter = Presenter(view: view)
        let interactor = Interactor(presenter: presenter)
        
        view.presenter = presenter
        presenter.interactor = interactor
    }
    
    
    
    
}

//
//  TestViewController.swift
//  task1
//
//  Created by macBook on 09.03.2023.
//

import UIKit
import SnapKit

protocol ViewInputProtocol: AnyObject {
    func changeTextInLabel(data: String)
}

protocol ViewOutPutProtocol {
    init(view: ViewInputProtocol)
    func getRandomPhraze()
}


class TestViewController: UIViewController {
    let textLabel = UILabel()
    var presenter: ViewOutPutProtocol!
    private let configurator: ConfiguratorInputProtocol = Configurator()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
       
        navigationControllerConfigure()
        configurator.configure(with: self)

        
    }
    
    
}

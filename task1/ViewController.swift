//
//  ViewController.swift
//  task1
//
//  Created by macBook on 09.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    let button: UIButton = {
        let button = UIButton()
        button.tintColor = .white
        button.setTitle("Вперёд", for: .normal)
        button.layer.cornerRadius = 22
        button.backgroundColor = .blue
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setButton()
        
        
        
    }
    
    func setButton() {
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 200, height: 44))
            make.centerY.centerX.equalToSuperview()
        }
        
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }

    @objc func tapButton() {
        let testViewController = TestViewController()
        navigationController?.pushViewController(testViewController, animated: true)
    }
}

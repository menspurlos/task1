//
//  ExtViewController.swift
//  task1
//
//  Created by macBook on 09.03.2023.
//

import UIKit

extension TestViewController: ViewInputProtocol {
    func changeTextInLabel(data: String) {
        textLabel.text = data
    }
    
    
    
}
 
extension TestViewController {
    func navigationControllerConfigure(){
        
        title = "Случайная фраза"
        navigationController?.navigationBar.backgroundColor = .lightGray
        
    }
    
    func setupUI() {
        setupLabel()
        setupButton()
    }
    
    func setupButton() {
        let button: UIButton = {
            let button = UIButton()
            button.tintColor = .white
            button.setTitle("get random phrase", for: .normal)
            button.layer.cornerRadius = 22
            button.backgroundColor = .blue
            return button
        }()
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(textLabel.snp.bottom).inset(-100)
        }
        
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }
    
    
    func setupLabel() {
        
        textLabel.text = "Тут появится случайный текст, если нажать на кнопку ниже"
        textLabel.backgroundColor = .white
        textLabel.numberOfLines = 0
        textLabel.textAlignment = .center        

        let heightOfLabel: CGFloat = 160
        let equelToTop = UIScreen.main.bounds.height / 2 - heightOfLabel / 2
        
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { make in
            make.height.equalTo(heightOfLabel)
            make.left.right.equalToSuperview().inset(20)
            make.top.equalToSuperview().inset(equelToTop)
        }
    }

    @objc func tapButton() {
        presenter.getRandomPhraze()
    }
        
        
        
        
}
   


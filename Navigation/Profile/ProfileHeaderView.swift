//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Алексей Маяков on 15.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class  ProfileHeaderView: UIView {
  private let image  = UIImageView()
  private let name =  UITextField()
  private let status = UILabel()
  private let myButton  = UIButton()
  private let addText = UITextField()
  private var  statusText  = ""
 
    override init(frame:CGRect){
        super.init(frame:frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        // создание элементов во view
        addSubview(image)
        addSubview(name)
        addSubview(status)
        addSubview(myButton)
        addSubview(addText)
    }
    override func layoutSubviews() {
        configurationFrames()
    }
    
    func configurationFrames() {
        // Переменная для сохранения значения отступа свеху
       //let safeSizeTop = image.safeAreaInsets.top + 16
        image.frame = CGRect(x:self.safeAreaInsets.right + 16 ,y: self.safeAreaInsets.top + 16  ,width: 100,height: 100)
        image.image = UIImage(named: "morty")
        image.layer.borderWidth = 3
        image.layer.borderColor = .init(red: 255, green: 255, blue: 255, alpha: 1)
        image.layer.cornerRadius = 50
        image.layer.masksToBounds = true
        
        
        name.frame = CGRect(x:self.safeAreaInsets.right + 130,y:self.safeAreaInsets.top + 27,width: 140,height: 15)
        name.text = "Evil Morty"
        name.font = .boldSystemFont(ofSize: 18)
        name.textColor = .black
        
        
        myButton.frame = CGRect(x:self.safeAreaInsets.right + 16,y:self.safeAreaInsets.top + 132,width: 382,height: 50)
        myButton.backgroundColor = .systemIndigo
        myButton.setTitle("Show status", for: .normal)
        myButton.layer.cornerRadius = 4
        myButton.layer.cornerRadius = 15
        myButton.layer.backgroundColor = .init(red: 0, green: 100, blue: 255, alpha: 2)
        myButton.setTitleColor(.white, for: .normal)
        myButton.addTarget(self, action: #selector(doOnButton), for: .touchUpInside)
        
        status.frame = CGRect(x:self.safeAreaInsets.right + 130,y:self.safeAreaInsets.top + 72 ,width: 190,height: 15)
        status.text = "Waiting for something..."
        status.font = UIFont(name: "regular", size: 14)
        status.textColor = .gray
        
        addText.frame =  CGRect(x:safeAreaInsets.right + 132,y:self.safeAreaInsets.top + 90,width: 265,height: 40)
        addText.text = "aaaaaas"
        addText.layer.cornerRadius = 12
        addText.font = UIFont(name: "regular", size: 15)
        addText.layer.borderWidth = 1
        addText.layer.backgroundColor = .init(red: 255, green: 255, blue: 255, alpha: 1)
        addText.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        
        }
    
    @objc func doOnButton(){
        print(status.text!)
        status.text = statusText
    }
    
    
    @objc func statusTextChanged(_ textField: UITextField){
        statusText = textField.text ?? "empty"
    }
}

//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Алексей Маяков on 15.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class  ProfileHeaderView: UIView {
  
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var statusTextField: UITextField!
    
    @IBOutlet weak var setStatusButton: UIButton!
    private var  statusText  = ""
    private(set) lazy var newButton: UIButton = {
        let newButton = UIButton()
        newButton.backgroundColor = .red
        newButton.setTitle("Push", for: .normal)
        return newButton
    }()
    
    
    
override func awakeFromNib() {
    configurationFrames()
   
    
    }
    


 /*
    override init(frame:CGRect){
        super.init(frame:frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    */


    override func layoutSubviews() {
         addSubview(newButton)
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
         newButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        newButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor , constant: 0).isActive = true
        newButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 0).isActive = true
       // newButton.bottomAnchor.constraint(equalTo: ProfileHeaderView.safe, constant: 1)
        newButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func configurationFrames() {
  
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = .init(red: 255, green: 255, blue: 255, alpha: 1)
        avatarImageView.layer.cornerRadius = 50
        avatarImageView.layer.masksToBounds = true
        
        
        fullNameLabel.text = "Evil Morty"
        fullNameLabel.font = .boldSystemFont(ofSize: 18)
        fullNameLabel.textColor = .black
        
        

        setStatusButton.backgroundColor = .systemIndigo
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.layer.cornerRadius = 4
        setStatusButton.layer.cornerRadius = 15
        setStatusButton.backgroundColor = .blue
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.addTarget(self, action: #selector(doOnButton), for: .touchUpInside)
        
     
        statusLabel.text = "Waiting for something..."
        statusLabel.font = UIFont(name: "regular", size: 14)
        statusLabel.textColor = .gray
      
        statusTextField.text = "aaaaaas"
        statusTextField.layer.cornerRadius = 12
        statusTextField.font = UIFont(name: "regular", size: 15)
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.backgroundColor = .init(red: 255, green: 255, blue: 255, alpha: 1)
        statusTextField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
  
  }
    
    @objc func doOnButton(){
        print(statusLabel.text!)
        statusLabel.text = statusText
    }
    
    
    @objc func statusTextChanged(_ textField: UITextField){
        statusText = textField.text ?? "empty"
    }
    
  
}

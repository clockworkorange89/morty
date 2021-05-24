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
    
override func awakeFromNib() {
    configurationFrames()
       
    }
    

  private var  statusText  = ""
 /*
    override init(frame:CGRect){
        super.init(frame:frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    */
    /*
    func setupUI() {
        // создание элементов во view
        addSubview(image)
        addSubview(name)
        addSubview(status)
        addSubview(myButton)
        addSubview(addText)
    }
 */
    override func layoutSubviews() {
       // configurationFrames()
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
        setStatusButton.layer.backgroundColor = .init(red: 0, green: 100, blue: 255, alpha: 2)
        setStatusButton.setTitleColor(.white, for: .normal)
     
        
     
        statusLabel.text = "Waiting for something..."
        statusLabel.font = UIFont(name: "regular", size: 14)
        statusLabel.textColor = .gray
      
        statusTextField.text = "aaaaaas"
        statusTextField.layer.cornerRadius = 12
        statusTextField.font = UIFont(name: "regular", size: 15)
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.backgroundColor = .init(red: 255, green: 255, blue: 255, alpha: 1)
  
  }

}

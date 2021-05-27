//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Алексей Маяков on 15.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class  ProfileViewController: UIViewController {
    // Вносить изменения в UIView
    //Создаётся view   выше методов
    private let viMorty = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        //изменить цвет
        view.backgroundColor = .lightGray
        
        // vi.backgroundColor = .red
        //Добавить vi  в качестве subview
        viMorty.layer.shadowOffset = .init(width: 4, height: 4)
        viMorty.layer.shadowRadius = 4
        viMorty.layer.shadowColor = .init(red: 0, green: 0, blue: 0, alpha: 0.5)
        viMorty.layer.shadowOpacity = 0.7
        self.view.addSubview(viMorty)
        //self.viewWillLayoutSubviews()
        print(self.view.frame)
        print(viMorty.bounds)
        
    }
    // Доьавление размера view
    override func viewWillLayoutSubviews(){
        super.viewWillLayoutSubviews()
        viMorty.frame = view.frame
        print(self.view.frame)
        print(viMorty.bounds)
    }
    
}


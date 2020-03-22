//
//  LoginController.swift
//  FireChat
//
//  Created by Sohel Dhengre on 22/03/20.
//  Copyright © 2020 Sohel Dhengre. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: Properties
    
    private var iconImage: UIImageView = {
        let iv = UIImageView()
        iv.image =  UIImage(systemName: "bubble.right")
        iv.tintColor = .white
        return iv
    }()
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: Helpers
    
    func configureUI() {
        self.view.backgroundColor = .systemPink
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.isHidden = true
        configureGradientLayer()
    }
    
    func configureGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemPink.cgColor]
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}

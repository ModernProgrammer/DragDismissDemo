//
//  ViewController.swift
//  DismissViewController
//
//  Created by Diego Bustamante on 8/28/19.
//  Copyright © 2019 Diego Bustamante. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let presentButton : UIButton = {
        let button = UIButton(type: .system)
        let attributedText = NSMutableAttributedString(string: "Present", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 22, weight: .thin)])
        button.setAttributedTitle(attributedText, for: .normal)
        button.addTarget(self, action: #selector(handlePresentView), for: .touchUpInside)
        button.backgroundColor = .white
        button.tintColor = .black
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupPresentButton()
    }
    
    fileprivate func setupPresentButton() {
        view.addSubview(presentButton)
        presentButton.translatesAutoresizingMaskIntoConstraints = false
        presentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        presentButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        presentButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        presentButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        presentButton.layer.cornerRadius = 20
        presentButton.layer.borderColor = UIColor.black.cgColor
        presentButton.layer.borderWidth = 0.5
    }
    
    @objc func handlePresentView() {
        let dismissViewController = DismissViewController()
        dismissViewController.modalPresentationStyle = .overCurrentContext
        present(dismissViewController, animated: true)
    }

}


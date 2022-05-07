//
//  WelcomeController4.swift
//  final hack
//
//  Created by Andrew Jae Hahn on 5/4/22.
//

import Foundation
import UIKit
import SwiftUI


class Leaderboard4: UIViewController {
    
    let dBlue = UIColor(red: 2/255, green: 114/255, blue: 198/255, alpha: 100)
    let lBlue = UIColor(red: 159/255, green: 212/255, blue: 252/255, alpha: 100)
    
    let nextButton: UIButton = {
        let field = UIButton()
        field.setTitle("Next", for: .normal)
        field.setTitleColor(.white, for: .normal)
        field.backgroundColor = UIColor(red: 2/255, green: 114/255, blue: 198/255, alpha: 100)
//        set width and height of button
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor(red: 2/255, green: 114/255, blue: 198/255, alpha: 100).cgColor
        field.layer.cornerRadius = 17
        field.translatesAutoresizingMaskIntoConstraints = false
        field.addTarget(self, action: #selector(pushViewController), for: .touchUpInside)
        return field
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named:"homePageBack")!)
        view.backgroundColor = .white
        setupConstraints()
    }
    
    func setupConstraints(){
        //constraints for signUpField
        NSLayoutConstraint.activate([])
    }
    
    @objc func pushViewController(){
        navigationController?.pushViewController(CreatePod(), animated: true)
    }
    
}


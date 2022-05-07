//
//  PodCreate.swift
//  final hack
//
//  Created by Andrew Jae Hahn on 5/4/22.
//

import Foundation
import UIKit
import SwiftUI


class JoinOrCreate: UIViewController {
    
    let dBlue = UIColor(red: 2/255, green: 114/255, blue: 198/255, alpha: 100)
    let lBlue = UIColor(red: 159/255, green: 212/255, blue: 252/255, alpha: 100)
    
    
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


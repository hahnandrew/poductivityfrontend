//
//  MainController.swift
//  final hack
//
//  Created by Andrew Jae Hahn on 4/28/22.
//

import UIKit
import SwiftUI

//color values

class MainController: UIViewController {
    
    //color values
    let dBlue = UIColor(red: 2/255, green: 114/255, blue: 198/255, alpha: 100)
    let lBlue = UIColor(red: 159/255, green: 212/255, blue: 252/255, alpha: 100)
    
    var signInTitle = UILabel() //want this to be podactivity on home page
    var sealLogo = UIImageView() //want this to be seal logo on home page
    var signUp = UIButton() //want this to be signup
    var signIn = UIButton() //want this to be signin
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = UIColor(patternImage: UIImage(named:"homePageBack")!)
        view.backgroundColor = .white
        
        signInTitle.text = "Poductivity"
        signInTitle.textColor = dBlue
//        signInTitle.font = UIFont(name: "Open Sans", size: 40)
        signInTitle.font = .systemFont(ofSize: 40, weight: .bold)
        signInTitle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signInTitle)
        
        sealLogo.image = UIImage(named: "sealLogo")
        sealLogo.contentMode = .scaleAspectFill
        sealLogo.clipsToBounds = true
        sealLogo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sealLogo)
        
        signUp.setTitle("Create An Account", for: .normal)
        signUp.setTitleColor(.white, for: .normal)
        signUp.backgroundColor = dBlue
//        set width and height of button
        signUp.layer.borderWidth = 1
        signUp.layer.borderColor = dBlue.cgColor
        signUp.layer.cornerRadius = 55/2
        signUp.translatesAutoresizingMaskIntoConstraints = false
        
        signUp.addTarget(self, action: #selector(pushViewController), for: .touchUpInside)
        view.addSubview(signUp)
        
        signIn.setTitle("Sign In", for: .normal)
        signIn.setTitleColor(.white, for: .normal)
        signIn.backgroundColor = lBlue
//        set width and height of button
        signIn.layer.borderWidth = 1
        signIn.layer.borderColor = lBlue.cgColor
        signIn.layer.cornerRadius = 55/2
        signIn.translatesAutoresizingMaskIntoConstraints = false
//        signIn.addTarget(self, action: #selector(pushViewController), for: .touchUpInside)
        view.addSubview(signIn)
        
        setupConstraints()
    }
        
    func setupConstraints(){
        //constraints for signintitle
        NSLayoutConstraint.activate([
            signInTitle.topAnchor.constraint(equalTo: view.centerYAnchor),
            signInTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        //constrains for seal logo
        NSLayoutConstraint.activate([
            sealLogo.topAnchor.constraint(equalTo: signInTitle.bottomAnchor, constant: 15),
            sealLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sealLogo.widthAnchor.constraint(equalToConstant: 120.16),
            sealLogo.heightAnchor.constraint(equalToConstant: 106.06)
            ])
        // constraints for signup buttom
        
        NSLayoutConstraint.activate([
            signUp.topAnchor.constraint(equalTo: sealLogo.bottomAnchor, constant: 15),
            signUp.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUp.widthAnchor.constraint(equalToConstant: 300),
            signUp.heightAnchor.constraint(equalToConstant: 55)
            ])
        
        NSLayoutConstraint.activate([
            signIn.topAnchor.constraint(equalTo: signUp.bottomAnchor, constant: 15),
            signIn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signIn.widthAnchor.constraint(equalToConstant: 300),
            signIn.heightAnchor.constraint(equalToConstant: 55)
            ])
    }
    
    @objc func pushViewController(){
        navigationController?.pushViewController(SignUpController(), animated: true)
    }
    
    
    
//    @objc func presentViewController(){
//        present(EditorController(), animated: true, completion: nil)
//    }
    
}


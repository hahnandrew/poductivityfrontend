//
//  SignUpController.swift
//  final hack
//
//  Created by Andrew Jae Hahn on 5/1/22.
//

import UIKit
import SwiftUI


class SignInController: UIViewController {
    

    let pfp: UIImageView = {
        let field = UIImageView()
        field.image = UIImage(named: "pfp")
        field.contentMode = .scaleAspectFill
        field.clipsToBounds = true
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    //username
    let userField: UITextField = {
        let field = UITextField()
        field.placeholder = "Username"
        field.font = .systemFont(ofSize: 25)
        field.textColor = .black
        field.textAlignment = .left
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    let pwField: UITextField = {
        let field = UITextField()
        field.placeholder = "Password"
        field.font = .systemFont(ofSize: 25)
        field.textColor = .black
        field.textAlignment = .left
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    let signIn: UIButton = {
        let field = UIButton()
        field.setTitle("Sign Up", for: .normal)
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
        view.addSubview(pfp)
        view.addSubview(userField)
        view.addSubview(signIn)
        view.addSubview(pwField)
        setupConstraints()
    }
    
    func setupConstraints(){
        //constraints for signUpField
        NSLayoutConstraint.activate([
            pfp.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            pfp.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pfp.widthAnchor.constraint(equalToConstant: 120.16),
            pfp.heightAnchor.constraint(equalToConstant: 106.06)
            ])
        
        NSLayoutConstraint.activate([
            userField.topAnchor.constraint(equalTo: pfp.bottomAnchor, constant: 5),
            userField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        NSLayoutConstraint.activate([
            pwField.topAnchor.constraint(equalTo: userField.bottomAnchor, constant: 5),
            pwField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    
        
        NSLayoutConstraint.activate([
            signIn.topAnchor.constraint(equalTo: pwField.bottomAnchor, constant: 5),
            signIn.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
    @objc func pushViewController(){
        navigationController?.pushViewController(CreatePod(), animated: true)
    }
    
}


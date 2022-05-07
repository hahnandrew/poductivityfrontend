//
//  SignUpController.swift
//  final hack
//
//  Created by Andrew Jae Hahn on 5/1/22.
//

import UIKit
import SwiftUI
import Alamofire

class SignUpController: UIViewController {
    

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
    
    let pwReField: UITextField = {
        let field = UITextField()
        field.placeholder = "Re-enter Password"
        field.font = .systemFont(ofSize: 25)
        field.textColor = .black
        field.textAlignment = .left
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    let signUpButton: UIButton = {
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
        view.addSubview(pwReField)
        view.addSubview(pfp)
        view.addSubview(userField)
        view.addSubview(signUpButton)
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
            pwReField.topAnchor.constraint(equalTo: pwField.bottomAnchor, constant: 5),
            pwReField.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: pwReField.bottomAnchor, constant: 5),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
    @objc func pushViewController(){
        navigationController?.pushViewController(WelcomeController1(), animated: true)
    }
    
//    func showAlert() {
//        let alert = UIAlertController(title: "Invalid Username", message: "Input a nonempty String", preferredStyle: .alert)
//        alert.addTextField { textfield in
//            textfield.placeholder = "Insert Username"
//        }
//
//        let invalidate = { self.userField.invalidate(placeHolder: "Insert Username") }
//        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { _ in invalidate() })
//
//        alert.addAction((UIAlertAction(title: "Update", style: .default) { _ in
//            guard let title = alert.textFields?[0].text, !title.isEmpty else {
//                invalidate(); return }
//            self.userField.text = title
//            }
//        }
//        present(alert, animated: true, completion: nil)
//    }

}

extension UITextField {
    
    func invalidate(placeHolder: String) {
        attributedPlaceholder = NSAttributedString(
            string: placeHolder,
            attributes: [.foregroundColor : UIColor.systemRed.withAlphaComponent(0.55) ]
        )
    }
    
}

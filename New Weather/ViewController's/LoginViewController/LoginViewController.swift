//
//  LoginViewController.swift
//  New Weather
//
//  Created by Александр on 28.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: - Outlet and properties
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollBackView: UIView!
  
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var signButton: UIButton!
    
    
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboarWillShow(notification:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardDidHideNotification, object: nil)
        
        let hideKeyRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView.addGestureRecognizer(hideKeyRecognizer)
        
        scrollView.backgroundColor = UIColor.clear
        scrollBackView.backgroundColor = UIColor.clear
        signButton.layer.cornerRadius = 20
        
        
        
        
       
    }
    
    //MARK: - Method's
    
    func animateErrorAction(element: UIControl) {
        
        
        element.transform = CGAffineTransform(translationX: -10,
                                                     y: 0)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 0.5,
                       options: .curveEaseOut,
                       animations: {
                           element.transform = .identity
                       },
                       completion: nil)
    }
    
    
    func checkLoginPass(login: String?, password: String?){
        
        performSegue(withIdentifier: "fromLoginToMyCities", sender: nil)
//        let login = login ?? "nil"
//        let password = password ?? "nil"
//
//        if login == "admin" && password == "123" {
//            performSegue(withIdentifier: "fromLoginToMyCities", sender: nil)
//        } else {
//            loginField.placeholder = "Enter admin"
//            loginField.backgroundColor = UIColor(red: 0.92, green: 0.59, blue: 0.58, alpha: 1.00)
//            animateErrorAction(element: loginField)
//
//            passwordField.placeholder = "Enter 123"
//            passwordField.backgroundColor = UIColor(red: 0.92, green: 0.59, blue: 0.58, alpha: 1.00)
//            animateErrorAction(element: passwordField)
//
//            animateErrorAction(element: signButton)
          

//        }
        
    }
    
    //MARK: - Selector's
    
    @objc func keyboarWillShow(notification: Notification) {
        let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue
        guard let keyboardHeight = keyboardSize?.height else {return}

        let contentInsets = UIEdgeInsets (top: 0,
                                          left: 0,
                                          bottom: keyboardHeight,
                                          right: 0)
        
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }

    @objc func keyboardWillHide(notification: Notification) {
        
        let contentInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
    @objc func hideKeyboard() {
        scrollBackView.endEditing(true)
    }
    
    //MARK: - Action
    
    @IBAction func signButtonPress(_ sender: Any) {
        
        checkLoginPass(login: loginField.text, password: passwordField.text)
        
    }
    
    
    //MARK: - Deinit
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

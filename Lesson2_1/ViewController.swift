//
//  ViewController.swift
//  Lesson2_1
//
//  Created by Dzen on 04.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginInput: UITextField!

    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var UiScrollView: UIScrollView!
    
    @IBOutlet weak var authMessage: UILabel!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
            // Получаем текст логина
                    let login = loginInput.text!
                    // Получаем текст-пароль
                    let password = passwordInput.text!
                    
                    // Проверяем, верны ли они
                    if login == "admin" && password == "123456" {
                        print("успешная авторизация")
                        authMessage.text = ("Успешная авторизация")
                    } else {
                        print("неуспешная авторизация")
                        authMessage.text = ("Неуспешная авторизация")
                    }

        
    }
    
    
    
    
    // Когда клавиатура появляется
       @objc func keyboardWasShown(notification: Notification) {
           
           // Получаем размер клавиатуры
           let info = notification.userInfo! as NSDictionary
           let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
           let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
           
           // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
           self.UiScrollView?.contentInset = contentInsets
           UiScrollView?.scrollIndicatorInsets = contentInsets
       }
       
       //Когда клавиатура исчезает
       @objc func keyboardWillBeHidden(notification: Notification) {
           // Устанавливаем отступ внизу UIScrollView, равный 0
           let contentInsets = UIEdgeInsets.zero
           UiScrollView?.contentInset = contentInsets
       }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            // Подписываемся на два уведомления: одно приходит при появлении клавиатуры
            NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
            // Второе — когда она пропадает
            NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        }
    override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        }
    @objc func hideKeyboard() {
            self.UiScrollView?.endEditing(true)
        }
    override func viewDidLoad() {
            super.viewDidLoad()
         
            // Жест нажатия
            let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
            // Присваиваем его UIScrollVIew
        UiScrollView?.addGestureRecognizer(hideKeyboardGesture)
        }

}

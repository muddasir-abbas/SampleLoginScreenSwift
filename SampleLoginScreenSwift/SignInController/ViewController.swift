//
//  ViewController.swift
//  SampleLoginScreenSwift
//
//  Created by Macbook on 10/01/2024.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var emailTxtFldView: RoundView!
    @IBOutlet weak var passwordTxtFldView: RoundView!
    @IBOutlet weak var gmailTextField: SkyFloatingLabelTextField!
    
    @IBOutlet weak var passwordTextFld: SkyFloatingLabelTextField!
    
    
    @IBOutlet weak var viewForCornerRadius: UIView!
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var window: UIWindow?
//    var signInConfig: GIDConfiguration?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewForCornerRadius.layer.cornerRadius = 25
        viewForCornerRadius.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        viewForCornerRadius.layer.masksToBounds = true
        
        gmailTextField.delegate = self
        passwordTextFld.delegate = self
        navigationController?.isNavigationBarHidden = true
        gmailTextField.lineView.isHidden = true
        passwordTextFld.lineView.isHidden = true
        gmailTextField.placeholder = "Gmail"
        gmailTextField.title = "Gmail"
        passwordTextFld.placeholder = "Password"
        passwordTextFld.largeContentTitle = "Password"
        btnLogin.addTarget(self, action: #selector(getter: btnLogin), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @IBAction func signUpBtn(_ sender: Any) {
//                let sb = UIStoryboard.init(name: "Main", bundle: nil)
//                let signupVC = sb.instantiateViewController(identifier: "Details") as!
//                Details
//                self.navigationController?.pushViewController(signupVC, animated: true)
            }
//
        @IBAction func forgotPasswordBtn(_ sender: Any) {
//            
//            let sb = UIStoryboard.init(name: "Main", bundle: nil)
//            let signupVC = sb.instantiateViewController(withIdentifier: "phone") as! phone
//            self.navigationController?.pushViewController(signupVC, animated: true)
        }
        @IBAction func logInBtn(_ sender: Any) {
//            if(self.gmailTextField.text!.trim == "") {
//                SVProgressHUD.showError(withStatus: "Please enter user email")
//            }
//            else if(self.gmailTextField.text!.trim.isValidEmail == false) {
//                SVProgressHUD.showError(withStatus: "Please enter valid email")
//            }
//            else if(self.passwordTextFld.text! == "") {
//                SVProgressHUD.showError(withStatus: "Please enter password")
//            }
//            else {
//                self.view.endEditing(true)
//                self.userLogin()
//            }
        }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == gmailTextField {
            emailTxtFldView.cornerBorderColor = UIColor(red: 108/255, green: 169/255, blue: 237/255, alpha: 1)
        }
        else {
            emailTxtFldView.cornerBorderColor = .gray
        }
        if textField == passwordTextFld {
            self.passwordTxtFldView.cornerBorderColor = UIColor(red: 108/255, green: 169/255, blue: 237/255, alpha: 1)
        }
        else {
            self.passwordTxtFldView.cornerBorderColor = .gray
          }
     }


}


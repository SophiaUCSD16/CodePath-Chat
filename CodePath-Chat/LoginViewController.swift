//
//  LoginViewController.swift
//  CodePath-Chat
//
//  Created by Jane on 2/25/17.
//  Copyright © 2017 Jingya Huang. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {


    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        let user = PFUser()
        user.username = emailTextField.text
        user.password = passwordTextField.text
        
        user.signUpInBackground { (success: Bool, error: Error?) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("Yay! We are signed up, let's use the app 👍")
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

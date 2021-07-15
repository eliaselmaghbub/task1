//
//  ViewController.swift
//  Task 1
//
//  Created by ios developer on 7/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Logo: UIImageView!

    @IBOutlet weak var LoginButton: UIButton!
  
    
    @IBOutlet weak var backgrounfimage: UIImageView!
    @IBOutlet weak var SignupNewAcccount: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        applyButtonStyle(Button: SignupNewAcccount)
        applyButton2Style(Button: LoginButton)
}
    @IBAction func SignUpButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToSignUp", sender: self)
    }
    
   //MARK: - StyleFunctions
    func applyButtonStyle(Button: UIButton!){
        Button.layer.cornerRadius = 24
        Button.layer.masksToBounds = true
    }
    
    func applyButton2Style(Button: UIButton!){
        applyButtonStyle(Button: LoginButton)
        Button.layer.borderColor = CGColor(red: 251/255, green: 188/255, blue: 0, alpha: 1)
        Button.layer.borderWidth = 2.0
    }


}

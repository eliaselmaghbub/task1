//
//  YourNameViewController.swift
//  Task 1
//
//  Created by ios developer on 7/13/21.
//

import UIKit

class YourNameViewController: UIViewController {

    @IBOutlet weak var registrationButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var enterYourNameCodeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyTextFieldStyle(TextField: enterYourNameCodeTextField)
        applyViewStyle(view: backgroundView)
        applyButtonStyle(Button: registrationButton)
 
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }
    
    //MARK: - StyleFunctions
    
    func applyTextFieldStyle(TextField: UITextField!){
        TextField.layer.cornerRadius = 24
        TextField.layer.masksToBounds = true
        TextField.layer.borderColor = CGColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        TextField.layer.borderWidth = 1.5
    }
    func applyViewStyle(view: UIView!){
        view.layer.cornerRadius = 36
        view.layer.masksToBounds = true
    }
    func applyButtonStyle(Button: UIButton!){
        Button.layer.cornerRadius = 24
        Button.layer.masksToBounds = true
    }

}
    

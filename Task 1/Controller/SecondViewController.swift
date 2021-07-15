//
//  SecondViewController.swift
//  Task 1
//



//

import UIKit

class SecondViewController: UIViewController {
    
    

    @IBOutlet weak var WritePhoneNumber: UITextField!
    @IBOutlet weak var nextButton: UIButton!    
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyTextFieldStyle(TextField: WritePhoneNumber)
        applyViewStyle(view: backgroundView)
        applyButtonStyle(Button: nextButton)
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToVerification", sender: self)
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

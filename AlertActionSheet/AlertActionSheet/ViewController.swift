//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by Macbook Air on 5.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelArea: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func basicAlertShowButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Basic Alert TITLE", message: "Message", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel){
            action in print("Click CANCEL")
        }
        
        alertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "OKAY", style: .destructive){
            action in print("Click OK")
        }
        
        alertController.addAction(okAction)

        
        self.present(alertController, animated: true)
    }
    
    @IBAction func privateAlertShowButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "PRIVATE ALERT TITLE", message: "This is private alert", preferredStyle: .alert)
        
        alertController.addTextField(){ textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
        }
        
        alertController.addTextField(){ textfield in
            textfield.placeholder = "Password"
            textfield.isSecureTextEntry = true
        }
        
        let saveAction = UIAlertAction(title: "SAVE", style: .destructive){
            action in print("Click SAVE")
            
        let incomingEmail = (alertController.textFields![0] as UITextField).text!
        let incomingPass = (alertController.textFields![1] as UITextField).text!
            
            self.labelArea.text = "Email \(incomingEmail) - Pass: \(incomingPass)"
            
        }
        
        alertController.addAction(saveAction)
        self.present(alertController, animated: true)
        
        
    }
    
    @IBAction func actionSheetShowButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Action Sheet TITLE", message: "Message", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel){
            action in print("Action Sheet : CANCEL")
        }
        
        alertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "OKAY", style: .destructive){
            action in print("Action Sheet : Click OK")
        }
        
        alertController.addAction(okAction)

        
        self.present(alertController, animated: true)
        
    }
}


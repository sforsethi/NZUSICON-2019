//
//  ContactUsVC.swift
//  NZUSICON 2019
//
//  Created by The Taste Affair on 03/01/19.
//  Copyright © 2019 Raghav Sethi. All rights reserved.
//

import UIKit
import MessageUI

class ContactUsVC: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissB(_ sender: Any) {
        self.resignFirstResponder()
    }
    @IBAction func dismissKeyboard(_ sender: Any) {
        self.resignFirstResponder()
    }
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var messageField: UITextField!
    @IBOutlet weak var subjectField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBAction func submitButton(_ sender: Any) {
         print(MFMailComposeViewController .canSendMail())
        if(MFMailComposeViewController .canSendMail())    {
            
            print(MFMailComposeViewController .canSendMail())
        
        let toRecipients = ["rsraghavsethi@gmail.com"]
        
        let mc: MFMailComposeViewController = MFMailComposeViewController()
     
        mc.mailComposeDelegate = self
       
        mc.setToRecipients(toRecipients)
        
        mc.setSubject(subjectField.text!)
       
        mc.setMessageBody("Name: \(nameField.text!) \n\nEmail: \(emailField.text!) \n\nPhone Number: \(phoneNumberField.text!) \n\nMessage: \(messageField.text!) \n\nSubject: \(subjectField.text!)", isHTML: false)
            

            UIApplication.shared.keyWindow?.rootViewController?.present(mc, animated: true)

            
        }
        
        else    {
            print("Cannot send Email!")
            showMailError()
        }
    }
    
    func showMailError()    {
        
        let sendMailErrorAlert = UIAlertController(title: "Could Not Send Mail !", message: "Make Sure Mail App is Enabled", preferredStyle: .alert)
        
        let dismiss = UIAlertAction(title: "Okay", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
}

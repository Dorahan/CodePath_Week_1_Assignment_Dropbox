//
//  CreateAccountViewController.swift
//  Dropbox
//
//  Created by Dorahan Arapgirlioglu on 2/4/16.
//  Copyright © 2016 Dorahan Arapgirlioglu. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var backToWelcomeBtn: UIButton!
    @IBOutlet weak var createAccountBtn: UIButton!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordView1: UIImageView!
    @IBOutlet weak var passView2: UIImageView!
    @IBOutlet weak var passView3: UIImageView!
    @IBOutlet weak var passView4: UIImageView!
    
    
    var firstName = false
    var lastName = false
    var email = false
    var password = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTouchBack(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }

    // Watching all textFields, if more than 1 character
    
    @IBAction func firstNameEdit(sender: AnyObject) {
        firstName = firstNameField.text?.characters.count > 0
        
        if firstName && lastName && email && password {
            createAccountBtn.enabled = true
            print("enabled")
        } else {
            createAccountBtn.enabled = false
        }
        
    }
    
    @IBAction func lastNameEdit(sender: AnyObject) {
        lastName = lastNameField.text?.characters.count > 0
        
        if firstName && lastName && email && password {
            createAccountBtn.enabled = true
            print("enabled")
        } else {
            createAccountBtn.enabled = false
        }
        
    }
    
    @IBAction func emailEdit(sender: AnyObject) {
        email = emailField.text?.characters.count > 0
        
        if firstName && lastName && email && password {
            createAccountBtn.enabled = true
            print("enabled")
        } else {
            createAccountBtn.enabled = false
        }
        
    }
    
    @IBAction func passwordEdit(sender: AnyObject) {
        password = passwordField.text?.characters.count > 4
        
        if firstName && lastName && email && password {
            createAccountBtn.enabled = true
            print("enabled")
        } else {
            createAccountBtn.enabled = false
        }
        
        
        // PASS STRENGTH IMAGE ALPHAS
        //______________________________________________________________
        
        //first image
        if passwordField.text?.characters.count > 0 && passwordField.text?.characters.count < 3 {
            passwordView1.alpha = 1
        } else {
            passwordView1.alpha = 0
        }
        
        //second image
        if passwordField.text?.characters.count > 2 && passwordField.text?.characters.count < 4 {
            passView2.alpha = 1
        } else {
            passView2.alpha = 0
        }
        
        //third image
        if passwordField.text?.characters.count > 3 && passwordField.text?.characters.count < 5 {
            passView3.alpha = 1
        } else {
            passView3.alpha = 0
        }
        
        //fourth image
        if passwordField.text?.characters.count > 4 {
            passView4.alpha = 1
        } else {
            passView4.alpha = 0
        }
        
        //______________________________________________________________
        
        
        
    }
    
    
//    func checkButtonValue(){
//        /*
//        if firstName && lastName && email && password {
//        createAccountBtn.enabled = true
//        }
//        */
//        print("say what")
//    }
    
    @IBAction func showActionSheet(sender: AnyObject) {
        //Create the AlertController
        let actionSheetController: UIAlertController = UIAlertController(title: "", message: "Before you can complete your registration, you must accept the Dropbox Terms of Service", preferredStyle: .ActionSheet)
        
        //Create and add first option action
        let iAgreeAction: UIAlertAction = UIAlertAction(title: "I Agree", style: .Default) { action -> Void in
            //Code for going to the next view controller here.
            self.performSegueWithIdentifier("createdAccountSegue", sender: self)
            
        }
        actionSheetController.addAction(iAgreeAction)
        
        //Create and add a second option action
        let viewTermsAction: UIAlertAction = UIAlertAction(title: "View Terms", style: .Default) { action -> Void in
            //Code for terms goes here
            self.performSegueWithIdentifier("termsSegue", sender: self)
    
            
        }
        actionSheetController.addAction(viewTermsAction)
        
        
        //Present the AlertController
        self.presentViewController(actionSheetController, animated: true, completion: nil)
    }
    

    
    
    
    
    
    
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

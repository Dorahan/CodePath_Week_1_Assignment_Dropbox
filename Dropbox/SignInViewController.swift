//
//  SignInViewController.swift
//  Dropbox
//
//  Created by Dorahan Arapgirlioglu on 2/4/16.
//  Copyright © 2016 Dorahan Arapgirlioglu. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var backToWelcomeBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
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

    
    @IBAction func emailEdit(sender: AnyObject) {
        email = emailField.text?.characters.count > 0
        
        if email && password {
            signInBtn.enabled = true
        } else {
            signInBtn.enabled = false
        }
        
    }
    
    @IBAction func passwordEdit(sender: AnyObject) {
        password = passwordField.text?.characters.count > 0
        
        if email && password {
            signInBtn.enabled = true
        } else {
            signInBtn.enabled = false
        }
        
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func showActionSheet(sender: AnyObject) {
        //Create the AlertController
        let actionSheetController: UIAlertController = UIAlertController(title: "", message: "", preferredStyle: .ActionSheet)
        
        //Create and add first option action
        let forgotAction: UIAlertAction = UIAlertAction(title: "Forgot Password?", style: .Default) { action -> Void in
            //Code for going to the next view controller here.
            
            
        }
        actionSheetController.addAction(forgotAction)
        
        //Create and add a second option action
        let singleSignAction: UIAlertAction = UIAlertAction(title: "Single Sign-On", style: .Default) { action -> Void in
            //Code goes here
          
        }
        actionSheetController.addAction(singleSignAction)
        
        //Create and add a third option action
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
        
        }
        actionSheetController.addAction(cancelAction)
        
        //Present the AlertController
        self.presentViewController(actionSheetController, animated: true, completion: nil)
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

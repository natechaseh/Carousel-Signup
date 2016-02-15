//
//  LoginViewController.swift
//  Carousel Signup
//
//  Created by Nathaniel Hajian on 2/10/16.
//  Copyright © 2016 Nathaniel Hajian. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {


    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        scrollView.contentSize = scrollView.frame.size
        scrollView.contentInset.bottom = 100
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -130
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func keyboardWillShow(notification: NSNotification!) {
        
        
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        // Scroll the scrollview up
        scrollView.contentOffset.y = scrollView.contentInset.bottom
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    
    
    @IBAction func didPressLogin(sender: AnyObject) {
        
        activityIndicator.startAnimating()
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty{
            
            let alertController  = UIAlertController(title: "Email Required", message: "Please enter your email address.", preferredStyle: .Alert)
            
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
            }
            alertController.addAction(cancelAction)
            presentViewController(alertController, animated: true){
            }
            self.activityIndicator.stopAnimating()
        }else if emailField.text == "natechaseh" && passwordField.text == "password"{
            delay(2, closure: { () -> () in
                self.activityIndicator.stopAnimating()
                self.performSegueWithIdentifier("loginSegue", sender: nil)
                
            })
        }else{
            delay(2, closure: { () -> () in
                self.activityIndicator.stopAnimating()
                let failController  = UIAlertController(title: "Sign In Failed", message: "Incorrect email or password.", preferredStyle: .Alert)
                
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                }
                failController.addAction(cancelAction)
                self.presentViewController(failController, animated: true){
                }
                
                })
            }
            
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    



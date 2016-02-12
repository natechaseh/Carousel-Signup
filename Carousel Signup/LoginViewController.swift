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
        
        self.activityIndicator.startAnimating()
        
        delay(2) { () -> () in
            
            if self.emailField.text == "nate" || self.passwordField.text == "pass" {
                
                self.activityIndicator.stopAnimating()
                
                self.performSegueWithIdentifier("loginSegue", sender: nil)
                
                
            } else {
                
                
                self.activityIndicator.stopAnimating()
                
                let alertController = UIAlertController(title: "Error", message: "Wrong credentials", preferredStyle: .Alert)
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: { (UIAlertAction) -> Void in
                })
                alertController.addAction(cancelAction)
                self.presentViewController(alertController, animated: true
                    , completion: {
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
    
    

}

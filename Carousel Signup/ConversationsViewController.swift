//
//  ConversationsViewController.swift
//  Carousel Signup
//
//  Created by Nathaniel Hajian on 2/13/16.
//  Copyright © 2016 Nathaniel Hajian. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    
    @IBOutlet weak var backButton: UIButton!
   
    @IBAction func backButton(sender: AnyObject) {
        
        navigationController?.popToRootViewControllerAnimated(true)
        
    }
        
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

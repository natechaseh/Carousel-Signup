//
//  SettingsViewController.swift
//  Carousel Signup
//
//  Created by Nathaniel Hajian on 2/13/16.
//  Copyright © 2016 Nathaniel Hajian. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var xButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = imageView.image!.size
        
        // Do any additional setup after loading the view.
    }

    @IBAction func xButton(sender: AnyObject) {
        

        
        dismissViewControllerAnimated(true, completion: nil)
        
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

//
//  IntroViewController.swift
//  Carousel Signup
//
//  Created by Nathaniel Hajian on 2/10/16.
//  Copyright © 2016 Nathaniel Hajian. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var introScrollView: UIScrollView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScrollView.contentSize = CGSize(width: 320, height: 1136)

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

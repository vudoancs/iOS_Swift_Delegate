//
//  GenderViewController.swift
//  gender
//
//  Created by hansung on 05/07/2018.
//  Copyright © 2018 LadoStudio. All rights reserved.
//

import UIKit
//Step 3 conform the protocol here
class GenderViewController: UIViewController,SmartDelegate {
    
    

    @IBOutlet weak var lblAnswer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let nav = segue.destination as? UINavigationController, let svc = nav.topViewController as?  CheckGenderViewController{
            svc.delegate = self
        }
    }
 
    func updateAnswer(_ answer: String) {
        lblAnswer.text = answer
    }

}

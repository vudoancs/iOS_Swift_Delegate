//
//  CheckGenderViewController.swift
//  gender
//
//  Created by hansung on 05/07/2018.
//  Copyright © 2018 LadoStudio. All rights reserved.
//

import UIKit
//Step 1: add a Protocol here
protocol SmartDelegate: class {
    func updateAnswer(_ answer: String)
}
class CheckGenderViewController: UIViewController {
    //Step 2: create a delegate property here and don't forget to make it weak
    weak var delegate: SmartDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var isMan: UISwitch!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func goBack(_ sender: Any) {
        delegate?.updateAnswer(isMan.isOn ? "You are a man."  : "You may be a woman.")
        navigationController?.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  LifeCycle-1
//
//  Created by 김정연 on 2022/07/30.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var uITextField: UITextField!
    
    @IBAction func didTapAction(_ sender: Any) {
        
        let data : String = uITextField.text!
        
        //데이터 넘겨주기
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController.result = data
        
        self.present(secondViewController, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("First: viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("First: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("First: viewDidAppear")

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("First: viewDidDisappear")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("First: viewWillDisappear")

    }


}


//
//  ViewController.swift
//  customtable
//
//  Created by 정평두 on 2017. 12. 16..
//  Copyright © 2017년 moontomoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var modelList: [LocationModel] = []
    
    @IBAction func btn(_ sender: Any) {
        
        let contentVC = MemoListVC()
        contentVC.delegate=self
        
        
        contentVC.modelList=self.modelList
        let alert = UIAlertController(title:nil, message:nil, preferredStyle: .alert)
        alert.setValue(contentVC, forKey: "contentViewController")
        let okAction = UIAlertAction(title:"OK", style:.default)
        alert.addAction(okAction)
        self.present(alert, animated: true) // 3
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


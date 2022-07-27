//
//  ViewController.swift
//  TestQuickActionMenu
//
//  Created by luxiaofei on 2022/7/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let alertVC = UIAlertController.init(title: "9999", message: "8888", preferredStyle: .alert)
        UIApplication.shared.connectedScenes.map({$0 as? UIWindowScene}).compactMap({$0}).first?.windows.first?.rootViewController?.present(alertVC, animated: true, completion: nil)
    }

}


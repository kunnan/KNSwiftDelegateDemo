//
//  KNSubViewDelegate.swift
//  KNSwiftDelegateDemo
//
//  Created by devzkn on 08/05/2018.
//  Copyright © 2018 devzkn. All rights reserved.
//
import Foundation
import UIKit
//1)- 创建协议 、声明协议方法
protocol KNSubViewDelegate {
    func backStr(str: String)
}
class KNsubViewController: UIViewController {
    //- 2)创建一个代理属性
    var delegate: KNSubViewDelegate?
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func back(_ sender: Any) {
        //3)- 执行协议方法
        /// 执行代理方法，将值回传
        delegate?.backStr(str: textField.text ?? "")
        /// pop
        _ = navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }
}




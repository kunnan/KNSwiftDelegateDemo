//
//  ViewController.swift
//  KNSwiftDelegateDemo
//
//  Created by devzkn on 08/05/2018.
//  Copyright © 2018 devzkn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "KNsubViewController") as! KNsubViewController
        self.navigationController?.pushViewController(viewController, animated: true)
        //2) 设置代理为自己
        viewController.delegate = self
    }
}
/// 1)使用扩展继承协议 实现协议方法 可以分离代码
extension ViewController: KNSubViewDelegate{
    /// 3)实现代理方法
    func backStr(str: String) {
        self.textF.text = str
    }
}

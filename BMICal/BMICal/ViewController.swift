//
//  ViewController.swift
//  BMICal
//
//  Created by SusumuShimoda on 2020/11/19.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var Result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        体重・身長デリゲート
        height.delegate = self
        weight.delegate = self
        // Do any additional setup after loading the view.
    }
//    TestField外をタップすると閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            weight.resignFirstResponder()
        }

//    ボタン操作
    @IBAction func Do(_ sender: Any) {
//        身長・体重の小数点
        let dheight = Double(height.text!)
        let dweight = Double(weight.text!)
//        身長の2乗
        let dheight2 = dheight! * dheight!
//        BMI計算
        let bmi = String(dweight! / dheight2)
//        結果表示
        Result.text = ("あなたのBMIは" + bmi + "です")
    }
    
}


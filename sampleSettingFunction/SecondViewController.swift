//
//  SecondViewController.swift
//  sampleSettingFunction
//
//  Created by Eriko Ichinohe on 2017/09/15.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UserDefaultからデータを取り出す
        //もし、保存されてる情報が存在しない場合、trueを初期値とする
        
        //UserDefaultを操作するためのオブジェクトを作成
        var myDefault = UserDefaults.standard
        
        var imageSwitchFlag = true //保存されてる情報を格納する変数
    
        if myDefault.object(forKey: "imageSwitchFlag") != nil{
            //保存されてる情報が存在している
            
            imageSwitchFlag = myDefault.object(forKey: "imageSwitchFlag") as! Bool
            
        }
        
        
        print(imageSwitchFlag)
        
        imageSwitch.isOn = imageSwitchFlag
        
    }
    
    
    
    //Switchが切り替わった時発動
    @IBAction func changeImageSwitch(_ sender: UISwitch) {
        //UserDefaultを操作するためのオブジェクトを作成
        var myDefault = UserDefaults.standard
        
        //スイッチの状態を保存
        myDefault.set(sender.isOn,forKey:"imageSwitchFlag")
        
        //即反映させる（これがないと値が保存されてない場合がある）
        myDefault.synchronize()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  FirstViewController.swift
//  sampleSettingFunction
//
//  Created by Eriko Ichinohe on 2017/09/15.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var articleImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //画面が表示されるたびに毎回実行される
    override func viewWillAppear(_ animated: Bool) {
        
        //UserDefaultを操作するためのオブジェクトを作成
        var myDefault = UserDefaults.standard
        
        var imageSwitchFlag = true //保存されてる情報を格納する変数
        
        if myDefault.object(forKey: "imageSwitchFlag") != nil{
            //保存されてる情報が存在している
            
            imageSwitchFlag = myDefault.object(forKey: "imageSwitchFlag") as! Bool
            
        }
        
        //UserDefaultから取得してきたスイッチの状態によって画像の表示/非表示を切り替える
        if imageSwitchFlag == true {
            //画像を表示
            articleImage.isHidden = false
        }else{
            //画像を非表示
            articleImage.isHidden = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


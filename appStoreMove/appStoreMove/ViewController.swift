//
//  ViewController.swift
//  appStoreMove
//
//  Created by 이준협 on 2023/01/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startApp(_ sender: Any) {
        let appId = "id362057947"
        if let openApp = URL(string: "scheme://"), UIApplication.shared.canOpenURL(openApp) {
            UIApplication.shared.open(openApp, options: [:], completionHandler: nil)
        } else {
            //앱 미설치시 앱스토어로 연결
            if let openStore = URL(string: "itms-apps://itunes.apple.com/app/\(appId)"), UIApplication.shared.canOpenURL(openStore) {
                UIApplication.shared.open(openStore, options: [:], completionHandler: nil)
            }
        }
    }
    
}


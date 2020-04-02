//
//  ViewController.swift
//  MakeApp10-2Tab
//
//  Created by JU HAN LEE on 2020/04/02.
//  Copyright © 2020 YangHeeTae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController!.selectedIndex=1 //이미지 뷰 탭으로 이동
    }
    @IBAction func btnMoveDatePickerView(_ sender: UIButton) {
        tabBarController?.selectedIndex=2 //데이트 파커 뷰 탭으로 이동
    }
}

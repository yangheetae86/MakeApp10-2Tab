//
//  ViewController.swift
//  DatePicker
//
//  Created by Ho-Jeong Song on 22/09/2019.
//  Copyright © 2019 Ho-Jeong Song. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    let timeSelector: Selector = #selector(DateViewController.updateTime)     //타이머가 구동되면 실행할 함수
    let interval = 1.0 //타이머 간격 1초
    var count = 0 //기본 값 변수

    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //타이머 설정
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender //전달된 인수 저장
        
        let formatter = DateFormatter() //DateFormatter 클래스 상수 선언
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
                                        //formatter 속성을 설정
        lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        //데이트 피커에서 선택한 날짜를 formatter의 DateFormatter에서 설정한 포맷대로, string 매서드를 사용하여 문자열(String)로 변환
    }
    //타이머가 구동된 후 정해진 시간이 되었을 때 실행할 함수
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
    }
}


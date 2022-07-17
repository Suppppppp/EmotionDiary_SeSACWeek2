//
//  AnniversaryDiaryViewController.swift
//  EmotionDiary_SeSACWeek2
//
//  Created by KYUNGSUP GO on 2022/07/16.
//

import UIKit

class AnniversaryDiaryViewController: UIViewController {

    // I added backgroundView but people usually add subview in Superview because I only set Autolayout for DatePicker
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var desertView: UIView!
    @IBOutlet var desertImage_Outlet: [UIImageView]!
    @IBOutlet weak var datePicker_Outlet: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        desertImage_BasciSetting()
        datePicker_BasicSetting()
    }
    
    
    // MARK: - datePicker Setting : Depends on iOS version
    func datePicker_BasicSetting() {
        // Turn on Code AutoLayout, Beacuse we have do it differently depending on the iOS version
        datePicker_Outlet.translatesAutoresizingMaskIntoConstraints = false


        // from iOS 14.0 version to lateset version
        if #available(iOS 14.0, *){
            
            datePicker_Outlet.preferredDatePickerStyle = .inline
            
            datePicker_Outlet.frame = .init(x: 55, y: 88, width: 300, height:320 )
            
//            datePicker_Outlet.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor, constant: 0).isActive = true

//            datePicker_Outlet.topAnchor.constraint(equalTo: backgroundView.safeAreaLayoutGuide.topAnchor, constant: -10).isActive = true
            
//            datePicker_Outlet.bottomAnchor.constraint(equalTo: desertView.topAnchor, constant: 20).isActive = true
            
            
            
            
            //            datePicker_Outlet.leadingAnchor.constraint(equalTo: backgroundView.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
            

        } else {
            // from old version to less than iOS 14.0
            datePicker_Outlet.preferredDatePickerStyle = .wheels
            datePicker_Outlet.datePickerMode = .date
            datePicker_Outlet.locale = Locale(identifier: "en")


        }
        
//
//        datePicker_Outlet.preferredDatePickerStyle = .wheels
//        datePicker_Outlet.datePickerMode = .date
//        datePicker_Outlet.locale = Locale(identifier: "en")
        
    }
    
    // MARK: - desertImage Setting
    func desertImage_BasciSetting() {
    
        for i in desertImage_Outlet{
            i.clipsToBounds = true
            i.layer.cornerRadius = 8

            
        }

        
        
    }

    

}

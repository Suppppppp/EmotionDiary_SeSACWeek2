//
//  ViewController.swift
//  EmotionDiary_SeSACWeek2
//
//  Created by KYUNGSUP GO on 2022/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emotionalLabel_OutletCollection: [UILabel]!
    @IBOutlet var emotionalButton_OutletCollection: [UIButton]!
    
    // Clicked number
    var emotionClicked_ValueArray  = Array(repeating: 0, count: 9)
    // label message
    let emotionalMeaningArray = ["행복","사랑","좋아","당황","속상","우울","심심","행복","행복"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label_basicSetting()
        button_basicSetting()
        
        }

    // MARK: - basic label  setting func
    func label_basicSetting(){
        
        for (i,mean) in zip(emotionalLabel_OutletCollection, emotionalMeaningArray)
        {
            i.text = mean + "해 " +  "\(emotionClicked_ValueArray[0])"
        }
    }
    
    // MARK: - basic button setting func
    func button_basicSetting(){

        for i in emotionalButton_OutletCollection {
            // button tag start from 0 to 8
            i.tag = emotionalButton_OutletCollection.firstIndex(of: i) ?? 0

        }
    }
    
    // MARK: - when clicked, change value func
    func changeClickedValue(_ buttonTagInt: Int) {
        
        // Plust clicked number
        emotionClicked_ValueArray[buttonTagInt] += 1
        // change label message (number value)
        emotionalLabel_OutletCollection[buttonTagInt].text = emotionalMeaningArray[buttonTagInt] + "해 " + ("\(emotionClicked_ValueArray[buttonTagInt])")
    }

    
    // MARK: - button click action
    @IBAction func emotionalClicked(_ sender: UIButton) {
        changeClickedValue(sender.tag)

    }
    
}
    
    
    

    
    

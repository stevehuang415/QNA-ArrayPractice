//
//  QnaViewController.swift
//  QNA
//
//  Created by ShaoPo Huang on 2019/11/17.
//  Copyright © 2019 ShaoPo Huang. All rights reserved.
//

import UIKit

class QnaViewController: UIViewController {
        
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
        var index = 0
        
        var qnas = [Qna(questions: "請問您的姓名?", answer: "不要問"),
                    Qna(questions: "請問您今年幾歲?", answer: "我想想"),
                    Qna(questions: "請問您吃飽了嗎?", answer: "有點餓")]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            questionLabel.text = qnas[index].questions
            answerLabel.text = ""
        }
        
        @IBAction func nextButton(_ sender: Any) {
            index += 1
            if index == qnas.count{
                index = 0
            }
            questionLabel.text = qnas[index].questions
            answerLabel.text = ""
        }
        
        @IBAction func answerButton(_ sender: Any) {
            answerLabel.text = qnas[index].answer
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

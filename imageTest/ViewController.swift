//
//  ViewController.swift
//  imageTest
//
//  Created by 방문 사용자 on 26/03/2019.
//  Copyright © 2019 방문 사용자. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1
    var d = true
    @IBOutlet weak var alienImage: UIImageView!
    @IBOutlet weak var counttext: UILabel!
    @IBOutlet weak var imgname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 초기 이미지 보이기
        alienImage.image = UIImage(named: "frame\(count).png")
    }
    @IBAction func updatebtn(_ sender: Any) {
        //print("button pressed!")
        if count == 5 {
            d = false
        } else if count == 1 {
            d = true
        }
        
        if d == true {
            count += 1
        } else {
            count -= 1
        }
        // 누를때 마다 count가 1 증가
        // count += 1
        alienImage.image = UIImage(named: "frame\(count).png")
        counttext.text = String(count)
        imgname.text = String("frame\(count).png")
        // if (count == 5){
        // count = 0
    // }
    }
    

}


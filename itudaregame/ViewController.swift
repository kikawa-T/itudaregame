//
//  ViewController.swift
//  itudaregame
//
//  Created by tatsuomi kikawa on 2020/09/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var itsulabel: UILabel!
    @IBOutlet var dokodelabel: UILabel!
    @IBOutlet var daretolabel: UILabel!
    @IBOutlet var doshitalabel: UILabel!
    //配列の作り方
    let itsuArray: [String] = ["一年前", "一週間", "昨日", "今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daretoArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doshitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    var index: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //配列を一つずつずらす
    @IBAction func change() {
        itsulabel.text = itsuArray[index]
        dokodelabel.text = dokodeArray[index]
        daretolabel.text = daretoArray[index]
        doshitalabel.text = doshitaArray[index]
    
        index = index + 1
        if index > 3 {
            index = 0
        }
    }
    //labelを元に戻す
    @IBAction func reset() {
        itsulabel.text = "---"
        dokodelabel.text = "---"
        daretolabel.text = "---"
        doshitalabel.text = "---"
        
        index = 0
    }
    @IBAction func  random() {
        let itsuindex = Int.random(in: 0...3)
        let dokodeindex = Int.random(in: 0...3)
        let daretoindex = Int.random(in: 0...3)
        let doshitaindex = Int.random(in: 0...3)
        
        print("いつ:\(itsuindex)")
        print("どこで:\(dokodeindex)")
        print("だれが:\(daretoindex)")
        print("どうした:\(doshitaindex)")
        
        itsulabel.text = itsuArray[itsuindex]
        dokodelabel.text = dokodeArray[dokodeindex]
        daretolabel.text = daretoArray[daretoindex]
        doshitalabel.text = doshitaArray[doshitaindex]

    }


}


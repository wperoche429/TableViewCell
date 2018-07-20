//
//  ViewController.swift
//  TableViewCell
//
//  Created by William Peroche on 9/07/18.
//  Copyright © 2018 William Peroche. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let array1 = ["asdgasjhdgkashjd ashdgfkjasd a dhkfhaskldfh lkasjhdfkljshdf aksdhfkjashdf alksdhfkljashdflkjashd aslkdhfkashdfkasjhdflksadj skdflkjashdkfhasd kasdhfkljashdfljasd alskdhfkjasdhfkljsadh aslkdhfkjashdflkjasd askdhfkljashdflkjasdhf end",
                  "sdhfghdf end",
                  "ahsgdfkhasdf saidhfliashdf lksdhfkashdf kshdfkhsdf  sdhfklsahdfkjh lsdhflkjashdf ksadhfkhsadfkhasdlk lksdhfkjsad end",
                  "ashdflahsdf alsdhfashdf alsdhfkashdfk laksjhdflkashdfkljh slkdhfjkasdf end"]
    let array2 = ["asdgasjhdgkashjd ashdgfkjasd a dhkfhaskldfh lkasjhdfkljshdf aksdhfkjashdf alksdhfkljashdflkjashd aslkdhfkashdfkasjhdflksadj skdflkjashdkfhasd kasdhfkljashdfljasd alskdhfkjasdhfkljsadh aslkdhfkjashdflkjasd askdhfkljashdflkjasdhf shjdfklashdflk ashdflkuashdfk alksdhflkashdflkjsahd alksdhflkjashdf aklshdflkashdflkjhasjkldfhlaksdhflkashdfklash alkshdflkjasdhf end",
                  "sdhfghdf shdfasf askhdflkashdf asldhfklashdfklh aklsdhfkljashdfksajd alkshdflkjashdfkljha alkshfdkljashdflkjahf askjldhflkjashdf alksdhflkjashdflkas askldhfkljashdflkjdash alksdhflksahdflkas dalkjhsflkhaslkjdfhalskd alkshdflkashdfklashdkjlsa falskhflkasdhflkjadsh alskhdfklashfkljas alkshdflkjasdhf skdfhakljshdjashdflkashdklfjhaskjdfhaksd end",
                  "ahsgdfkhasdf saidhfliashdf lksdhfkashdf kshdfkhsdf  sdhfklsahdfkjh lsdhflkjashdf ksadhfkhsadfkhasdlk lksdhfkjsad sdhfkjshdfasifyasifashfkshdfkljashdfklhasdlkgasklhfi;asgflshdfklashdkfhaslkdfas end",
                  "ashdflahsdf alsdhfashdf alsdhfkashdfk laksjhdflkashdfkljh slkdhfjkasdf bfjhgSDKLfgsajdgfjsgdfagsdklfgasldgflajsgdflagsdlfgaslkfdvjkasbfilasgfdlisad end"]
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyTableViewCell
        cell.label1.text = array1[indexPath.row]
        cell.label2.text = array2[indexPath.row]
        return cell
    }
}

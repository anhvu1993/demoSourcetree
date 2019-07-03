//
//  ViewController.swift
//  Demo_SDwebImage
//
//  Created by Bui Van Tuan on 7/2/19.
//  Copyright © 2019 Nguyen khac vu. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    let download = SDWebImageManager()
  
var imageUrl = ["http://thuthuatphanmem.vn/uploads/2018/09/11/hinh-anh-dep-6_044127357.jpg", "http://i2.taimienphi.vn/tmp/cf/images/2018/download/hinh-anh-dep-3.jpg", "http://i2.taimienphi.vn/tmp/cf/images/2018/download/hinh-anh-dep-3.jpg", "http://i2.taimienphi.vn/tmp/cf/images/2018/download/hinh-anh-dep-3.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageUrl.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        let listImage = imageUrl[indexPath.row]
        cell.imagecell?.sd_setImage(with: URL(string: listImage), placeholderImage: #imageLiteral(resourceName: "12"), options: [.continueInBackground, .progressiveLoad])
   
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let url = URL(string: imageUrl[indexPath.row])
        print("anh thach")

    }
}

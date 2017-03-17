//
//  PlayLocalViddeoVC.swift
//  SwiftLearning
//
//  Created by 沈云翔 on 2017/3/16.
//  Copyright © 2017年 shenyunxiang. All rights reserved.
//

import UIKit

/// 播放本地视频
class PlayLocalVideoVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var videoTableView : UITableView = {
        var tableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        return tableView;
    }();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        videoTableView.delegate = self
        videoTableView.dataSource = self
        self.view.addSubview(videoTableView);

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

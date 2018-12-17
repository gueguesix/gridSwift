//
//  ViewController.swift
//  UILibrary
//
//  Created by SUP'Internet 04 on 18/10/2018.
//  Copyright © 2018 SUP'Internet 04. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.backgroundColor = .red
        self.view.addSubviewGrid(label, grid: [0, 0, 12, 12])
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }

}


extension UIView {
    func addSubviewGrid(_ view: UIView, grid: [CGFloat]) {
        view.frame = CGRect(x: self.frame.width/12*grid[0], y: self.frame.height/12*grid[1], width: self.frame.width/12*grid[2], height: self.frame.height/12*grid[3])
        self.addSubview(view)
    }
}

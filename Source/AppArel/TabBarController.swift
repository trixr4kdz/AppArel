//
//  TabBarController.swift
//  AppArel
//
//  Created by Trixie on 2/13/17.
//  Copyright © 2017 Blue Rook. All rights reserved.
//  Fonts courtesy of FontAwesome.swift: 
//

import UIKit
import Font_Awesome_Swift

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    private enum TabTitles: String, CustomStringConvertible {
        case MyCloset
        case Calendar
        case List
        case Share
        
        fileprivate var description: String {
            return self.rawValue
        }
    }
    
//    private var tabIcons = [
//        TabTitles.MyCloset: FontAwesome.
//        TabTitles.Calendar: FontAwesome.
//        TabTitles.List: FontAwesome.list
//        TabTitles.Share: FontAwesome
//    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tabBarController?.delegate = self
        
        if let tabBarItems = tabBar.items {
            for item in tabBarItems {
                if let title = item.title,
                    let tab = TabTitles (rawValue: title),
                    let glyph = tabIcons[tab] {
                    item.image = UIImage.fontAwesomeIcon(name: glyph, textColor: UIColor.blue, size: CGSize(width: 35, height: 35))
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

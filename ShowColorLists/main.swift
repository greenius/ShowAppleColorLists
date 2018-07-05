//
//  main.swift
//  ShowColorLists
//
//  Created by Steven W Green on 05/07/2018.
//  Copyright © 2018 Greenius Limited. All rights reserved.
//

import Foundation
import Cocoa

func floatToHex(f: CGFloat) -> String {
  return String(format:"%02x", Int(f * 255.99999999))
}

func showColorList(list: NSColorList) {
  let listName : String = list.name!.rawValue
  print(listName)
  for colName in list.allKeys
  {
    let col = list.color(withKey: colName)?.usingColorSpace(NSColorSpace.genericRGB)
    var (r,g,b,a) = (CGFloat(0),CGFloat(0),CGFloat(0),CGFloat(0))
    col?.getRed(&r, green: &g, blue: &b, alpha: &a)
    let colorName : String = colName.rawValue
    print(String(format:"%@%@%@%@ %@", floatToHex(f: r), floatToHex(f: g), floatToHex(f: b), floatToHex(f: a), colorName))
  }
}

//let colorLists = NSColorList.availableColorLists
//for list in colorLists
//{
//  showColorList(list: list)
//}

showColorList(list: NSColorList(named: NSColorList.Name(rawValue: "Apple"))!)
showColorList(list: NSColorList(named: NSColorList.Name(rawValue: "Crayons"))!)

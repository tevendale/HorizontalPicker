//
//  SecondViewController.swift
//  HorizontalPickerDemo
//
//  Created by Bernd Rabe on 13.12.15.
//  Copyright © 2015 RABE_IT Services. All rights reserved.
//

import UIKit
import HorizontalPicker

class SecondViewController: UIViewController, HorizontalPickerViewDataSource, HorizontalPickerViewDelegate {

    @IBOutlet weak var horizontalPicker: HorizontalPickerView!

    lazy var dataSource: Array<String> = {
        let dataSource = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "The quick brown fox jumps over the lazy dog", "Twelve", "Thirteen", "Fourteen"]
        return dataSource
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.tintColor = .red
        horizontalPicker.dataSource = self
        horizontalPicker.delegate = self
   }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        horizontalPicker.selectRow(rowIndex: 5, animated: false)
    }
    
    // MARK: - HorizontalPickerViewProvider
    
    func numberOfRowsInHorizontalPickerView(pickerView: HorizontalPickerView) -> Int {
        return dataSource.count
    }
    
    func horizontalPickerView(pickerView: HorizontalPickerView, titleForRow row: Int) -> String {
        return dataSource[row]
    }
    
    func horizontalPickerView(pickerView: HorizontalPickerView, didSelectRow row: Int) {
    }
    
    func useTwoLineModeForHorizontalPickerView(pickerView: HorizontalPickerView) -> Bool {
        return true
    }
    
    func textColorForHorizontalPickerView(pickerView: HorizontalPickerView) -> UIColor {
        return .darkText
    }
    
    func pickerViewShouldMask(pickerView: HorizontalPickerView) -> Bool {
        return true
    }
}

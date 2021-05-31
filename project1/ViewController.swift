//
//  ViewController.swift
//  project1
//
//  Created by Soyeon Park on 2021/05/05.
//

import UIKit
import Cosmos

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource{
    
    let level = ["페스코", "비건", "락토"]
    
    //@IBOutlet weak var cosmosView: CosmosView!
    
    @IBOutlet var pickerView: UILabel!
    //var Array = ["페스코", "락토", "비건"]

    override func viewDidLoad() {
        super.viewDidLoad()
        //picker.delegate = self
        //picker.dataSource = self
        
        showPicker.tintColor = .clear
        createPickerView()
        dismissPickerView()

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component : Int) -> Int{
        return level.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component : Int) -> String? {
        return level[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent componenet: Int){
        showPicker.text = level[row]
    }
    
    func createPickerView(){
        let pickerView = UIPickerView()
        pickerView.delegate = self
        showPicker.inputView = pickerView
    }
    
    func dismissPickerView(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "선택", style: .plain, target: self, action: #selector(self.action))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        showPicker.inputAccessoryView = toolBar
    }
    /*
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }


    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }*/
    
}


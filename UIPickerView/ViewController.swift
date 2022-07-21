//
//  ViewController.swift
//  UIPickerView
//
//  Created by Дмитрий Процак on 21.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//MARK: Подписка на datasourse and delegate of UiPicker
extension ViewController : UIPickerViewDataSource {
    
    //кол - во колес
func numberOfComponents(in pickerView: UIPickerView) -> Int {
    3
}
//кол - во строк
func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    10
}

}

//что будет отоброжаться
extension ViewController : UIPickerViewDelegate {
    //что будет отоброжаться
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)"
    }
    
    //отображение значения в консоле
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row)
    }
}

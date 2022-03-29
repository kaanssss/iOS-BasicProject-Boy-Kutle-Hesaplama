//
//  ViewController.swift
//  kursproje2
//
//  Created by Kaan Yalçınkaya on 14.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtKilo: UITextField!
    
    @IBOutlet weak var txtBoy: UITextField!
    
    @IBOutlet weak var lblSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickHesapla(_ sender: Any) {
    
        //araştır girilen değerlerin sadece sayı olmasını sağla.//
        
        //senkron asenkron - thread araştır //
    
        var kiloString:String = txtKilo.text ?? ""
        var boyString:String = txtBoy.text ?? ""
        
        
        
        if kiloString.isEmpty || boyString.isEmpty{
            
            
            lblSonuc.text = "Lütfen tüm alanları doldurunuz"
        }
        else{
            
            var kilo = Double(kiloString)!
            var boy = Double(boyString)!
            var pmi = kilo*kilo/boy
            
            lblSonuc.text = "Vücut Kitle İndexsiniz = \(pmi)"
            
        }
    
        
        
    }
}


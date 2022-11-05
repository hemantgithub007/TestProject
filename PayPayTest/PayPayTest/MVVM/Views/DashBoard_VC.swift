//
//  DashBoard_VC.swift
//  PayPayTest
//
//  Created by hemant kumar on 02/11/22.
//

import UIKit
import ACFloatingTextfield_Objc
import SVProgressHUD

class DashBoard_VC: UIViewController {
    
    @IBOutlet weak var currencyExchangeList: UICollectionView!
    @IBOutlet weak var from_Amount_TextField: ACFloatingTextField!
    @IBOutlet weak var to_Amount_TextField: ACFloatingTextField!
    @IBOutlet weak var currency_From_TextField: UIButton!
    @IBOutlet weak var currency_To_TextField: UIButton!
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchTableView: UITableView!
    
    
    var currencyCode_Dict = [[String:String]]()
    var currencyCode_Dict2 = [[String:String]]()
    
    var latest_Currency_Rate = Latest_Currency_Rate()
    
    var from_Currency_Code = String()
    var to_Currency_Code = String()
    
    var from_Currency = Double()
    var to_Currency = Double()
    
    var multiPlyCurrency = Double()
    
    
    var bTag = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.from_Amount_TextField.keyboardType = .asciiCapableNumberPad

        self.searchView.isHidden = true
        self.currencyExchangeList.reloadData()
        self.searchView.custom_CornerRadius(colors: UIColor.init(hex: "#000000"), radius: 7.0, BorderWidth: 1.0)
        
        self.searchTextField.addTarget(self, action: #selector(DashBoard_VC.searching(_:)), for: UIControl.Event.editingChanged)
        
        self.get_Latest_Currency_Rate()
    }
    
    
    
    
    
    func getCurrenciesCodeList()
    {
        if let apiURL = URL(string: Constants.baseUrl + API_Base_String.Get_Currencies_Code)
        {
            API_Calling.shared.getRequest(url: apiURL, type: CurrenciesCode.self, completionHandler: { (response) in
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.currencyCode_Dict = [["Country" : "AED : " + (response.AED ?? "")]
                                              , ["Country" : "AFN : " + (response.AFN ?? "")]
                                              , ["Country" : "ALL : " + (response.ALL ?? "")]
                                              , ["Country" : "AMD : " + (response.AMD ?? "")]
                                              , ["Country" : "ANG : " + (response.ANG ?? "")]
                                              , ["Country" : "AOA : " + (response.AOA ?? "")]
                                              , ["Country" : "ARS : " + (response.ARS ?? "")]
                                              , ["Country" : "AUD : " + (response.AUD ?? "")]
                                              , ["Country" : "AWG : " + (response.AWG ?? "")]
                                              , ["Country" : "AZN : " + (response.AZN ?? "")]
                                              , ["Country" : "BAM : " + (response.BAM ?? "")]
                                              , ["Country" : "BBD : " + (response.BBD ?? "")]
                                              , ["Country" : "BDT : " + (response.BDT ?? "")]
                                              , ["Country" : "BGN : " + (response.BGN ?? "")]
                                              , ["Country" : "BHD : " + (response.BHD ?? "")]
                                              , ["Country" : "BIF : " + (response.BIF ?? "")]
                                              , ["Country" : "BMD : " + (response.BMD ?? "")]
                                              , ["Country" : "BND : " + (response.BND ?? "")]
                                              , ["Country" : "BOB : " + (response.BOB ?? "")]
                                              , ["Country" : "BRL : " + (response.BRL ?? "")]
                                              , ["Country" : "BSD : " + (response.BSD ?? "")]
                                              , ["Country" : "BTC : " + (response.BTC ?? "")]
                                              , ["Country" : "BTN : " + (response.BTN ?? "")]
                                              , ["Country" : "BWP : " + (response.BWP ?? "")]
                                              , ["Country" : "BYN : " + (response.BYN ?? "")]
                                              , ["Country" : "BZD : " + (response.BZD ?? "")]
                                              , ["Country" : "CAD : " + (response.CAD ?? "")]
                                              , ["Country" : "CDF : " + (response.CDF ?? "")]
                                              , ["Country" : "CHF : " + (response.CHF ?? "")]
                                              , ["Country" : "CLF : " + (response.CLF ?? "")]
                                              , ["Country" : "CLP : " + (response.CLP ?? "")]
                                              , ["Country" : "CNH : " + (response.CNH ?? "")]
                                              , ["Country" : "CNY : " + (response.CNY ?? "")]
                                              , ["Country" : "COP : " + (response.COP ?? "")]
                                              , ["Country" : "CRC : " + (response.CRC ?? "")]
                                              , ["Country" : "CUC : " + (response.CUC ?? "")]
                                              , ["Country" : "CUP : " + (response.CUP ?? "")]
                                              , ["Country" : "CVE : " + (response.CVE ?? "")]
                                              , ["Country" : "CZK : " + (response.CZK ?? "")]
                                              , ["Country" : "DJF : " + (response.DJF ?? "")]
                                              , ["Country" : "DKK : " + (response.DKK ?? "")]
                                              , ["Country" : "DOP : " + (response.DOP ?? "")]
                                              , ["Country" : "DZD : " + (response.DZD ?? "")]
                                              , ["Country" : "EGP : " + (response.EGP ?? "")]
                                              , ["Country" : "ERN : " + (response.ERN ?? "")]
                                              , ["Country" : "ETB : " + (response.ETB ?? "")]
                                              , ["Country" : "EUR : " + (response.EUR ?? "")]
                                              , ["Country" : "FJD : " + (response.FJD ?? "")]
                                              , ["Country" : "FKP : " + (response.FKP ?? "")]
                                              , ["Country" : "GBP : " + (response.GBP ?? "")]
                                              , ["Country" : "GEL : " + (response.GEL ?? "")]
                                              , ["Country" : "GGP : " + (response.GGP ?? "")]
                                              , ["Country" : "GHS : " + (response.GHS ?? "")]
                                              , ["Country" : "GIP : " + (response.GIP ?? "")]
                                              , ["Country" : "GMD : " + (response.GMD ?? "")]
                                              , ["Country" : "GNF : " + (response.GNF ?? "")]
                                              , ["Country" : "GTQ : " + (response.GTQ ?? "")]
                                              , ["Country" : "GYD : " + (response.GYD ?? "")]
                                              , ["Country" : "HKD : " + (response.HKD ?? "")]
                                              , ["Country" : "HNL : " + (response.HNL ?? "")]
                                              , ["Country" : "HRK : " + (response.HRK ?? "")]
                                              , ["Country" : "HTG : " + (response.HTG ?? "")]
                                              , ["Country" : "HUF : " + (response.HUF ?? "")]
                                              , ["Country" : "IDR : " + (response.IDR ?? "")]
                                              , ["Country" : "ILS : " + (response.ILS ?? "")]
                                              , ["Country" : "IMP : " + (response.IMP ?? "")]
                                              , ["Country" : "INR : " + (response.INR ?? "")]
                                              , ["Country" : "IQD : " + (response.IQD ?? "")]
                                              , ["Country" : "IRR : " + (response.IRR ?? "")]
                                              , ["Country" : "ISK : " + (response.ISK ?? "")]
                                              , ["Country" : "JEP : " + (response.JEP ?? "")]
                                              , ["Country" : "JMD : " + (response.JMD ?? "")]
                                              , ["Country" : "JOD : " + (response.JOD ?? "")]
                                              , ["Country" : "JPY : " + (response.JPY ?? "")]
                                              , ["Country" : "KES : " + (response.KES ?? "")]
                                              , ["Country" : "KGS : " + (response.KGS ?? "")]
                                              , ["Country" : "KHR : " + (response.KHR ?? "")]
                                              , ["Country" : "KMF : " + (response.KMF ?? "")]
                                              , ["Country" : "KPW : " + (response.KPW ?? "")]
                                              , ["Country" : "KRW : " + (response.KRW ?? "")]
                                              , ["Country" : "KWD : " + (response.KWD ?? "")]
                                              , ["Country" : "KYD : " + (response.KYD ?? "")]
                                              , ["Country" : "KZT : " + (response.KZT ?? "")]
                                              , ["Country" : "LAK : " + (response.LAK ?? "")]
                                              , ["Country" : "LBP : " + (response.LBP ?? "")]
                                              , ["Country" : "LKR : " + (response.LKR ?? "")]
                                              , ["Country" : "LRD : " + (response.LRD ?? "")]
                                              , ["Country" : "LSL : " + (response.LSL ?? "")]
                                              , ["Country" : "LYD : " + (response.LYD ?? "")]
                                              , ["Country" : "MAD : " + (response.MAD ?? "")]
                                              , ["Country" : "MDL : " + (response.MDL ?? "")]
                                              , ["Country" : "MGA : " + (response.MGA ?? "")]
                                              , ["Country" : "MKD : " + (response.MKD ?? "")]
                                              , ["Country" : "MMK : " + (response.MMK ?? "")]
                                              , ["Country" : "MNT : " + (response.MNT ?? "")]
                                              , ["Country" : "MOP : " + (response.MOP ?? "")]
                                              , ["Country" : "MRU : " + (response.MRU ?? "")]
                                              , ["Country" : "MUR : " + (response.MUR ?? "")]
                                              , ["Country" : "MVR : " + (response.MVR ?? "")]
                                              , ["Country" : "MWK : " + (response.MWK ?? "")]
                                              , ["Country" : "MXN : " + (response.MXN ?? "")]
                                              , ["Country" : "MYR : " + (response.MYR ?? "")]
                                              , ["Country" : "MZN : " + (response.MZN ?? "")]
                                              , ["Country" : "NAD : " + (response.NAD ?? "")]
                                              , ["Country" : "NGN : " + (response.NGN ?? "")]
                                              , ["Country" : "NIO : " + (response.NIO ?? "")]
                                              , ["Country" : "NOK : " + (response.NOK ?? "")]
                                              , ["Country" : "NPR : " + (response.NPR ?? "")]
                                              , ["Country" : "NZD : " + (response.NZD ?? "")]
                                              , ["Country" : "OMR : " + (response.OMR ?? "")]
                                              , ["Country" : "PAB : " + (response.PAB ?? "")]
                                              , ["Country" : "PEN : " + (response.PEN ?? "")]
                                              , ["Country" : "PGK : " + (response.PGK ?? "")]
                                              , ["Country" : "PHP : " + (response.PHP ?? "")]
                                              , ["Country" : "PKR : " + (response.PKR ?? "")]
                                              , ["Country" : "PLN : " + (response.PLN ?? "")]
                                              , ["Country" : "PYG : " + (response.PYG ?? "")]
                                              , ["Country" : "QAR : " + (response.QAR ?? "")]
                                              , ["Country" : "RON : " + (response.RON ?? "")]
                                              , ["Country" : "RSD : " + (response.RSD ?? "")]
                                              , ["Country" : "RUB : " + (response.RUB ?? "")]
                                              , ["Country" : "RWF : " + (response.RWF ?? "")]
                                              , ["Country" : "SAR : " + (response.SAR ?? "")]
                                              , ["Country" : "SBD : " + (response.SBD ?? "")]
                                              , ["Country" : "SCR : " + (response.SCR ?? "")]
                                              , ["Country" : "SDG : " + (response.SDG ?? "")]
                                              , ["Country" : "SEK : " + (response.SEK ?? "")]
                                              , ["Country" : "SGD : " + (response.SGD ?? "")]
                                              , ["Country" : "SHP : " + (response.SHP ?? "")]
                                              , ["Country" : "SLL : " + (response.SLL ?? "")]
                                              , ["Country" : "SOS : " + (response.SOS ?? "")]
                                              , ["Country" : "SRD : " + (response.SRD ?? "")]
                                              , ["Country" : "SSP : " + (response.SSP ?? "")]
                                              , ["Country" : "STD : " + (response.STD ?? "")]
                                              , ["Country" : "STN : " + (response.STN ?? "")]
                                              , ["Country" : "SVC : " + (response.SVC ?? "")]
                                              , ["Country" : "SYP : " + (response.SYP ?? "")]
                                              , ["Country" : "SZL : " + (response.SZL ?? "")]
                                              , ["Country" : "THB : " + (response.THB ?? "")]
                                              , ["Country" : "TJS : " + (response.TJS ?? "")]
                                              , ["Country" : "TMT : " + (response.TMT ?? "")]
                                              , ["Country" : "TND : " + (response.TND ?? "")]
                                              , ["Country" : "TOP : " + (response.TOP ?? "")]
                                              , ["Country" : "TRY : " + (response.TRY ?? "")]
                                              , ["Country" : "TTD : " + (response.TTD ?? "")]
                                              , ["Country" : "TWD : " + (response.TWD ?? "")]
                                              , ["Country" : "TZS : " + (response.TZS ?? "")]
                                              , ["Country" : "UAH : " + (response.UAH ?? "")]
                                              , ["Country" : "UGX : " + (response.UGX ?? "")]
                                              , ["Country" : "USD : " + (response.USD ?? "")]
                                              , ["Country" : "UYU : " + (response.UYU ?? "")]
                                              , ["Country" : "UZS : " + (response.UZS ?? "")]
                                              , ["Country" : "VEF : " + (response.VEF ?? "")]
                                              , ["Country" : "VES : " + (response.VES ?? "")]
                                              , ["Country" : "VND : " + (response.VND ?? "")]
                                              , ["Country" : "VUV : " + (response.VUV ?? "")]
                                              , ["Country" : "WST : " + (response.WST ?? "")]
                                              , ["Country" : "XAF : " + (response.XAF ?? "")]
                                              , ["Country" : "XAG : " + (response.XAG ?? "")]
                                              , ["Country" : "XAU : " + (response.XAU ?? "")]
                                              , ["Country" : "XCD : " + (response.XCD ?? "")]
                                              , ["Country" : "XDR : " + (response.XDR ?? "")]
                                              , ["Country" : "XOF : " + (response.XOF ?? "")]
                                              , ["Country" : "XPD : " + (response.XPD ?? "")]
                                              , ["Country" : "XPF : " + (response.XPF ?? "")]
                                              , ["Country" : "XPT : " + (response.XPT ?? "")]
                                              , ["Country" : "YER : " + (response.YER ?? "")]
                                              , ["Country" : "ZAR : " + (response.ZAR ?? "")]
                                              , ["Country" : "ZMW : " + (response.ZMW ?? "")]
                                              , ["Country" : "ZWL : " + (response.ZWL ?? "")]]
                    
                    self.searchTableView.reloadData()
                    
                }
            }) { (error) in
                print("Could not fetch images!")
            }
        }
    }
    
    
    
    func get_Latest_Currency_Rate()
    {
        if let apiURL = URL(string: Constants.baseUrl + API_Base_String.Get_latest_exchange_rates +  "app_id=" + Constants.openExchangeRate_ID)
        {
            DispatchQueue.main.async {
                SVProgressHUD.setDefaultStyle(.custom)
                SVProgressHUD.setDefaultMaskType(.custom)
                SVProgressHUD.setForegroundColor(UIColor.white)           //Ring Color
                SVProgressHUD.setBackgroundColor(UIColor.init(hex: "0896D8", alpha: 1.0))        //HUD Color
                SVProgressHUD.setBackgroundLayerColor(UIColor .init(hex: "000000", alpha: 0.7))    //Background Color
                SVProgressHUD.show()
            }
            API_Calling.shared.getRequest(url: apiURL, type: Latest_Currency_Rate.self, completionHandler: { (response) in
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    SVProgressHUD.dismiss()
                    self.latest_Currency_Rate = response
                    self.currencyExchangeList.reloadData()
                    self.getCurrenciesCodeList()
                    
                    
                }
            }) { (error) in
                print("Could not fetch images!")
            }
        }
    }
    
    
    func currencyExchange (fromamount_Code : String, toAmount_Code : String, fromamount : Double, toAmount : Double)
    {
        let f_amount = Double(self.from_Amount_TextField.text ?? "0")
        let t_amount = Double(self.from_Amount_TextField.text ?? "0")
        let xx = (Double(f_amount!)/1)*(to_Currency/from_Currency)
        self.to_Amount_TextField.text = String(format: "%.2f", xx)
    }
    
    
    
    
    @IBAction func openCurrencyList(_ sender: UIButton) {
        
        if sender.tag == 1
        {
            bTag = "from"
            self.searchView.isHidden = false
            self.searchTextField.becomeFirstResponder()
        }
        else
        {
            bTag = "to"
            self.searchView.isHidden = false
            self.searchTextField.becomeFirstResponder()
        }
    }
    
    
    @objc func searching(_ textField: UITextField) {
        
        let resultPredicate = NSPredicate(format: "Country contains[cd] %@", self.searchTextField.text!)
        let filtered = self.currencyCode_Dict.filter {
            resultPredicate.evaluate(with: $0)
        }
        
        if filtered.count > 0
        {
            self.searchTableView.isHidden = false
            self.currencyCode_Dict2.removeAll()
            self.currencyCode_Dict2 = filtered
            print("filter == >> ", self.currencyCode_Dict2)
            self.searchTableView.reloadData()
        }
        else
        {
            self.searchTableView.isHidden = true
        }
    }
    
    
    func selectCurrencyCode(currencies : String) -> String {
        return currencies
    }
  

}


extension DashBoard_VC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.latest_Currency_Rate.rates?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AllCurrencyExchangePrice_Cell", for: indexPath) as! AllCurrencyExchangePrice_Cell
        
        cell.backG_View.layer.cornerRadius = 7.0
        
        let keyValue = Constants.currencey_Key[indexPath.row]
        
        cell.currencyName_Label.text = keyValue
        cell.exchangeRate_Label.text = String(self.latest_Currency_Rate.rates?[keyValue] ?? 0)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ifdcCode = self.currencyCode_Dict[indexPath.row]["Country"]
        to_Currency_Code = String(ifdcCode!.prefix(3))
        to_Currency = self.latest_Currency_Rate.rates?[to_Currency_Code] ?? 0
        self.currency_To_TextField.setTitle(to_Currency_Code, for: .normal)
        self.currencyExchange(fromamount_Code: from_Currency_Code, toAmount_Code: to_Currency_Code, fromamount: from_Currency, toAmount: to_Currency)
        
    }
    
}



extension DashBoard_VC: UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.currencyCode_Dict2.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //   if tableView == recive_Table {
        var cell : Search_Cell! = (tableView.dequeueReusableCell(withIdentifier: "Search_Cell") as! Search_Cell)
        if(cell == nil)
        {
            cell = (Bundle.main.loadNibNamed("Search_Cell", owner: self, options: nil)?[0] as! Search_Cell);
        }
        
        
        cell.country_Currency_Label.text = self.currencyCode_Dict2[indexPath.row]["Country"]

      
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.from_Amount_TextField.resignFirstResponder()
        self.searchTextField.resignFirstResponder()

        let ifdcCode = self.currencyCode_Dict2[indexPath.row]["Country"]
        
        let idx = ifdcCode![ifdcCode!.index(ifdcCode!.startIndex, offsetBy: 3)]

        print(ifdcCode!.prefix(3))
        
        
        if bTag == "from"
        {
            
            from_Currency_Code = String(ifdcCode!.prefix(3))
            from_Currency = self.latest_Currency_Rate.rates?[from_Currency_Code] ?? 0
            self.currency_From_TextField.setTitle(from_Currency_Code, for: .normal)
            
           // self.currencyExchange(fromamount_Code: from_Currency_Code, toAmount_Code: from_Currency_Code, fromamount: from_Currency, toAmount: to_Currency)

            
        }
        else if bTag == "to"
        {
            to_Currency_Code = String(ifdcCode!.prefix(3))
            to_Currency = self.latest_Currency_Rate.rates?[to_Currency_Code] ?? 0

            self.currency_To_TextField.setTitle(to_Currency_Code, for: .normal)
            
            self.currencyExchange(fromamount_Code: from_Currency_Code, toAmount_Code: to_Currency_Code, fromamount: from_Currency, toAmount: to_Currency)

        }
        
        self.searchView.isHidden = true
        searchTextField.text = ""

    }
    
    
}

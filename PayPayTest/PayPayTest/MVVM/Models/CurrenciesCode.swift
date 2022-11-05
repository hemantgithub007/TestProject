//
//  CurrenciesCode.swift
//  PayPayTest
//
//  Created by hemant kumar on 02/11/22.
//

import Foundation


struct CurrenciesCode : Codable {
    
//      let Welcome : [String: String]
      let AED : String?
      let AFN : String?
      let ALL : String?
      let AMD : String?
      let ANG : String?
      let AOA : String?
      let ARS : String?
      let AUD : String?
      let AWG : String?
      let AZN : String?
      let BAM : String?
      let BBD : String?
      let BDT : String?
      let BGN : String?
      let BHD : String?
      let BIF : String?
      let BMD : String?
      let BND : String?
      let BOB : String?
      let BRL : String?
      let BSD : String?
      let BTC : String?
      let BTN : String?
      let BWP : String?
      let BYN : String?
      let BZD : String?
      let CAD : String?
      let CDF : String?
      let CHF : String?
      let CLF : String?
      let CLP : String?
      let CNH : String?
      let CNY : String?
      let COP : String?
      let CRC : String?
      let CUC : String?
      let CUP : String?
      let CVE : String?
      let CZK : String?
      let DJF : String?
      let DKK : String?
      let DOP : String?
      let DZD : String?
      let EGP : String?
      let ERN : String?
      let ETB : String?
      let EUR : String?
      let FJD : String?
      let FKP : String?
      let GBP : String?
      let GEL : String?
      let GGP : String?
      let GHS : String?
      let GIP : String?
      let GMD : String?
      let GNF : String?
      let GTQ : String?
      let GYD : String?
      let HKD : String?
      let HNL : String?
      let HRK : String?
      let HTG : String?
      let HUF : String?
      let IDR : String?
      let ILS : String?
      let IMP : String?
      let INR : String?
      let IQD : String?
      let IRR : String?
      let ISK : String?
      let JEP : String?
      let JMD : String?
      let JOD : String?
      let JPY : String?
      let KES : String?
      let KGS : String?
      let KHR : String?
      let KMF : String?
      let KPW : String?
      let KRW : String?
      let KWD : String?
      let KYD : String?
      let KZT : String?
      let LAK : String?
      let LBP : String?
      let LKR : String?
      let LRD : String?
      let LSL : String?
      let LYD : String?
      let MAD : String?
      let MDL : String?
      let MGA : String?
      let MKD : String?
      let MMK : String?
      let MNT : String?
      let MOP : String?
      let MRU : String?
      let MUR : String?
      let MVR : String?
      let MWK : String?
      let MXN : String?
      let MYR : String?
      let MZN : String?
      let NAD : String?
      let NGN : String?
      let NIO : String?
      let NOK : String?
      let NPR : String?
      let NZD : String?
      let OMR : String?
      let PAB : String?
      let PEN : String?
      let PGK : String?
      let PHP : String?
      let PKR : String?
      let PLN : String?
      let PYG : String?
      let QAR : String?
      let RON : String?
      let RSD : String?
      let RUB : String?
      let RWF : String?
      let SAR : String?
      let SBD : String?
      let SCR : String?
      let SDG : String?
      let SEK : String?
      let SGD : String?
      let SHP : String?
      let SLL : String?
      let SOS : String?
      let SRD : String?
      let SSP : String?
      let STD : String?
      let STN : String?
      let SVC : String?
      let SYP : String?
      let SZL : String?
      let THB : String?
      let TJS : String?
      let TMT : String?
      let TND : String?
      let TOP : String?
      let TRY : String?
      let TTD : String?
      let TWD : String?
      let TZS : String?
      let UAH : String?
      let UGX : String?
      let USD : String?
      let UYU : String?
      let UZS : String?
      let VEF : String?
      let VES : String?
      let VND : String?
      let VUV : String?
      let WST : String?
      let XAF : String?
      let XAG : String?
      let XAU : String?
      let XCD : String?
      let XDR : String?
      let XOF : String?
      let XPD : String?
      let XPF : String?
      let XPT : String?
      let YER : String?
      let ZAR : String?
      let ZMW : String?
      let ZWL : String?

    

    enum CodingKeys: String, CodingKey {
        
//        case Welcome
          case AED
          case AFN
          case ALL
          case AMD
          case ANG
          case AOA
          case ARS
          case AUD
          case AWG
          case AZN
          case BAM
          case BBD
          case BDT
          case BGN
          case BHD
          case BIF
          case BMD
          case BND
          case BOB
          case BRL
          case BSD
          case BTC
          case BTN
          case BWP
          case BYN
          case BZD
          case CAD
          case CDF
          case CHF
          case CLF
          case CLP
          case CNH
          case CNY
          case COP
          case CRC
          case CUC
          case CUP
          case CVE
          case CZK
          case DJF
          case DKK
          case DOP
          case DZD
          case EGP
          case ERN
          case ETB
          case EUR
          case FJD
          case FKP
          case GBP
          case GEL
          case GGP
          case GHS
          case GIP
          case GMD
          case GNF
          case GTQ
          case GYD
          case HKD
          case HNL
          case HRK
          case HTG
          case HUF
          case IDR
          case ILS
          case IMP
          case INR
          case IQD
          case IRR
          case ISK
          case JEP
          case JMD
          case JOD
          case JPY
          case KES
          case KGS
          case KHR
          case KMF
          case KPW
          case KRW
          case KWD
          case KYD
          case KZT
          case LAK
          case LBP
          case LKR
          case LRD
          case LSL
          case LYD
          case MAD
          case MDL
          case MGA
          case MKD
          case MMK
          case MNT
          case MOP
          case MRU
          case MUR
          case MVR
          case MWK
          case MXN
          case MYR
          case MZN
          case NAD
          case NGN
          case NIO
          case NOK
          case NPR
          case NZD
          case OMR
          case PAB
          case PEN
          case PGK
          case PHP
          case PKR
          case PLN
          case PYG
          case QAR
          case RON
          case RSD
          case RUB
          case RWF
          case SAR
          case SBD
          case SCR
          case SDG
          case SEK
          case SGD
          case SHP
          case SLL
          case SOS
          case SRD
          case SSP
          case STD
          case STN
          case SVC
          case SYP
          case SZL
          case THB
          case TJS
          case TMT
          case TND
          case TOP
          case TRY
          case TTD
          case TWD
          case TZS
          case UAH
          case UGX
          case USD
          case UYU
          case UZS
          case VEF
          case VES
          case VND
          case VUV
          case WST
          case XAF
          case XAG
          case XAU
          case XCD
          case XDR
          case XOF
          case XPD
          case XPF
          case XPT
          case YER
          case ZAR
          case ZMW
          case ZWL

    }
}




//
//  Makale.swift
//  bolumSonu_Lab
//
//  Created by Samet Korkmaz on 24.03.2024.
//

import Foundation

class Makale {
    
    var baslik : String
    var kisaAciklama : String
    var aciklama : String
    var sayfaSayisi : Int
    
    init(baslik: String, kisaAciklama: String, aciklama: String, sayfaSayisi: Int) {
        self.baslik = baslik
        self.kisaAciklama = kisaAciklama
        self.aciklama = aciklama
        self.sayfaSayisi = sayfaSayisi
    }
}

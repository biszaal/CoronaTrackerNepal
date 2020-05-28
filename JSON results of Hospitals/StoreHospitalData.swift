//
//  StoreNews.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/19/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI
import Combine

class StoreHospitalData: ObservableObject
{
    
    @Published var hospitalData: [HospitalData] = []
    
    init()
    {
        fetchData()
    }
    
    func fetchData()
    {
        FetchHospitalData().fetchData
            { (hospitalData) in
                
            self.hospitalData = hospitalData
            
        }
    }
    
    
}

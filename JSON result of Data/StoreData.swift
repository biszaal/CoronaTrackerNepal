//
//  StoreData.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/17/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI
import Combine

class StoreData: ObservableObject
{
    
    @Published var coronaData: [CoronaData] = []
    
    init()
    {
        fetchData()
    }
    
    func fetchData()
    {
        FetchCovidData().fetchData
            { (coronaData) in
                
            self.coronaData = coronaData
            
        }
    }
    
    
}

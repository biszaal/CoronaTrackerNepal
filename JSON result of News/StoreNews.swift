//
//  StoreNews.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/19/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI
import Combine

class StoreNews: ObservableObject
{
    
    @Published var newsData: [NewsData] = []
    
    init()
    {
        fetchData()
    }
    
    func fetchData()
    {
        FetchNewsData().fetchData
            { (newsData) in
                
            self.newsData = newsData
            
        }
    }
    
    
}

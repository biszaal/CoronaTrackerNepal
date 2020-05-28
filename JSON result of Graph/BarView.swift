//
//  BarView.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/22/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI

struct BarView: View
{
    
    @ObservedObject var store = StoreData()
    
    let totalCases: Int
    let numberOfData: Int
    let maxCases: Int
    let rectangleWidth: CGFloat
    let rectangleHeight: CGFloat
    init(totalCases: Int, numberOfData: Int, maxCases: Int)
    {
        self.totalCases = totalCases
        self.numberOfData = numberOfData
        self.maxCases = maxCases
        rectangleWidth = UIScreen.main.bounds.width / CGFloat(numberOfData)
        rectangleHeight = UIScreen.main.bounds.height * CGFloat(Double(totalCases) / Double(maxCases))
        
        print(Double(totalCases) / Double(maxCases))
    }
    
    var body: some View
    {
        
        return VStack(alignment: .leading)
        {
            
            Rectangle()
                .fill(Color.blue)
                .frame(maxWidth: rectangleWidth, maxHeight: rectangleHeight / 8)
        }
    }
}

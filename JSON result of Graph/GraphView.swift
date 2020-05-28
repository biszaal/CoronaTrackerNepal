//
//  GraphView.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/22/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI

struct GraphView: View
{
    
    @ObservedObject var store = StoreGraphData()
    
    var maxCases: Int {
        return store.graphData[store.graphData.count - 1].totalCases
    } // total number of cases until now
    
    var body: some View
    {
        
        
        VStack
            {
            
            HStack(alignment: .bottom, spacing: 1)
            {
                
                ForEach(store.graphData)
                { data in
                    
                    if (data.totalCases != 0)
                    {
                        
                        VStack
                            {
                                BarView(totalCases: data.totalCases, numberOfData: self.store.graphData.count / 2, maxCases: self.maxCases)
                        }
                    }
                } 
            }
            
            HStack
                {
                
                Text("Feb")
                .font(.system(size: UIScreen.main.bounds.height / 100, design: .serif))
                
                Spacer()
                
                Text("Rate of Increase")
                    .font(.system(size: UIScreen.main.bounds.height / 70, design: .serif))
                
                Spacer()
                
                Text(self.getCurrentMonth())
                .font(.system(size: UIScreen.main.bounds.height / 100, design: .serif))
            }
        }
        .padding()
        .frame(maxHeight: UIScreen.main.bounds.height / 5)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
    
    func getCurrentMonth() -> String
    {
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        let month = dateFormatter.string(from: date)
        
        return month
    }
}




struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView()
    }
}

//
//  totalTestedView.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/16/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI

struct JSONResultView: View
{
    
    @ObservedObject var store = StoreData()
    
    
    var body: some View
    {
        
        ForEach(store.coronaData)
        { data in
            VStack (alignment: .leading, spacing: 10)
            {
                HStack
                    {
                        
                        HStack
                            {
                                
                                Text("Total Tested: \t\(data.tested_total + data.tested_rdt)")
                                .fixedSize(horizontal: true, vertical: false)
                                
                                Spacer()
                                
                                VStack {
                                    Text("PCR: \t\(data.tested_total)")
                                    .fixedSize(horizontal: true, vertical: false)
                                    Spacer()
                                    Text("RDT: \t\(data.tested_rdt)")
                                    .fixedSize(horizontal: true, vertical: false)
                                }
                                .font(.system(size: UIScreen.main.bounds.height / 70, design: .serif))
                        }
                        .font(.system(size: UIScreen.main.bounds.height / 50, design: .serif))
                        .padding()
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 15)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                }
                
                HStack
                    {
                        
                        VStack
                            {
                                Text("Total Positive:")
                                .fixedSize(horizontal: true, vertical: false)
                                Spacer()
                                Text(String(data.tested_positive))
                                .fixedSize(horizontal: true, vertical: false)
                        }
                        .font(.system(size: UIScreen.main.bounds.height / 50, design: .serif))
                        .padding()
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 15)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack
                            {
                                Text("Total Negative:")
                                .fixedSize(horizontal: true, vertical: false)
                                Spacer()
                                Text(String(data.tested_negative))
                                .fixedSize(horizontal: true, vertical: false)
                        }
                        .font(.system(size: UIScreen.main.bounds.height / 50, design: .serif))
                        .padding()
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 15)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                HStack
                    {
                        
                        VStack
                            {
                                Text("Total Recovered:")
                                .fixedSize(horizontal: true, vertical: false)
                                Spacer()
                                Text(String(data.recovered))
                                .fixedSize(horizontal: true, vertical: false)
                        }
                        .font(.system(size: UIScreen.main.bounds.height / 50, design: .serif))
                        .padding()
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 15)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        VStack
                            {
                                
                                Text("Total Deaths:")
                                .fixedSize(horizontal: true, vertical: false)
                                Spacer()
                                Text(String(data.deaths))
                                .fixedSize(horizontal: true, vertical: false)
                        }
                        .font(.system(size: UIScreen.main.bounds.height / 50, design: .serif))
                        .padding()
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 15)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .frame(maxWidth: UIScreen.main.bounds.width)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
        
    }
}

struct JSONResultView_Previews: PreviewProvider {
    static var previews: some View {
        JSONResultView()
    }
}

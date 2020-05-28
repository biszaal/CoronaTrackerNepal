//
//  Home.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/22/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI

struct Home: View
{
    
    @ObservedObject var getData = FetchCovidData()
    
    var body: some View
    {
        
        VStack
            {
            
            HStack
                {
                
                Text("Corona Tracker Nepal")
                    .font(.system(size: UIScreen.main.bounds.height / 30, design: .serif))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack
                    {
                    
                    Button(action:
                        {
                        UIApplication.shared.open(URL(string: "https://www.patreon.com/biszaal/")!)
                    }) {
                        Image(systemName: "dollarsign.circle")
                            .font(.system(size: UIScreen.main.bounds.height / 50, design: .serif))
                            .foregroundColor(.white)
                    }
                    
                    Text("Donation")
                        .font(.system(size: UIScreen.main.bounds.height / 150, design: .serif))
                        .foregroundColor(.white)
                }
                
            }
            .padding()
            .padding(.top, (UIApplication.shared.windows.last?.safeAreaInsets.top)! + 10)
            .background(Color.blue)
            
                Spacer()
            
            Text("Data")
                .font(.system(size: UIScreen.main.bounds.height / 50, design: .serif))
                .fontWeight(.heavy)
                .padding()
                .frame(maxWidth: UIScreen.main.bounds.width)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            Spacer()
            
            JSONResultView()
            
            Divider()
                Spacer()
            
            Text("Graph")
                .font(.system(size: UIScreen.main.bounds.height / 50, design: .serif))
                .fontWeight(.heavy)
                .padding()
                .frame(maxWidth: UIScreen.main.bounds.width)
                .cornerRadius(10)
                .shadow(radius: 5)
            
                Spacer()
                
            GraphView()

                
        }
        .edgesIgnoringSafeArea(.top)
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

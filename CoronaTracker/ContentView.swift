//
//  ContentView.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 2020/05/05.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    
    
    var body: some View
    {
        VStack
            {
                TabView
                    {
                        Home().tabItem
                            {
                                Image(systemName: "house.fill").font(.title)
                                Text("Home")
                        }
                        
                        NewsView().tabItem
                            {
                                Image(systemName: "text.bubble.fill").font(.title)
                                Text("News")
                        }
                        
                        HospitalView().tabItem
                            {
                                Image(systemName: "plus.app.fill").font(.title)
                                Text("Hospitals")
                        }
                }
                
                Spacer()
                
                GoogleAdView(bannerId: "ca-app-pub-9776815710061950/7857542909")
                    .frame(width: UIScreen.main.bounds.width, height: 60)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

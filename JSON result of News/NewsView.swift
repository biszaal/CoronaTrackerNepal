//
//  NewsView.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/19/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI

struct NewsView: View
{
    
    @ObservedObject var store = StoreNews()
    
    
    var body: some View
    {
        
        VStack(spacing: 0)
        {
            
            Text("News")
                .font(.system(size: UIScreen.main.bounds.height / 30, design: .serif))
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(maxWidth: UIScreen.main.bounds.width, alignment: .leading)
                .padding()
                .padding(.top, (UIApplication.shared.windows.last?.safeAreaInsets.top)! + 10)
                .background(Color.blue)
            
            
            ForEach(store.newsData)
            { news in
                
                List(0..<news.data.count)
                { i in
                    
                    VStack (alignment: .leading)
                    {
                        Button (action:
                            {
                                UIApplication.shared.open(URL(string: news.data[i].url!)!)
                        }) {
                            Text(news.data[i].title)
                                .font(.system(size: UIScreen.main.bounds.height / 40))
                        }
                        
                        Text(news.data[i].summary)
                            .font(.system(size: UIScreen.main.bounds.height / 50))
                            .foregroundColor(.secondary)
                        
                        
                        Text("Source: \(news.data[i].source)")
                            .font(.system(size: UIScreen.main.bounds.height / 120))
                            .foregroundColor(.secondary)
                    }
                }
            }
            .cornerRadius(10)
            .padding()
            .background(Color.gray.opacity(0.2))
            .frame(maxWidth: UIScreen.main.bounds.width)
            .shadow(radius: 5)
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

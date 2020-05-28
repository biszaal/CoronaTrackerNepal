//
//  NewsView.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/19/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI

struct HospitalView: View
{
    
    @ObservedObject var store = StoreHospitalData()
    
    
    var body: some View
    {
        VStack (spacing: 0)
        {
            
            Text("Hospital for COVID-19")
                .font(.system(size: UIScreen.main.bounds.height / 30, design: .serif))
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .padding(.top, (UIApplication.shared.windows.last?.safeAreaInsets.top)! + 10)
                .frame(maxWidth: UIScreen.main.bounds.width, alignment: .leading)
                .background(Color.blue)
            
            ForEach(store.hospitalData)
            { hospital in
                NavigationView
                    {
                        List(hospital.data)
                        {
                            each in
                            NavigationLink (destination:
                                MapView(name: each.name, latitude: each.location.coordinates[0], longitude: each.location.coordinates[1])
                                    .edgesIgnoringSafeArea(.top))
                            {
                                Text(each.name)
                            }
                        }
                        .cornerRadius(10)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .frame(maxWidth: UIScreen.main.bounds.width)
                        .shadow(radius: 5)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                }
                
            }
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct HospitalView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalView()
    }
}

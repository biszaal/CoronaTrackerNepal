//
//  GoogleAdView.swift
//  CoronaTracker
//
//  Created by Bishal Aryal on 5/20/20.
//  Copyright © 2020 Bishal Aryal. All rights reserved.
//

import SwiftUI
import GoogleMobileAds

struct GoogleAdView: UIViewRepresentable
{
    
    var bannerId: String
    let banner = GADBannerView(adSize: kGADAdSizeBanner)
    

    func makeCoordinator() -> Coordinator
    {
        Coordinator(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<GoogleAdView>) -> GADBannerView
    {
        
        banner.adUnitID = bannerId
        banner.rootViewController = UIApplication.shared.windows.first?.rootViewController
        banner.load(GADRequest())
        banner.delegate = context.coordinator
        return banner
    }
    
    func updateUIView(_ uiView: GADBannerView, context: UIViewRepresentableContext<GoogleAdView>)
    {
        
    }
    
    class Coordinator: NSObject, GADBannerViewDelegate
    {
        var percent: GoogleAdView
        
        init(_ percent: GoogleAdView)
        {
            self.percent = percent
        }
        
        func adViewDidReceiveAd(_ bannerView: GADBannerView)
        {
            print("Did Receive Ad")
        }
        
        func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError)
        {
            print("Failed to get Ad")
        }
    }
    
}


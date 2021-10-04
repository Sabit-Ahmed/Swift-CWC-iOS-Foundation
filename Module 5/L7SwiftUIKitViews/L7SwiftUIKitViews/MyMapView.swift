//
//  MapView.swift
//  L7SwiftUIKitViews
//
//  Created by Sabit Ahmed on 1/10/21.
//

import SwiftUI
import MapKit

struct MyMapView: UIViewRepresentable {
    
    func makeUIView(context: Self.Context) -> MKMapView {
        // Create and configure UIKit element
        let mapView = MKMapView()
        
        return mapView
    }
    
    
    func updateUIView(_ uiView: MKMapView, context: Self.Context) {
        // Update the element if needed
        
    }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MyMapView()
    }
}

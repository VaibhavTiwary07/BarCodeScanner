//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Vaibhav  Tiwary on 22/04/25.
//

import SwiftUI



struct BarCodeScannerView: View {
    @State private var scannedCode = ""
    @State private var alertItem :AlertItem?
    var body: some View {
        NavigationView{
            VStack{
                ScannerView(scannedCode: $scannedCode,alertItem: $alertItem)
                    .frame(maxWidth: .infinity,maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not yet scanned":scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding()
                
                }
                
                
            }.navigationTitle("Barcode Scanner")
            .alert(item: $alertItem){alertItem in
                Alert(title: Text(alertItem.title),message: Text(alertItem.message),dismissButton: alertItem.dissmissButton)
                
            }
                
        }
        
    }


#Preview {
    BarCodeScannerView()
}

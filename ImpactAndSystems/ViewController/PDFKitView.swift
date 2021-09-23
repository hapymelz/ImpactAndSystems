//
//  PDFKitView.swift
//  ImpactAndSystems
//
//  Created by Numbers, Katherine on 9/23/21.
//

import SwiftUI
import PDFKit

struct PDFKitView: View
{
    var body: some View
    {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PDFKitRepresentiveView: UIViewRepresentable
{
    var url : URL
    
    init (url : URL)
    {
        self.url = url
    }
    
    func makeUIView(context : Context) -> some UIView
    {
        let pdfView : PDFView = PDFVIew()
        pdfView.document = PDFDocument(url: self.url)
        pdfView.autoScales = true
        pdfView.displayDirection = .vertical
        
        return pdfView
    }

    func updateUIView(_ uiView : UIViewType, context : Context) -> Void
    {
        
    }
}







struct PDFKitView_Previews: PreviewProvider
{
    static var previews: some View
    {
        PDFKitView()
    }
}

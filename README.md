# BarCodeScanner

A Swift barcode scanning application that demonstrates practical implementation of AVFoundation for real-time barcode detection with a clean SwiftUI interface.

## About AVFoundation Integration

This project showcases essential AVFoundation implementation for barcode scanning:

- **AVCaptureSession**: Powers the core camera functionality and real-time video processing
- **AVCaptureDevice**: Manages access to the device's camera hardware
- **AVCaptureDeviceInput**: Handles the camera's input stream configuration
- **AVCaptureMetadataOutput**: Processes video frames to detect and read barcodes
- **AVCaptureVideoPreviewLayer**: Provides the visual camera feed in the UI
- **AVCaptureMetadataOutputObjectsDelegate**: Processes detected barcodes through delegate methods

## Features

- Real-time barcode scanning (EAN-8 and EAN-13)
- SwiftUI interface with UIKit camera integration
- Visual feedback with color-coded results
- Comprehensive error handling with user alerts
- Delegate pattern for clean architecture


## Requirements

- iOS 17.0+
- Swift 5.0+
- Physical device with camera access

## Implementation Details

This project bridges UIKit camera functionality with SwiftUI through UIViewControllerRepresentable, demonstrating:

1. Camera initialization and configuration
2. Metadata processing for barcode detection
3. Error handling and user feedback
4. Clean architecture with delegate pattern

## Privacy Note

This application requires camera permissions. Include in Info.plist:

```xml
<key>NSCameraUsageDescription</key>
<string>This app needs camera access to scan barcodes</string>

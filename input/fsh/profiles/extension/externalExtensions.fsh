// ==============================
//   外部 Extension 定義
// ==============================
//-------------------------------
// OrderExtension
//-------------------------------
Extension: OrderExtension
Id: order-extension
Title: "Order Extension"
Description: "The Order Extension represents orders that are fulfilled by this document such as a radiologists report of an x-ray"
* ^url = $order-extension
* ^status = #active
* ^date = "2024-03-12"
* ^publisher = "HL7 International / Cross-Group Projects"
* ^context.type = #element
* ^context.expression = "Composition"
* url = $order-extension (exactly)
* value[x] only Reference(ServiceRequest)

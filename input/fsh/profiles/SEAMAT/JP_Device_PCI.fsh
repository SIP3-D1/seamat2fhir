Invariant: device-pci-metaprofile
Description: "meta.profileには、指定したプロファイルのURLの記述が存在しなければならない。"
Severity: #error
Expression: "meta.profile.where($this = 'http://jpfhir.jp/fhir/SEAMAT/StructureDefinition/JP_Device_PCI').exists()"

// ==============================
//   Profile 定義
// ==============================
Profile: JP_Device_PCI
Parent: Device
Id: jp-device-pci
Title: "SEAMAT PCI Device Profile"
Description: "このプロファイルはDeviceリソースに対して、心カテレポートのPCI処置で使用した機器のデータを送受信するための基礎となる制約と拡張を定めたものである。"
* ^url = $JP_Device_PCI
* ^status = #active
* ^date = "2024-05-08"
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS

* obeys device-pci-metaprofile

* identifier 0.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains 
     resourceId 1..1
* identifier[resourceId] ^definition = "Unique instance identifiers assigned to a device by manufacturers other organizations or owners."
* identifier[resourceId].system = $resource_identifier (exactly)
* identifier[resourceId].value 1..1 MS

//* definition ..0
//* udiCarrier ..0
* status = #active (exactly)
//* distinctIdentifier ..0
//* manufacturer 1.. MS
//* manufactureDate ..0
//* expirationDate ..0
//* lotNumber ..0
//* serialNumber ..0
//* deviceName
//* modelNumber ..0
//* partNumber ..0
//* type ..0
* type ^definition = "PCI処置の81002-8<使用機器>の値を指定する"
* type from $JP_Device_PCIDeviceType_VS (preferred)

//* specialization ..0
//* version ..0
//* property ..0
//* patient ..0
//* owner ..0
//* contact ..0
//* location ..0
//* url ..0
//* note ..0
//* safety ..0
//* parent ..0

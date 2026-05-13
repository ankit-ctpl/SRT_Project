CREATE TABLE `bk05_milkcollectionfarmer` (
  `Org_Id` varchar(10) NOT NULL,
  `FarmerCollection_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Quantity_Kg` decimal(8,3) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Protein` varchar(45) DEFAULT NULL,
  `QuantityAuto_Flag` int DEFAULT '1',
  `QualityAuto_Flag` int DEFAULT '1',
  `ApplicableRate` decimal(8,2) DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `EntryTime` time DEFAULT NULL,
  `Is_Corrected` int DEFAULT NULL,
  `Correction_Request_Id` varchar(45) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `Anamat_Charge` decimal(8,2) DEFAULT NULL,
  `Freight_Charge` decimal(8,2) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`FarmerCollection_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bk_2026_f011_dealer_stock` (
  `Org_Id` varchar(20) DEFAULT NULL,
  `Dealer_Id` varchar(45) DEFAULT NULL,
  `Material_Id` varchar(45) DEFAULT NULL,
  `Opening_Quantity` int DEFAULT '0',
  `Good_Credit` int DEFAULT '0',
  `Broken_Credit` int DEFAULT '0',
  `ThirdParty_Credit` int DEFAULT '0',
  `Good_Debit` int DEFAULT '0',
  `Broken_Debit` int DEFAULT '0',
  `ThirdParty_Debit` int DEFAULT '0',
  `Closing_Quantity` int DEFAULT '0',
  `Date` date DEFAULT NULL,
  KEY `Dealer_Id` (`Dealer_Id`),
  KEY `Material_Id` (`Material_Id`),
  KEY `idx_f011_stock_fast` (`Org_Id`,`Dealer_Id`,`Material_Id`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bk_f010_milkcollectionmcc_final` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `Collection_Date` datetime DEFAULT NULL,
  `Agent_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Agent_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Agent_Fat` decimal(8,2) DEFAULT NULL,
  `Agent_SNF` decimal(8,2) DEFAULT NULL,
  `Agent_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Agent_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Dairy_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Dairy_Fat` decimal(8,2) DEFAULT NULL,
  `Dairy_SNF` decimal(8,2) DEFAULT NULL,
  `Dairy_Protein` decimal(8,2) DEFAULT NULL,
  `Dairy_Ash` decimal(8,2) DEFAULT NULL,
  `Dairy_Sodium` decimal(8,2) DEFAULT NULL,
  `Dairy_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `FatKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `SNFKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `FatKG_Rate` decimal(20,3) DEFAULT NULL,
  `SNFKG_Rate` decimal(20,3) DEFAULT NULL,
  `Total_GainLoss` decimal(20,3) DEFAULT NULL,
  `MilkCollectionPosting_Id` varchar(20) DEFAULT NULL,
  `AgentCost` decimal(20,2) DEFAULT NULL,
  `TransporterCost` decimal(20,2) DEFAULT NULL,
  `MilkPrice` decimal(20,2) DEFAULT NULL,
  `MilkRate` decimal(8,2) DEFAULT NULL,
  `Plant_Code` varchar(45) DEFAULT NULL,
  `Is_VoucherLocked` int DEFAULT '0',
  `Locked_By` varchar(45) DEFAULT NULL,
  `Locked_On` datetime DEFAULT NULL,
  `Dairy_Sour_Ltr` decimal(20,3) DEFAULT '0.000',
  `OutsideInvoice_Id` varchar(20) DEFAULT NULL,
  `Is_OutsideCheck` int DEFAULT '0',
  `OutsideInvoiceCreated_On` datetime DEFAULT NULL,
  `Is_OutsideInvoiceCreated` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Entry_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `MilkCollectionDairy_Id` (`MilkCollectionDairy_Id`),
  KEY `CollectionShift_Id` (`CollectionShift_Id`),
  KEY `Collection_Date` (`Collection_Date`),
  KEY `MilkCollectionPosting_Id` (`MilkCollectionPosting_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bk_f010_milkcollectionmcc_final_grn` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `Collection_Date` datetime DEFAULT NULL,
  `Agent_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Agent_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Agent_Fat` decimal(8,2) DEFAULT NULL,
  `Agent_SNF` decimal(8,2) DEFAULT NULL,
  `Agent_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Agent_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Dairy_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Dairy_Fat` decimal(8,2) DEFAULT NULL,
  `Dairy_SNF` decimal(8,2) DEFAULT NULL,
  `Dairy_Protein` decimal(8,2) DEFAULT NULL,
  `Dairy_Ash` decimal(8,2) DEFAULT NULL,
  `Dairy_Sodium` decimal(8,2) DEFAULT NULL,
  `Dairy_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `FatKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `SNFKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `FatKG_Rate` decimal(20,3) DEFAULT NULL,
  `SNFKG_Rate` decimal(20,3) DEFAULT NULL,
  `Total_GainLoss` decimal(20,3) DEFAULT NULL,
  `MilkCollectionPosting_Id` varchar(20) DEFAULT NULL,
  `AgentCost` decimal(20,2) DEFAULT NULL,
  `TransporterCost` decimal(20,2) DEFAULT NULL,
  `MilkPrice` decimal(20,2) DEFAULT NULL,
  `MilkRate` decimal(8,2) DEFAULT NULL,
  `Plant_Code` varchar(45) DEFAULT NULL,
  `Is_VoucherLocked` int DEFAULT '0',
  `Locked_By` varchar(45) DEFAULT NULL,
  `Locked_On` datetime DEFAULT NULL,
  `Dairy_Sour_Ltr` decimal(20,3) DEFAULT '0.000',
  `OutsideInvoice_Id` varchar(20) DEFAULT NULL,
  `Is_OutsideCheck` int DEFAULT '0',
  `OutsideInvoiceCreated_On` datetime DEFAULT NULL,
  `Is_OutsideInvoiceCreated` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Entry_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `MilkCollectionDairy_Id` (`MilkCollectionDairy_Id`),
  KEY `CollectionShift_Id` (`CollectionShift_Id`),
  KEY `Collection_Date` (`Collection_Date`),
  KEY `MilkCollectionPosting_Id` (`MilkCollectionPosting_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bk_t005_milkcollectionfarmer` (
  `Org_Id` varchar(10) NOT NULL,
  `FarmerCollection_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Quantity_Kg` decimal(8,3) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Protein` varchar(45) DEFAULT NULL,
  `QuantityAuto_Flag` int DEFAULT '0',
  `QualityAuto_Flag` int DEFAULT '0',
  `ApplicableRate` decimal(8,2) DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `EntryTime` time DEFAULT NULL,
  `Is_Corrected` int DEFAULT NULL,
  `Correction_Request_Id` varchar(45) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `Anamat_Charge` decimal(8,2) DEFAULT NULL,
  `Freight_Charge` decimal(8,2) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  `Is_Missing` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`FarmerCollection_Id`),
  KEY `MCC_Id` (`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bk_t009_milkcollectiondairy_mcccommission` (
  `Org_Id` varchar(10) NOT NULL,
  `MilkCollectionMCCCommission_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `MPPIType_Id` varchar(20) NOT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Weight` decimal(20,3) DEFAULT NULL,
  `Liters` decimal(20,3) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `BaseRate` decimal(20,2) DEFAULT NULL,
  `ServiceCharge` decimal(20,2) DEFAULT NULL,
  `Amount` decimal(20,2) DEFAULT NULL,
  `MusterType_Id` varchar(20) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `MCC_Commision` decimal(20,2) DEFAULT NULL,
  `Is_Sour_Check` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`MilkCollectionMCCCommission_Id`,`MilkCollectionDairy_Id`,`MCC_Id`,`MPPIType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bk_t009_milkcollectiondairy_mcccommission_grn` (
  `Org_Id` varchar(10) NOT NULL,
  `MilkCollectionMCCCommission_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `MPPIType_Id` varchar(20) NOT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Weight` decimal(20,3) DEFAULT NULL,
  `Liters` decimal(20,3) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `BaseRate` decimal(20,2) DEFAULT NULL,
  `ServiceCharge` decimal(20,2) DEFAULT NULL,
  `Amount` decimal(20,2) DEFAULT NULL,
  `MusterType_Id` varchar(20) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `MCC_Commision` decimal(20,2) DEFAULT NULL,
  `Is_Sour_Check` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`MilkCollectionMCCCommission_Id`,`MilkCollectionDairy_Id`,`MCC_Id`,`MPPIType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bk_t009_milkcollectiondairy_posting` (
  `Org_Id` varchar(10) NOT NULL,
  `MilkCollectionPosting_Id` varchar(20) NOT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Created_On` date DEFAULT NULL,
  `Batch_Id` varchar(45) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Weight` decimal(20,3) DEFAULT NULL,
  `Liters` decimal(20,3) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `Fat` decimal(20,2) DEFAULT NULL,
  `FatCost` decimal(20,2) DEFAULT NULL,
  `FatKG` decimal(20,3) DEFAULT NULL,
  `SNF` decimal(20,2) DEFAULT NULL,
  `SNFCost` decimal(20,2) DEFAULT NULL,
  `SNFKG` decimal(20,3) DEFAULT NULL,
  `MilkCost` decimal(20,2) DEFAULT NULL,
  `AgentCost` decimal(20,2) DEFAULT NULL,
  `TransporterCost` decimal(20,2) DEFAULT NULL,
  `Rate` decimal(20,2) DEFAULT NULL,
  `Original_MilkPrice` decimal(20,2) DEFAULT NULL,
  `Total_GainLoss` decimal(20,2) DEFAULT NULL,
  `MilkPrice` decimal(20,2) DEFAULT NULL,
  `TotalLandedCost` decimal(20,2) DEFAULT NULL,
  `Original_FatRate` decimal(20,2) DEFAULT NULL,
  `Original_FatValue` decimal(20,2) DEFAULT NULL,
  `Original_SNFRate` decimal(20,2) DEFAULT NULL,
  `Original_SNFValue` decimal(20,2) DEFAULT NULL,
  `FatRate` decimal(20,2) DEFAULT NULL,
  `FatValue` decimal(20,2) DEFAULT NULL,
  `SNFRate` decimal(20,2) DEFAULT NULL,
  `SNFValue` decimal(20,2) DEFAULT NULL,
  `FEQ` decimal(20,2) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`MilkCollectionPosting_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `CollectionShift_Id` (`CollectionShift_Id`),
  KEY `Created_On` (`Created_On`),
  KEY `MilkCollectionPosting_Id` (`MilkCollectionPosting_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c001_organization` (
  `Org_Id` varchar(10) NOT NULL,
  `Org_Name` varchar(45) DEFAULT NULL,
  `Org_Address` varchar(200) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Kg_To_Ltr_Farmer` decimal(8,2) DEFAULT NULL,
  `Kg_To_Ltr_Agent` decimal(8,2) DEFAULT NULL,
  `Kg_To_Ltr_Dairy` decimal(8,2) DEFAULT NULL,
  `TruckCollection_FirstQty` int DEFAULT '0',
  `TankerCollection_FirstQty` int DEFAULT '0',
  `Destination_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c002_menu` (
  `Menu_Id` varchar(20) NOT NULL,
  `Application_Id` varchar(10) DEFAULT NULL,
  `Menu_Name` varchar(50) DEFAULT NULL,
  `Menu_Level` int DEFAULT NULL COMMENT '1 = Top Level, 2 = Sub Menu',
  `Parent_Menu_Id` varchar(10) DEFAULT NULL COMMENT 'Parent Menu Id if Menu_Level is 2',
  `Display_Order_Number` decimal(4,2) DEFAULT NULL,
  `Menu_Link` varchar(200) DEFAULT NULL,
  `Menu_Icon_Name` varchar(50) DEFAULT NULL,
  `Menu_Tooltip` varchar(100) DEFAULT NULL,
  `Is_Active` int DEFAULT NULL,
  `Is_Deleted` int DEFAULT NULL,
  PRIMARY KEY (`Menu_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c011_milktype` (
  `MilkType_Id` varchar(20) NOT NULL,
  `MilkType_Name` varchar(45) DEFAULT NULL,
  `FAT` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MilkType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c012_milkrateentrytype` (
  `MilkRateEntryType_Id` varchar(20) NOT NULL,
  `MilkRateEntryType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MilkRateEntryType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c013_mcccategory` (
  `MCCCategory_Id` varchar(10) NOT NULL,
  `MCCCategory_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MCCCategory_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c014_mcctype` (
  `MCCType_Id` varchar(10) NOT NULL,
  `MCCType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MCCType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c015_collectionshift` (
  `CollectionShift_Id` varchar(10) NOT NULL,
  `CollectionShift_Name` varchar(45) DEFAULT NULL,
  `ShiftStart_Time` time DEFAULT NULL,
  `ShiftEnd_Time` time DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`CollectionShift_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c016_milkstatus` (
  `MilkStatus_Id` varchar(10) NOT NULL,
  `MilkStatus_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MilkStatus_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c019_uom` (
  `UOM_Id` varchar(10) NOT NULL,
  `UOM_Name` varchar(45) DEFAULT NULL,
  `UOM_Type` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Conversion` decimal(30,6) DEFAULT NULL,
  PRIMARY KEY (`UOM_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c020_vehicletype` (
  `VehicleType_Id` varchar(10) NOT NULL,
  `VehicleType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`VehicleType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c021_vehicleownershiptype` (
  `VehicleOwnershipType_Id` varchar(10) NOT NULL,
  `VehicleOwnershipType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`VehicleOwnershipType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c022_mustertype` (
  `MusterType_Id` varchar(10) NOT NULL,
  `MusterType_Name` varchar(45) DEFAULT NULL,
  `MusterType` int DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MusterType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c023_mccworktype` (
  `MCCWorkType_Id` varchar(10) NOT NULL,
  `MCCWorkType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MCCWorkType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c024_paymentcycle` (
  `PaymentCycle_Id` varchar(10) NOT NULL,
  `PaymentCycle_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`PaymentCycle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c025_incentivetype` (
  `IncentiveType_Id` varchar(10) NOT NULL,
  `IncentiveType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`IncentiveType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c026_incentivefrequency` (
  `IncentiveFrequency_Id` varchar(10) NOT NULL,
  `IncentiveFrequency_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`IncentiveFrequency_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c027_servicetype` (
  `ServiceType_Id` varchar(10) NOT NULL,
  `ServiceType_Name` varchar(45) DEFAULT NULL,
  `Sevice_Image` text,
  `Service_Description` varchar(150) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`ServiceType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c028_drivertype` (
  `DriverType_Id` varchar(10) NOT NULL,
  `DriverType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`DriverType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c029_freightratetype` (
  `FreightRateType_Id` varchar(10) NOT NULL,
  `FreightRateType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`FreightRateType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c030_nomineerelation` (
  `NomineeRelation_Id` varchar(10) NOT NULL,
  `NomineeRelation_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT NULL,
  `Is_Deleted` int DEFAULT NULL,
  PRIMARY KEY (`NomineeRelation_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c031_routefrequency` (
  `RouteFrequency_Id` varchar(10) NOT NULL,
  `RouteFrequency_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`RouteFrequency_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c032_vehiclemake` (
  `VehicleMake_Id` varchar(10) NOT NULL,
  `VehicleMake_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`VehicleMake_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c033_paymenttype` (
  `PaymentType_Id` varchar(10) NOT NULL,
  `PaymentType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`PaymentType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c034_complainttype` (
  `ComplaintType_Id` varchar(20) NOT NULL,
  `ComplaintType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`ComplaintType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c035_complaintstatus` (
  `ComplaintStatus_Id` varchar(20) NOT NULL,
  `ComplaintStatus_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`ComplaintStatus_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c036_expensetype` (
  `ExpenseType_Id` varchar(20) NOT NULL,
  `ExpenseType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`ExpenseType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c037_milkrejectionreason` (
  `MilkRejectionReason_Id` varchar(20) NOT NULL,
  `MilkRejectionReason_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MilkRejectionReason_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c038_requesttype` (
  `RequestType_Id` varchar(10) NOT NULL,
  `RequestType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`RequestType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c040_advancetype` (
  `AdvanceType_Id` varchar(10) NOT NULL,
  `AdvanceType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`AdvanceType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c041_vehiclebreakdownreasons` (
  `BreakDown_Id` varchar(10) NOT NULL,
  `BreakDown_Reason` varchar(20) DEFAULT NULL,
  `Is_Active` int DEFAULT NULL,
  `Is_Deleted` int DEFAULT NULL,
  PRIMARY KEY (`BreakDown_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c042_materialtype` (
  `MaterialType_Id` varchar(20) NOT NULL,
  `MaterialType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MaterialType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c043_sap_constant_data` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` int NOT NULL,
  `API_Name` varchar(50) DEFAULT NULL,
  `Constant_Name` varchar(255) DEFAULT NULL,
  `Constant_Value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c044_sales_user_role` (
  `SalesUserRole_Id` varchar(20) NOT NULL,
  `SalesUserRole_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SalesUserRole_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c045_route_day` (
  `RouteDay_Id` varchar(20) NOT NULL,
  `RouteDay_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`RouteDay_Id`,`RouteDay_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c046_financial_year` (
  `Year_Id` varchar(20) NOT NULL,
  `Year_Name` varchar(45) NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Year_Id`,`Year_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c047_mppitype` (
  `MPPIType_Id` varchar(10) NOT NULL,
  `MPPIType_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`MPPIType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c048_reporttype` (
  `ReportType_Id` varchar(10) NOT NULL,
  `ReportType_Name` varchar(200) DEFAULT NULL,
  `ReportGroup` varchar(10) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`ReportType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c049_withholding_tax_type` (
  `WithholdingTaxType_Id` varchar(45) NOT NULL,
  `WithholdingTaxType` varchar(45) DEFAULT NULL,
  `WithholdingTaxType_Name` varchar(255) DEFAULT NULL,
  `WithholdingTaxType_Code` varchar(45) DEFAULT NULL,
  `Recipient` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`WithholdingTaxType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c050_notificationcodegroup` (
  `Org_Id` varchar(10) NOT NULL,
  `NotificationCodeGroup_Id` varchar(255) NOT NULL,
  `NotificationCodeGroup_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NotificationCodeGroup_Id`,`Org_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c051_notificationcode` (
  `Org_Id` varchar(10) NOT NULL,
  `NotificationCode_Id` varchar(255) NOT NULL,
  `NotificationCode_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`NotificationCode_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `c052_notificationpriority` (
  `Org_Id` varchar(10) NOT NULL,
  `NotificationPriority_Id` varchar(255) NOT NULL,
  `NotificationPriority_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`NotificationPriority_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `crate_dump` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Dealer_Code` longtext,
  `Dispatch_Date` longtext,
  `Quantity` longtext,
  `Material_Code` longtext,
  `GoodsMovementType` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=128462 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `crate_dump_1` (
  `Dealer_Code` longtext,
  `Dispatch_Date` date DEFAULT NULL,
  `Quantity` longtext,
  `Material_Code` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `datadump` (
  `Org_Id` text,
  `Retailer_Id` text,
  `Retailer_Name` text,
  `SalesGroup_Name` text,
  `SalesUser_Emp_Id` text,
  `Dealer_BPCode` text,
  `Mobile_No` text,
  `Contact_Person` text,
  `Email_Id` text,
  `Address_Line_1_Text` text,
  `Address_Line_2_Text` text,
  `Address_Line_3_Text` text,
  `State_Name` text,
  `District_Name` text,
  `Taluka_Name` text,
  `Village_Name` text,
  `Pincode` text,
  `Pan_No` text,
  `ShopLatitude` text,
  `ShopLongitude` text,
  `Shop_License_No` text,
  `Bank_Name` text,
  `Branch_Name` text,
  `Account_No` text,
  `IFSC_Code` text,
  `Account_Name` text,
  `FSSAI_License_No` text,
  `FSSAI_LicenseValidity_On` text,
  `GST_No` text,
  `Is_Agreement_Done` text,
  `AgreementValidiy_StartDate` text,
  `AgreementValidity_EndDate` text,
  `SecurityDepositAmount` text,
  `RouteName` text,
  `SalesArea_Id` text,
  `SalesUser_Id` text,
  `Dealer_Id` text,
  `State_Id` text,
  `District_Id` text,
  `Taluka_Id` text,
  `Village_Id` text,
  `Bank_Id` text,
  `Branch_Id` text,
  `MSME` text,
  `Aadhar_No` text,
  `ASME` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `debitnoteentry` (
  `Farmer_Code` text,
  `Farmer_Name` text,
  `MCC_Code` text,
  `MCC_Name` text,
  `CollectionShift_Name` text,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `Voucher_Id` text,
  `Invoice_No` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `dispatchdump` (
  `Material Number` text,
  `Plant` int DEFAULT NULL,
  `Posting Date in the Document` int DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `Account Number of Customer` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `exceldata` (
  `Customer_Code` int DEFAULT NULL,
  `Customer_Name` text,
  `Material_Code` int DEFAULT NULL,
  `Material_Description` text,
  `Opening_Stock` int DEFAULT NULL,
  `Receipt` int DEFAULT NULL,
  `Dispatch` int DEFAULT NULL,
  `Closing_Stock` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `exceltosave` (
  `Material Number` text,
  `Delivery` text,
  `Quantity` text,
  `Account Number of Customer` text,
  `Posting Date in the Document` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f001_milk_rate` (
  `Org_Id` varchar(10) DEFAULT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `MilkType_Id` varchar(45) DEFAULT NULL,
  `CollectionShift_Id` varchar(45) DEFAULT NULL,
  `Chart_Id` varchar(45) DEFAULT NULL,
  `MilkRateEntryType_Id` varchar(45) DEFAULT NULL,
  `Slab_Id` varchar(45) DEFAULT NULL,
  `Item_Version_No` varchar(45) DEFAULT NULL,
  `Header_Version_No` varchar(45) DEFAULT NULL,
  `Amount` varchar(45) DEFAULT NULL,
  `Base_FAT` decimal(8,2) DEFAULT NULL,
  `Base_SNF` decimal(8,2) DEFAULT NULL,
  `Item_Applicable_Date` datetime DEFAULT NULL,
  `Header_Applicable_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f002_milk_rate_current` (
  `Org_Id` varchar(10) DEFAULT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `MilkType_Id` varchar(45) DEFAULT NULL,
  `CollectionShift_Id` varchar(45) DEFAULT NULL,
  `Chart_Id` varchar(45) DEFAULT NULL,
  `MilkRateEntryType_Id` varchar(45) DEFAULT NULL,
  `Slab_Id` varchar(45) DEFAULT NULL,
  `Item_Version_No` varchar(45) DEFAULT NULL,
  `Header_Version_No` varchar(45) DEFAULT NULL,
  `Amount` varchar(45) DEFAULT NULL,
  `Base_FAT` decimal(8,2) DEFAULT NULL,
  `Base_SNF` decimal(8,2) DEFAULT NULL,
  `Item_Applicable_Date` datetime DEFAULT NULL,
  `Header_Applicable_Date` datetime DEFAULT NULL,
  KEY `f002_milk_rate_current` (`MCC_Id`,`CollectionShift_Id`,`MilkType_Id`,`Header_Applicable_Date`,`Item_Applicable_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f003_farmerperformance` (
  `Org_Id` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(45) DEFAULT NULL,
  `Performance_Month` varchar(45) DEFAULT NULL,
  `Quality_Score` varchar(20) DEFAULT NULL,
  `Quantity_Score` varchar(20) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  `Quality` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f004_farmeraccount_statement` (
  `Org_Id` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(45) DEFAULT NULL,
  `Statement_Date` datetime DEFAULT NULL,
  `Collection_Shift` varchar(45) DEFAULT NULL,
  `FAT` varchar(45) DEFAULT NULL,
  `SNF` varchar(45) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  `Opening_Balance` varchar(20) DEFAULT NULL,
  `Credit` varchar(20) DEFAULT NULL,
  `Debit` varchar(20) DEFAULT NULL,
  `Current_Balance` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f006_mccstocks` (
  `Org_Id` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Material_Id` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Opening_Quantity` int DEFAULT NULL,
  `Credit` int DEFAULT NULL,
  `Debit` int DEFAULT NULL,
  `Balance` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f007_driverperformance` (
  `Org_Id` varchar(20) DEFAULT NULL,
  `Trip_Id` varchar(45) DEFAULT NULL,
  `Driver_Id` varchar(45) DEFAULT NULL,
  `Route_Time` varchar(45) DEFAULT NULL,
  `Route_Fuel` varchar(45) DEFAULT NULL,
  `BreakDown` int DEFAULT NULL,
  `Trip_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f008_salesusertarget` (
  `Org_Id` varchar(30) DEFAULT NULL,
  `SalesUser_Id` varchar(45) DEFAULT NULL,
  `Dealer_Id` varchar(45) DEFAULT NULL,
  `Product_Id` varchar(45) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  `Amount` varchar(45) DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f009_mcc_collection` (
  `Org_Id` varchar(20) NOT NULL,
  `MCCCollectionShift_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(45) NOT NULL,
  `Mlk_Type` varchar(50) NOT NULL,
  `Entry_Type` varchar(100) NOT NULL,
  `Quantity` decimal(8,3) DEFAULT '0.000',
  `Fat` decimal(8,2) DEFAULT '0.00',
  `Snf` decimal(8,2) DEFAULT '0.00',
  `Date` datetime DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT '0.00',
  `Rate` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`Org_Id`,`MCCCollectionShift_Id`,`MCC_Id`,`Mlk_Type`,`Entry_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f010_milkcollectionmcc_final` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `Collection_Date` datetime DEFAULT NULL,
  `Agent_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Agent_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Agent_Fat` decimal(8,2) DEFAULT NULL,
  `Agent_SNF` decimal(8,2) DEFAULT NULL,
  `Agent_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Agent_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Dairy_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Dairy_Fat` decimal(8,2) DEFAULT NULL,
  `Dairy_SNF` decimal(8,2) DEFAULT NULL,
  `Dairy_Protein` decimal(8,2) DEFAULT NULL,
  `Dairy_Ash` decimal(8,2) DEFAULT NULL,
  `Dairy_Sodium` decimal(8,2) DEFAULT NULL,
  `Dairy_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `FatKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `SNFKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `FatKG_Rate` decimal(20,3) DEFAULT NULL,
  `SNFKG_Rate` decimal(20,3) DEFAULT NULL,
  `Total_GainLoss` decimal(20,3) DEFAULT NULL,
  `MilkCollectionPosting_Id` varchar(20) DEFAULT NULL,
  `AgentCost` decimal(20,2) DEFAULT NULL,
  `TransporterCost` decimal(20,2) DEFAULT NULL,
  `MilkPrice` decimal(20,2) DEFAULT NULL,
  `MilkRate` decimal(8,2) DEFAULT NULL,
  `Plant_Code` varchar(45) DEFAULT NULL,
  `Is_VoucherLocked` int DEFAULT '0',
  `Locked_By` varchar(45) DEFAULT NULL,
  `Locked_On` datetime DEFAULT NULL,
  `Dairy_Sour_Ltr` decimal(20,3) DEFAULT '0.000',
  `OutsideInvoice_Id` varchar(20) DEFAULT NULL,
  `Is_OutsideCheck` int DEFAULT '0',
  `OutsideInvoiceCreated_On` datetime DEFAULT NULL,
  `Is_OutsideInvoiceCreated` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Entry_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `MilkCollectionDairy_Id` (`MilkCollectionDairy_Id`),
  KEY `CollectionShift_Id` (`CollectionShift_Id`),
  KEY `Collection_Date` (`Collection_Date`),
  KEY `MilkCollectionPosting_Id` (`MilkCollectionPosting_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f010_milkcollectionmcc_final_sour` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `Collection_Date` datetime DEFAULT NULL,
  `Agent_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Agent_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Agent_Fat` decimal(8,2) DEFAULT NULL,
  `Agent_SNF` decimal(8,2) DEFAULT NULL,
  `Agent_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Agent_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Dairy_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Dairy_Fat` decimal(8,2) DEFAULT NULL,
  `Dairy_SNF` decimal(8,2) DEFAULT NULL,
  `Dairy_Protein` decimal(8,2) DEFAULT NULL,
  `Dairy_Ash` decimal(8,2) DEFAULT NULL,
  `Dairy_Sodium` decimal(8,2) DEFAULT NULL,
  `Dairy_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `FatKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `SNFKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `FatKG_Rate` decimal(20,3) DEFAULT NULL,
  `SNFKG_Rate` decimal(20,3) DEFAULT NULL,
  `Total_GainLoss` decimal(20,3) DEFAULT NULL,
  `MilkCollectionPosting_Id` varchar(20) DEFAULT NULL,
  `AgentCost` decimal(20,2) DEFAULT NULL,
  `TransporterCost` decimal(20,2) DEFAULT NULL,
  `MilkPrice` decimal(20,2) DEFAULT NULL,
  `MilkRate` decimal(8,2) DEFAULT NULL,
  `Plant_Code` varchar(45) DEFAULT NULL,
  `Is_VoucherLocked` int DEFAULT '0',
  `Locked_By` varchar(45) DEFAULT NULL,
  `Locked_On` datetime DEFAULT NULL,
  `Dairy_Sour_Ltr` decimal(20,3) DEFAULT '0.000',
  `OutsideInvoice_Id` varchar(20) DEFAULT NULL,
  `Is_OutsideCheck` int DEFAULT '0',
  `OutsideInvoiceCreated_On` datetime DEFAULT NULL,
  `Is_OutsideInvoiceCreated` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f010_milkcollectionmcc_final_sour_main` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `Collection_Date` datetime DEFAULT NULL,
  `Agent_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Agent_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Agent_Fat` decimal(8,2) DEFAULT NULL,
  `Agent_SNF` decimal(8,2) DEFAULT NULL,
  `Agent_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Agent_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Dairy_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Dairy_Fat` decimal(8,2) DEFAULT NULL,
  `Dairy_SNF` decimal(8,2) DEFAULT NULL,
  `Dairy_Protein` decimal(8,2) DEFAULT NULL,
  `Dairy_Ash` decimal(8,2) DEFAULT NULL,
  `Dairy_Sodium` decimal(8,2) DEFAULT NULL,
  `Dairy_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `FatKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `SNFKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `FatKG_Rate` decimal(20,3) DEFAULT NULL,
  `SNFKG_Rate` decimal(20,3) DEFAULT NULL,
  `Total_GainLoss` decimal(20,3) DEFAULT NULL,
  `MilkCollectionPosting_Id` varchar(20) DEFAULT NULL,
  `AgentCost` decimal(20,2) DEFAULT NULL,
  `TransporterCost` decimal(20,2) DEFAULT NULL,
  `MilkPrice` decimal(20,2) DEFAULT NULL,
  `MilkRate` decimal(8,2) DEFAULT NULL,
  `Plant_Code` varchar(45) DEFAULT NULL,
  `Is_VoucherLocked` int DEFAULT '0',
  `Locked_By` varchar(45) DEFAULT NULL,
  `Locked_On` datetime DEFAULT NULL,
  `Dairy_Sour_Ltr` decimal(20,3) DEFAULT '0.000',
  `OutsideInvoice_Id` varchar(20) DEFAULT NULL,
  `Is_OutsideCheck` int DEFAULT '0',
  `OutsideInvoiceCreated_On` datetime DEFAULT NULL,
  `Is_OutsideInvoiceCreated` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f010_milkcollectionmcc_final_sour_mcc` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `Collection_Date` datetime DEFAULT NULL,
  `Agent_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Agent_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Agent_Fat` decimal(8,2) DEFAULT NULL,
  `Agent_SNF` decimal(8,2) DEFAULT NULL,
  `Agent_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Agent_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Dairy_Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Dairy_Fat` decimal(8,2) DEFAULT NULL,
  `Dairy_SNF` decimal(8,2) DEFAULT NULL,
  `Dairy_Protein` decimal(8,2) DEFAULT NULL,
  `Dairy_Ash` decimal(8,2) DEFAULT NULL,
  `Dairy_Sodium` decimal(8,2) DEFAULT NULL,
  `Dairy_Fat_Kg` decimal(10,2) DEFAULT NULL,
  `Dairy_SNF_Kg` decimal(10,2) DEFAULT NULL,
  `FatKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `SNFKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `FatKG_Rate` decimal(20,3) DEFAULT NULL,
  `SNFKG_Rate` decimal(20,3) DEFAULT NULL,
  `Total_GainLoss` decimal(20,3) DEFAULT NULL,
  `MilkCollectionPosting_Id` varchar(20) DEFAULT NULL,
  `AgentCost` decimal(20,2) DEFAULT NULL,
  `TransporterCost` decimal(20,2) DEFAULT NULL,
  `MilkPrice` decimal(20,2) DEFAULT NULL,
  `MilkRate` decimal(8,2) DEFAULT NULL,
  `Plant_Code` varchar(45) DEFAULT NULL,
  `Is_VoucherLocked` int DEFAULT '0',
  `Locked_By` varchar(45) DEFAULT NULL,
  `Locked_On` datetime DEFAULT NULL,
  `Dairy_Sour_Ltr` decimal(20,3) DEFAULT '0.000',
  `OutsideInvoice_Id` varchar(20) DEFAULT NULL,
  `Is_OutsideCheck` int DEFAULT '0',
  `OutsideInvoiceCreated_On` datetime DEFAULT NULL,
  `Is_OutsideInvoiceCreated` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f011_dealer_stock` (
  `Org_Id` varchar(20) DEFAULT NULL,
  `Dealer_Id` varchar(45) DEFAULT NULL,
  `Material_Id` varchar(45) DEFAULT NULL,
  `Opening_Quantity` int DEFAULT '0',
  `Good_Credit` int DEFAULT '0',
  `Broken_Credit` int DEFAULT '0',
  `ThirdParty_Credit` int DEFAULT '0',
  `Good_Debit` int DEFAULT '0',
  `Broken_Debit` int DEFAULT '0',
  `ThirdParty_Debit` int DEFAULT '0',
  `Closing_Quantity` int DEFAULT '0',
  `Date` date DEFAULT NULL,
  KEY `Dealer_Id` (`Dealer_Id`),
  KEY `Material_Id` (`Material_Id`),
  KEY `idx_f011_stock_fast` (`Org_Id`,`Dealer_Id`,`Material_Id`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f011_dealer_stock_data` (
  `Org_Id` varchar(20) DEFAULT NULL,
  `Dealer_Id` varchar(45) DEFAULT NULL,
  `Material_Id` varchar(45) DEFAULT NULL,
  `Opening_Quantity` int DEFAULT '0',
  `Good_Credit` int DEFAULT '0',
  `Broken_Credit` int DEFAULT '0',
  `ThirdParty_Credit` int DEFAULT '0',
  `Good_Debit` int DEFAULT '0',
  `Broken_Debit` int DEFAULT '0',
  `ThirdParty_Debit` int DEFAULT '0',
  `Closing_Quantity` int DEFAULT '0',
  `Date` date DEFAULT NULL,
  KEY `Dealer_Id` (`Dealer_Id`),
  KEY `Material_Id` (`Material_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f012_farmer_invoice` (
  `Org_Id` varchar(10) NOT NULL,
  `Invoice_Id` varchar(20) NOT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Invoice_Date` date DEFAULT NULL,
  `Invoice_No` varchar(20) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `TotalMilk_QtyLtr` decimal(30,2) DEFAULT NULL,
  `MilkPayment_Amount` decimal(30,2) DEFAULT NULL,
  `DairyAnamat_Amount` decimal(30,2) DEFAULT NULL,
  `BankEMI_Amount` decimal(30,2) DEFAULT NULL,
  `ProductSales_Amount` decimal(30,2) DEFAULT NULL,
  `TMSales_Amount` decimal(30,2) DEFAULT NULL,
  `Transport_Amount` decimal(30,2) DEFAULT NULL,
  `MCCAdvance_Amount` decimal(30,2) DEFAULT NULL,
  `DairyAdvance_Amount` decimal(30,2) DEFAULT NULL,
  `TotalDecution_Amount` decimal(30,2) DEFAULT NULL,
  `TotalIncentive_Amount` decimal(30,2) DEFAULT NULL,
  `NetPayable_Amount` decimal(30,2) DEFAULT NULL,
  `DairyAnamat_OpenBal` decimal(30,2) DEFAULT NULL,
  `BankEMI_OpenBal` decimal(30,2) DEFAULT NULL,
  `DairyAdvance_OpenBal` decimal(30,2) DEFAULT NULL,
  `MCCAdvnace_OpenBal` decimal(30,2) DEFAULT NULL,
  `ProductSales_OpenBal` decimal(30,2) DEFAULT NULL,
  `TMSales_OpenBal` decimal(30,2) DEFAULT NULL,
  `TDS_Amount` decimal(30,2) DEFAULT '0.00',
  `Invoice_FileName` varchar(200) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `Avg_FAT` decimal(30,2) DEFAULT NULL,
  `Avg_SNF` decimal(30,2) DEFAULT NULL,
  `Is_InvoicePDFPublished` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Invoice_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f013_mcc_invoice` (
  `Org_Id` varchar(10) NOT NULL,
  `Invoice_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Invoice_Date` date DEFAULT NULL,
  `Invoice_No` varchar(20) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `TotalMilk_QtyLtr` decimal(30,2) DEFAULT NULL,
  `MPPI_Amount` decimal(30,2) DEFAULT NULL,
  `MCCAdvance_Amount` decimal(30,2) DEFAULT NULL,
  `OtherIncentive_Amount` decimal(30,2) DEFAULT NULL,
  `DairyAnamat_Amount` decimal(30,2) DEFAULT NULL,
  `Transport_Amount` decimal(30,2) DEFAULT NULL,
  `BankEMI_Amount` decimal(30,2) DEFAULT NULL,
  `ProductSales_Amount` decimal(30,2) DEFAULT NULL,
  `TMSales_Amount` decimal(30,2) DEFAULT NULL,
  `DairyAdvance_Amount` decimal(30,2) DEFAULT NULL,
  `GainLoss_Amount` decimal(30,2) DEFAULT NULL,
  `PMRecovery_Amount` decimal(30,2) DEFAULT NULL,
  `NetPayable_Amount` decimal(30,2) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `TotalDecution_Amount` decimal(30,2) DEFAULT NULL,
  `TotalIncentive_Amount` decimal(30,2) DEFAULT NULL,
  `TDS_Amount` decimal(30,2) DEFAULT NULL,
  `Protein_Amount` decimal(30,2) DEFAULT NULL,
  `Ash_Amount` decimal(30,2) DEFAULT NULL,
  `Sodium_Amount` decimal(30,2) DEFAULT NULL,
  `Incentive_Amount` decimal(30,2) DEFAULT NULL,
  `Is_InvoicePDFPublished` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Invoice_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f014_farmer_anamat` (
  `Org_Id` varchar(45) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Farmer_Id` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Amount` longtext,
  `Balance` longtext,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Entry_Id`,`Org_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f015_milk_rate_checker` (
  `Org_Id` varchar(10) NOT NULL,
  `Collection_Id` varchar(45) NOT NULL,
  `Farmer_Id` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `Quantity_Kg` decimal(20,3) DEFAULT NULL,
  `Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Old_Rate` decimal(8,2) DEFAULT NULL,
  `Old_Amount` decimal(30,3) DEFAULT NULL,
  `New_Rate` decimal(8,2) DEFAULT NULL,
  `New_Amount` decimal(30,3) DEFAULT NULL,
  `Diff_Amount` decimal(30,3) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Collection_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f016_billing_document` (
  `Org_Id` varchar(10) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `BillingDocument` longtext,
  `BillingDocumentItem` longtext,
  `BillingDocumentItemText` longtext,
  `SalesDocumentItemCategory` longtext,
  `SalesDocumentItemType` longtext,
  `ReturnItemProcessingType` longtext,
  `CreatedByUser` longtext,
  `CreationDate` longtext,
  `CreationTime` longtext,
  `ReferenceLogicalSystem` longtext,
  `OrganizationDivision` longtext,
  `Division` longtext,
  `SalesOffice` longtext,
  `Material` longtext,
  `Product` longtext,
  `OriginallyRequestedMaterial` longtext,
  `InternationalArticleNumber` longtext,
  `PricingReferenceMaterial` longtext,
  `Batch_1` longtext,
  `ProductHierarchyNode` longtext,
  `MaterialGroup` longtext,
  `ProductGroup` longtext,
  `Plant` longtext,
  `StorageLocation` longtext,
  `PlantRegion` longtext,
  `PlantCounty` longtext,
  `PlantCity` longtext,
  `TransitPlant` longtext,
  `BillingQuantity` longtext,
  `BillingQuantityUnit` longtext,
  `BillingQuantityInBaseUnit` longtext,
  `BaseUnit` longtext,
  `BillingToBaseQuantityDnmntr` longtext,
  `BillingToBaseQuantityNmrtr` longtext,
  `ItemGrossWeight` longtext,
  `ItemNetWeight` longtext,
  `ItemWeightUnit` longtext,
  `BillToPartyCountry` longtext,
  `BillToPartyRegion` longtext,
  `BillingPlanRule` longtext,
  `BillingPlan` longtext,
  `BillingPlanItem` longtext,
  `NetAmount` longtext,
  `TransactionCurrency` longtext,
  `GrossAmount` longtext,
  `PricingDate` longtext,
  `PriceDetnExchangeRate` longtext,
  `PricingScaleQuantityInBaseUnit` longtext,
  `TaxAmount` longtext,
  `CostAmount` longtext,
  `Subtotal2Amount` longtext,
  `Subtotal3Amount` longtext,
  `Subtotal4Amount` longtext,
  `Subtotal1Amount` longtext,
  `Subtotal5Amount` longtext,
  `Subtotal6Amount` longtext,
  `StatisticalValueControl` longtext,
  `CashDiscountIsDeductible` longtext,
  `CustomerConditionGroup1` longtext,
  `CustomerConditionGroup2` longtext,
  `CustomerConditionGroup3` longtext,
  `CustomerConditionGroup4` longtext,
  `CustomerConditionGroup5` longtext,
  `ManualPriceChangeType` longtext,
  `MaterialPricingGroup` longtext,
  `MainItemPricingRefMaterial` longtext,
  `MainItemMaterialPricingGroup` longtext,
  `TimeSheetOvertimeCategory` longtext,
  `PricingRelevance` longtext,
  `DepartureCountry` longtext,
  `ZeroVATRsn` longtext,
  `TaxCode` longtext,
  `TaxRateValidityStartDate` longtext,
  `CountryOfOrigin` longtext,
  `RegionOfOrigin` longtext,
  `CommodityCode` longtext,
  `EligibleAmountForCashDiscount` longtext,
  `BusinessArea` longtext,
  `ProfitCenter` longtext,
  `OrderID` longtext,
  `ProfitabilitySegment_2` longtext,
  `BillingPerformancePeriodEndDte` longtext,
  `ProfitabilitySegment` longtext,
  `CostCenter` longtext,
  `OriginSDDocument` longtext,
  `OriginSDDocumentItem` longtext,
  `PriceDetnExchangeRateDate` longtext,
  `MatlAccountAssignmentGroup` longtext,
  `ReferenceSDDocument` longtext,
  `ReferenceSDDocumentItem` longtext,
  `ReferenceSDDocumentCategory` longtext,
  `SalesDocument` longtext,
  `SalesDocumentItem` longtext,
  `SalesSDDocumentCategory` longtext,
  `HigherLevelItem` longtext,
  `HigherLvlItmOfBatSpltItm` longtext,
  `BillingDocumentItemInPartSgmt` longtext,
  `ExternalReferenceDocument` longtext,
  `ExternalReferenceDocumentItem` longtext,
  `BillingDocExtReferenceDocItem` longtext,
  `PrelimBillingDocument` longtext,
  `PrelimBillingDocumentItem` longtext,
  `SalesGroup` longtext,
  `AdditionalCustomerGroup1` longtext,
  `AdditionalCustomerGroup2` longtext,
  `AdditionalCustomerGroup3` longtext,
  `AdditionalCustomerGroup4` longtext,
  `AdditionalCustomerGroup5` longtext,
  `SDDocumentReason` longtext,
  `RebateBasisAmount` longtext,
  `VolumeRebateGroup` longtext,
  `RetailPromotion` longtext,
  `ItemIsRelevantForCredit` longtext,
  `CreditRelatedPrice` longtext,
  `SalesOrderSalesDistrict` longtext,
  `SalesOrderCustomerGroup` longtext,
  `SalesDeal` longtext,
  `SalesPromotion` longtext,
  `SalesOrderCustomerPriceGroup` longtext,
  `SalesOrderPriceListType` longtext,
  `SalesOrderSalesOrganization` longtext,
  `SalesOrderDistributionChannel` longtext,
  `SalesDocIsCreatedFromReference` longtext,
  `ShippingPoint` longtext,
  `ServiceDocumentType` longtext,
  `ServiceDocument` longtext,
  `ServiceDocumentItem` longtext,
  `BusinessSolutionOrder` longtext,
  `BusinessSolutionOrderItem` longtext,
  `HigherLevelItemUsage` longtext,
  `BillingDocumentIsTemporary` longtext,
  `SDDocumentCategory` longtext,
  `BillingDocumentType` longtext,
  `SalesOrganization` longtext,
  `DistributionChannel` longtext,
  `CustomerPriceGroup` longtext,
  `CustomerGroup` longtext,
  `Country` longtext,
  `Region` longtext,
  `CityCode` longtext,
  `SalesDistrict` longtext,
  `OverallSDProcessStatus` longtext,
  `OverallBillingStatus` longtext,
  `SoldToParty` longtext,
  `PayerParty` longtext,
  `BillingDocumentDate` longtext,
  `CompanyCode` longtext,
  `County` longtext,
  `CustomerRebateAgreement` longtext,
  `BillingDocumentCategory` longtext,
  `PricingDocument` longtext,
  `CancelledBillingDocument` longtext,
  `ShipToParty` longtext,
  `BillToParty` longtext,
  `SalesEmployee` longtext,
  `ResponsibleEmployee` longtext,
  `Batch` longtext,
  `ShelfLifeExpirationDate` longtext,
  `ManufactureDate` longtext,
  `TotalTaxAmount` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f017_materials_issues` (
  `Org_Id` varchar(10) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `ID` longtext,
  `MaterialDocumentYear` longtext,
  `MaterialDocument` longtext,
  `MaterialDocumentItem` longtext,
  `Material` longtext,
  `Plant` longtext,
  `StorageLocation` longtext,
  `PostingDate` longtext,
  `Supplier` longtext,
  `GoodsMovementType` longtext,
  `QuantityInBaseUnit` longtext,
  `MaterialBaseUnit` longtext,
  `SupplierFullName` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f501_salesdata` (
  `Org_Id` varchar(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `Material_Id` longtext,
  `Dealer_Id` longtext,
  `SalesUser_Id` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `BaseUnit` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f502_salesdata_salesperson_date` (
  `Org_Id` varchar(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `Material_Id` longtext,
  `SalesUser_Id` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `BaseUnit` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f503_salesdata_salesperson_month` (
  `Org_Id` varchar(10) NOT NULL,
  `Month` date DEFAULT NULL,
  `Material_Id` longtext,
  `SalesUser_Id` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `BaseUnit` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f504_salesdata_salesperson_productgroup_date` (
  `Org_Id` varchar(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `ProductGroup` longtext,
  `SalesUser_Id` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `BaseUnit` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f505_salesdata_salesperson_productgroup_month` (
  `Org_Id` varchar(10) NOT NULL,
  `Month` date DEFAULT NULL,
  `ProductGroup` longtext,
  `SalesUser_Id` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `BaseUnit` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f512_salesdata_dealer_date` (
  `Org_Id` varchar(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `Material_Id` longtext,
  `Dealer_Id` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `BaseUnit` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f513_salesdata_dealer_month` (
  `Org_Id` varchar(10) NOT NULL,
  `Month` date DEFAULT NULL,
  `Material_Id` longtext,
  `Dealer_Id` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `BaseUnit` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f514_salesdata_dealer_productgroup_date` (
  `Org_Id` varchar(10) NOT NULL,
  `Date` date DEFAULT NULL,
  `ProductGroup` longtext,
  `Dealer_Id` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `BaseUnit` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `f515_salesdata_dealer_productgroup_month` (
  `Org_Id` varchar(10) NOT NULL,
  `Month` date DEFAULT NULL,
  `ProductGroup` longtext,
  `Dealer_Id` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `BaseUnit` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `farmer_inactive` (
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `imran_shaikh_merge_file_sangamner` (
  `Org_Id` text,
  `Retailer_Id` text,
  `Retailer_Name` text,
  `SalesGroup_Name` text,
  `SalesUser_Emp_Id` text,
  `Dealer_BPCode` int DEFAULT NULL,
  `Mobile_No` bigint DEFAULT NULL,
  `Contact_Person` text,
  `Email_Id` text,
  `Address_Line_1_Text` text,
  `Address_Line_2_Text` text,
  `Address_Line_3_Text` text,
  `State_Name` text,
  `District_Name` text,
  `Taluka_Name` text,
  `Village_Name` text,
  `Pincode` int DEFAULT NULL,
  `Pan_No` text,
  `ShopLatitude` double DEFAULT NULL,
  `ShopLongitude` double DEFAULT NULL,
  `Shop_License_No` text,
  `Bank_Name` text,
  `Branch_Name` text,
  `Account_No` text,
  `IFSC_Code` text,
  `Account_Name` text,
  `FSSAI_License_No` text,
  `FSSAI_LicenseValidity_On` text,
  `GST_No` text,
  `Is_Agreement_Done` text,
  `AgreementValidiy_StartDate` text,
  `AgreementValidity_EndDate` text,
  `SecurityDepositAmount` text,
  `RouteName` text,
  `MyUnknownColumn` text,
  `Salesman Name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `l001_machinedata` (
  `Org_Id` varchar(10) NOT NULL,
  `Machine1` longtext,
  `Machine2` longtext,
  `Machine3` longtext,
  PRIMARY KEY (`Org_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `l002_apilog` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Entry_Date` datetime DEFAULT NULL,
  `Transaction_Name` longtext,
  `Request_URL` longtext,
  `Request_Body` longtext,
  `Response_Code` varchar(45) DEFAULT NULL,
  `Response_Body` longtext,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `l002_joblog` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Entry_Date` datetime DEFAULT NULL,
  `Transaction_Name` longtext,
  `Request_URL` longtext,
  `Request_Body` longtext,
  `Response_Code` varchar(45) DEFAULT NULL,
  `Response_Body` longtext,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `l002_sapapilog` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Entry_Date` datetime DEFAULT NULL,
  `Transaction_Name` varchar(45) DEFAULT NULL,
  `Request_URL` text,
  `Request_Body` longtext,
  `Response_Code` varchar(10) DEFAULT NULL,
  `Response_Body` longtext,
  PRIMARY KEY (`Org_Id`,`Entry_Id`),
  KEY `idx_entry_date` (`Entry_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `l003_reqbody_log` (
  `Id` text,
  `Req_Body` longtext,
  `Req_Time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `l004_dieselupload` (
  `Org_Id` varchar(10) NOT NULL,
  `DieselUpload_Id` varchar(20) NOT NULL,
  `File_Name` longtext,
  `Upload_Date` date DEFAULT NULL,
  `Success_Count` int DEFAULT '0',
  `Error_Count` int DEFAULT '0',
  `Duplicate_Count` int DEFAULT '0',
  `Total_Count` int DEFAULT '0',
  `Upload_On` datetime DEFAULT NULL,
  `UploadBy_Id` varchar(20) DEFAULT NULL,
  `UploadBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`DieselUpload_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `l005_fleetx_routevehicle` (
  `Entry_Id` varchar(45) NOT NULL,
  `FleetX_RouteId` varchar(45) DEFAULT NULL,
  `Latitude` varchar(45) DEFAULT NULL,
  `Longitude` varchar(45) DEFAULT NULL,
  `Update_On` text,
  `Created_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `l006_collectionrecord` (
  `Ref_Id` varchar(30) DEFAULT NULL,
  `Android_Version` text,
  `Make_Model` text,
  `Created_On` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `l007_reverselog` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Entry_Date` datetime DEFAULT NULL,
  `Table_Name` longtext,
  `Table_Id` varchar(45) DEFAULT NULL,
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `SAP_Document_Year` longtext,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m001_milk_rate_offline_mcc_base` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `Chart_Id` varchar(45) DEFAULT NULL,
  `BaseFat` decimal(8,2) DEFAULT NULL,
  `BaseSNF` decimal(8,2) DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m001_milk_rate_offline_mcc_farmer` (
  `Org_Id` varchar(20) NOT NULL,
  `Chart_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(45) NOT NULL,
  `Farmer_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`Org_Id`,`Chart_Id`,`MCC_Id`,`Farmer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m001_milk_rate_offline_mcc_header` (
  `Org_Id` varchar(20) NOT NULL,
  `Chart_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `MilkType_Id` varchar(45) DEFAULT NULL,
  `CollectionShift_Id` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Chart_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m001_milk_rate_offline_mcc_slab` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `Chart_Id` varchar(45) DEFAULT NULL,
  `Slab_Type` varchar(45) DEFAULT NULL,
  `Slab_Min` decimal(8,2) DEFAULT NULL,
  `Slab_Max` decimal(8,2) DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m001_milkrate` (
  `Org_Id` varchar(10) NOT NULL,
  `Chart_Id` varchar(20) NOT NULL,
  `Chart_Name` varchar(45) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `UOM_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `Base_Rate` varchar(45) DEFAULT NULL,
  `Fat_Incentives` longtext,
  `Fat_Deduction` longtext,
  `Snf_Incentives` longtext,
  `Snf_Deduction` longtext,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_Lived` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Chart_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m001_milkrate_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Chart_Id` varchar(20) NOT NULL,
  `MilkRateEntryType_Id` varchar(20) DEFAULT NULL,
  `Slab_Id` varchar(20) DEFAULT NULL,
  `BaseFat` decimal(8,2) DEFAULT NULL,
  `BaseSNF` decimal(8,2) DEFAULT NULL,
  `Version_No` int DEFAULT '0',
  `Amount` decimal(8,2) DEFAULT NULL,
  `Applicable_Date` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Back_On` datetime DEFAULT NULL,
  `BackBy_Id` varchar(20) DEFAULT NULL,
  `BackBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`Chart_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m001_milkrate_mcc_header` (
  `Org_Id` varchar(10) NOT NULL,
  `Chart_Id` varchar(20) NOT NULL,
  `Version_No` int NOT NULL,
  `Applicable_Date` datetime DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Back_On` datetime DEFAULT NULL,
  `BackBy_Id` varchar(20) DEFAULT NULL,
  `BackBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Chart_Id`,`Version_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m001_milkrate_mcc_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Chart_Id` varchar(20) NOT NULL,
  `Version_No` int NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  PRIMARY KEY (`Org_Id`,`Chart_Id`,`Version_No`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m002_commission` (
  `Org_Id` varchar(10) NOT NULL,
  `MPPI_Id` varchar(20) NOT NULL,
  `MPPI_Name` varchar(45) DEFAULT NULL,
  `MPPIType_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `UOM_Id` varchar(20) DEFAULT NULL,
  `MCCType_Id` varchar(20) DEFAULT NULL,
  `MCCWorkType_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_Lived` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MPPI_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m002_commission_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MPPI_Id` varchar(20) NOT NULL,
  `MinimumQuantity` decimal(30,3) DEFAULT NULL,
  `MaximumQuantity` decimal(30,3) DEFAULT NULL,
  `BaseRate` decimal(8,2) DEFAULT NULL,
  `BaseFat` decimal(8,2) DEFAULT NULL,
  `BaseSNF` decimal(8,2) DEFAULT NULL,
  `MinimumFat` decimal(8,2) DEFAULT NULL,
  `MaximumFat` decimal(8,2) DEFAULT NULL,
  `MinimumSNF` decimal(8,2) DEFAULT NULL,
  `MaximumSNF` decimal(8,2) DEFAULT NULL,
  `MinimumProtein` decimal(8,2) DEFAULT NULL,
  `MaximumProtein` decimal(8,2) DEFAULT NULL,
  `MinimumAsh` decimal(8,2) DEFAULT NULL,
  `MaximumAsh` decimal(8,2) DEFAULT NULL,
  `FAT_Incentive` decimal(8,3) DEFAULT NULL,
  `FAT_Deduction` decimal(8,3) DEFAULT NULL,
  `SNF_Incentive` decimal(8,3) DEFAULT NULL,
  `SNF_Deduction` decimal(8,3) DEFAULT NULL,
  `ServiceCharge` decimal(8,2) DEFAULT NULL,
  `Version_No` int DEFAULT '0',
  `Applicable_Date` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`MPPI_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m002_commission_mcc` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `MPPI_Id` varchar(20) DEFAULT NULL,
  `MPPIType_Id` varchar(20) DEFAULT NULL,
  `Applicable_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m002_commission_mcc_header` (
  `Org_Id` varchar(10) NOT NULL,
  `MPPI_Id` varchar(20) NOT NULL,
  `Version_No` int NOT NULL,
  `Applicable_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MPPI_Id`,`Version_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m002_commission_mcc_item` (
  `Org_Id` varchar(10) NOT NULL,
  `MPPI_Id` varchar(20) NOT NULL,
  `Version_No` int NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  PRIMARY KEY (`Org_Id`,`MPPI_Id`,`Version_No`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m003_vehicle` (
  `Org_Id` varchar(10) NOT NULL,
  `Vehicle_Id` varchar(20) NOT NULL,
  `Vehicle_No` varchar(45) DEFAULT NULL,
  `Chassis_No` varchar(45) DEFAULT NULL,
  `VehicleType_Id` varchar(20) DEFAULT NULL,
  `VehicleOwnershipType_Id` varchar(20) DEFAULT NULL,
  `Transporter_Id` varchar(45) DEFAULT NULL,
  `OwnerName` varchar(45) DEFAULT NULL,
  `VehicleMake_Id` varchar(20) DEFAULT NULL,
  `LabourCharge` int DEFAULT '0',
  `CapacityInKG` varchar(45) DEFAULT NULL,
  `NoOfCellsInTanker` varchar(45) DEFAULT NULL,
  `VehicleAverage` varchar(45) DEFAULT NULL,
  `FSSAILicense_No` varchar(45) DEFAULT NULL,
  `FSSAILicenseValidity_On` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Vehicle_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m003_vehiclecapacity` (
  `Org_Id` varchar(20) NOT NULL,
  `Vehicle_id` varchar(20) NOT NULL,
  `Cell_No` int NOT NULL,
  `Capacity_Ltr` decimal(8,3) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Vehicle_id`,`Cell_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m004_freight` (
  `Org_Id` varchar(10) NOT NULL,
  `Freight_Id` varchar(20) NOT NULL,
  `Vehicle_Id` varchar(20) DEFAULT NULL,
  `FreightRateType_Id` varchar(20) DEFAULT NULL,
  `Version_No` int DEFAULT '0',
  `BaseRate` decimal(8,2) DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `Applicable_Date` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Freight_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m005_mcc` (
  `Org_Id` varchar(10) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `MCC_Name` varchar(255) DEFAULT NULL,
  `MCC_Code` varchar(45) DEFAULT NULL,
  `Plant_Code` varchar(45) DEFAULT NULL,
  `MCCCategory_Id` varchar(10) DEFAULT NULL,
  `MCCType_Id` varchar(20) DEFAULT NULL,
  `MCCWorkType_Id` varchar(20) DEFAULT NULL,
  `Agent_Id` varchar(20) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  `State_Id` varchar(20) DEFAULT NULL,
  `District_Id` varchar(20) DEFAULT NULL,
  `Taluka_Id` varchar(20) DEFAULT NULL,
  `Village_Id` varchar(20) DEFAULT NULL,
  `Address_Text` varchar(200) DEFAULT NULL,
  `Pan_No` varchar(10) DEFAULT NULL,
  `Aadhar_No` varchar(12) DEFAULT NULL,
  `Bank_Id` varchar(20) DEFAULT NULL,
  `Branch_Id` varchar(20) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `FSSAILicense_No` varchar(45) DEFAULT NULL,
  `FSSAILicenseValidity_On` datetime DEFAULT NULL,
  `Account_Name` varchar(100) DEFAULT NULL,
  `MusterType_Id` varchar(20) DEFAULT NULL,
  `PaymentCycle_Id` varchar(20) DEFAULT NULL,
  `PaymentType_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` longtext,
  `CollectionShift_Id` longtext,
  `Latitude` varchar(45) DEFAULT NULL,
  `Longitude` varchar(45) DEFAULT NULL,
  `Profile_Photo` varchar(255) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `FSSAILicense_Photo` varchar(255) DEFAULT NULL,
  `Is_ManualWeight` int DEFAULT '0',
  `Is_ManualQuality` int DEFAULT '0',
  `Is_ManualShiftEnd` int DEFAULT '0',
  `Is_ExtraTime` int DEFAULT '0',
  `Is_Alternate` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `Anamat_Applicable_To` varchar(45) DEFAULT NULL,
  `Freight_Applicable_To` varchar(45) DEFAULT NULL,
  `WithholdingTaxType_Id` varchar(45) DEFAULT NULL,
  `Blocked_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MCC_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `District_Id` (`District_Id`),
  KEY `Taluka_Id` (`Taluka_Id`),
  KEY `Village_Id` (`Village_Id`),
  KEY `Bank_Id` (`Bank_Id`),
  KEY `Branch_Id` (`Branch_Id`),
  KEY `State_Id` (`State_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m005_mcc_collectionshift` (
  `Org_Id` varchar(10) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `CollectionShift_Id` varchar(20) NOT NULL,
  `Version_No` int NOT NULL,
  PRIMARY KEY (`Org_Id`,`MCC_Id`,`CollectionShift_Id`,`Version_No`),
  KEY `m005_mcc_collectionshift` (`Org_Id`,`MCC_Id`,`CollectionShift_Id`,`Version_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m005_mcc_milktype` (
  `Org_Id` varchar(10) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `MilkType_Id` varchar(20) NOT NULL,
  `Version_No` int NOT NULL,
  PRIMARY KEY (`MilkType_Id`,`Org_Id`,`MCC_Id`,`Version_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m005_mcc_muster` (
  `Org_Id` varchar(10) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `MusterType_Id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m005_mcc_offline_anamat_amount_config` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(45) DEFAULT NULL,
  `Anamat_PerLtr` decimal(8,2) DEFAULT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m005_mcc_offline_anamat_config` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(45) DEFAULT NULL,
  `Anamat_PerLtr` decimal(8,2) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m005_mcc_offline_config` (
  `Org_Id` varchar(10) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `Is_Morning` int DEFAULT '0',
  `Morning_Start_Time` time DEFAULT NULL,
  `Morning_End_Time` time DEFAULT NULL,
  `Is_Evening` int DEFAULT '0',
  `Evening_Start_Time` time DEFAULT NULL,
  `Evening_End_Time` time DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m005_mcc_version` (
  `Org_Id` varchar(10) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `Version_No` int NOT NULL DEFAULT '1',
  `MusterType_Id` varchar(20) DEFAULT NULL,
  `PaymentCycle_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Name` longtext,
  `MilkType_Name` longtext,
  `Applicable_Date` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Anamat_PerLtr` decimal(8,2) DEFAULT NULL,
  `Freight_PerLtr` decimal(8,2) DEFAULT NULL,
  `Anamat_Applicable_To` varchar(45) DEFAULT NULL,
  `Freight_Applicable_To` varchar(45) DEFAULT NULL,
  `Rebate_PerLtr` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MCC_Id`,`Version_No`),
  KEY `m005_mcc_version` (`Org_Id`,`MCC_Id`,`Applicable_Date`,`Version_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m006_fleetx_route` (
  `Org_Id` varchar(10) NOT NULL,
  `Route_Id` varchar(20) NOT NULL,
  `Route_Name` longtext,
  `Vehicle_No` longtext,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Route_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m006_fleetx_route_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `Route_Id` varchar(20) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `User_Id` varchar(45) DEFAULT NULL,
  `Is_Notify` int DEFAULT '0',
  `Title` longtext,
  `Body` longtext,
  `Created_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m006_route` (
  `Org_Id` varchar(10) NOT NULL,
  `Route_Id` varchar(20) NOT NULL,
  `Route_Name` varchar(45) DEFAULT NULL,
  `Route_Code` varchar(45) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `VehicleType_Id` varchar(45) DEFAULT NULL,
  `Freight_Fix_Cost` decimal(8,2) DEFAULT NULL,
  `Total_Distance` decimal(8,2) DEFAULT NULL,
  `Duration` decimal(8,2) DEFAULT NULL,
  `Fuel_Required` decimal(8,2) DEFAULT NULL,
  `Monday_Flag` int DEFAULT '0',
  `Tuesday_Flag` int DEFAULT '0',
  `Wednesday_Flag` int DEFAULT '0',
  `Thursday_Flag` int DEFAULT '0',
  `Friday_Flag` int DEFAULT '0',
  `Saturday_Flag` int DEFAULT '0',
  `Sunday_Flag` int DEFAULT '0',
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Start_Time` time DEFAULT NULL,
  `End_Time` time DEFAULT NULL,
  `Version_No` int DEFAULT '0',
  `Check_Route_Id` varchar(20) DEFAULT NULL,
  `Version_Check` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_Lived` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Route_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m007_route_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Route_Id` varchar(20) NOT NULL,
  `Stage_No` int NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Distance` decimal(8,2) DEFAULT NULL,
  `Arrival_Time` time DEFAULT NULL,
  `Departure_Time` time DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Route_Id`,`Stage_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m008_route_vehicle` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Route_Id` varchar(20) NOT NULL,
  `Vehicle_Id` varchar(20) DEFAULT NULL,
  `VehicleType` varchar(20) DEFAULT NULL,
  `Driver_Id` varchar(20) DEFAULT NULL,
  `Chemist_Id` varchar(20) DEFAULT NULL,
  `From_Date` datetime DEFAULT NULL,
  `To_Date` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`Route_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m009_transporter` (
  `Org_Id` varchar(10) NOT NULL,
  `Transporter_Id` varchar(20) NOT NULL,
  `Transporter_Name` varchar(100) DEFAULT NULL,
  `Transporter_Code` varchar(45) DEFAULT NULL,
  `ContactPerson_Name` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  `Is_MobileNo_Verified` int DEFAULT NULL,
  `Driver_Id` varchar(45) DEFAULT NULL,
  `Chemist_Id` varchar(45) DEFAULT NULL,
  `Address_Text` varchar(200) DEFAULT NULL,
  `State_Id` varchar(20) DEFAULT NULL,
  `District_Id` varchar(20) DEFAULT NULL,
  `Taluka_Id` varchar(20) DEFAULT NULL,
  `Village_Id` varchar(20) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Bank_Id` varchar(20) DEFAULT NULL,
  `Branch_Id` varchar(20) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(45) DEFAULT NULL,
  `LicenseValidity_On` datetime DEFAULT NULL,
  `Company_Pan_No` varchar(45) DEFAULT NULL,
  `FSSAI_License_No` varchar(45) DEFAULT NULL,
  `Profile_Photo` varchar(255) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `Aadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `Company_Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `FSSAI_License_Photo` varchar(255) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `WithholdingTaxType_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Transporter_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m010_material` (
  `Org_Id` varchar(10) NOT NULL,
  `Material_Id` varchar(20) NOT NULL,
  `Material_Code` varchar(45) DEFAULT NULL,
  `Material_Name` varchar(45) DEFAULT NULL,
  `MaterialType_Id` varchar(20) DEFAULT NULL,
  `Material_Group` varchar(45) DEFAULT NULL,
  `BaseUnit` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT NULL,
  `Is_Deleted` int DEFAULT NULL,
  `Is_TradingMaterial` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Material_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m011_incentivescheme` (
  `Org_Id` varchar(10) NOT NULL,
  `IncentiveScheme_Id` varchar(20) NOT NULL,
  `Scheme_Name` varchar(45) DEFAULT NULL,
  `IncentiveType_Id` varchar(45) DEFAULT NULL,
  `IncentiveFrequency_Id` varchar(45) DEFAULT NULL,
  `Criteria` int DEFAULT NULL,
  `Scheme_Description` varchar(255) DEFAULT NULL,
  `Is_For_Farmer` int DEFAULT NULL,
  `Is_For_Agent` int DEFAULT NULL,
  `From_Date` datetime DEFAULT NULL,
  `To_Date` datetime DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_Completed` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`IncentiveScheme_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m011_incentivescheme_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `IncentiveScheme_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m012_service` (
  `Org_Id` varchar(10) NOT NULL,
  `Service_Id` varchar(20) NOT NULL,
  `Service_Name` varchar(45) DEFAULT NULL,
  `ServiceType_Id` varchar(45) DEFAULT NULL,
  `Service_Description` longtext,
  `Condition_1` longtext,
  `Condition_2` longtext,
  `Condition_3` longtext,
  `Condition_4` longtext,
  `Condition_5` longtext,
  `Material_Id` varchar(20) DEFAULT NULL,
  `From_Date` datetime DEFAULT NULL,
  `To_Date` datetime DEFAULT NULL,
  `Is_For_Farmer` int DEFAULT NULL,
  `Is_For_Agent` int DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Service_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m013_salesarea` (
  `Org_Id` varchar(10) NOT NULL,
  `SalesArea_Id` varchar(20) NOT NULL,
  `SalesArea_Name` varchar(45) DEFAULT NULL,
  `SalesArea_Code` varchar(45) DEFAULT NULL,
  `SalesOffice_Code` varchar(20) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`SalesArea_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m013_salesarea_item` (
  `Org_Id` varchar(10) NOT NULL,
  `SalesOffice_Code` varchar(10) NOT NULL,
  `SalesOrg_Code` varchar(10) NOT NULL,
  `DistChannel_Code` varchar(10) NOT NULL,
  `Division_Code` varchar(10) NOT NULL,
  `SalesOffice_Name` varchar(50) NOT NULL,
  `SAPSalesArea_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Is_Active` int NOT NULL DEFAULT '1',
  `Is_Deleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`SalesOffice_Code`,`SalesOrg_Code`,`DistChannel_Code`,`Division_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m014_slab` (
  `Org_Id` varchar(10) NOT NULL,
  `Slab_Id` varchar(20) NOT NULL,
  `Slab_Name` varchar(45) DEFAULT NULL,
  `Slab_Type` varchar(45) DEFAULT NULL,
  `Slab_Min` decimal(8,2) DEFAULT NULL,
  `Slab_Max` decimal(8,2) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Slab_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m015_bank` (
  `Org_Id` varchar(10) NOT NULL,
  `Bank_Id` varchar(20) NOT NULL,
  `Bank_Name` varchar(150) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Bank_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m016_branch` (
  `Org_Id` varchar(10) NOT NULL,
  `Bank_Id` varchar(20) NOT NULL,
  `Branch_Id` varchar(20) NOT NULL,
  `Branch_Name` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Address_Text` longtext,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Bank_Id`,`Branch_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m017_product` (
  `Org_Id` varchar(10) NOT NULL,
  `Product_Id` varchar(20) NOT NULL,
  `Product_Code` varchar(45) DEFAULT NULL,
  `Product_Name` text,
  `Product_Group` varchar(45) DEFAULT NULL,
  `Product_Type` varchar(20) DEFAULT NULL,
  `Division_Code` varchar(10) DEFAULT NULL,
  `Rate` varchar(45) DEFAULT NULL,
  `BaseUnit` varchar(45) DEFAULT NULL,
  `Image` text,
  `Is_Active` int DEFAULT NULL,
  `Is_Deleted` int DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Product_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m018_mccopening_stock` (
  `Org_Id` varchar(20) NOT NULL,
  `OpeningStock_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Material_Id` varchar(45) DEFAULT NULL,
  `Stock` varchar(20) DEFAULT NULL,
  `Stock_Unit` varchar(45) DEFAULT NULL,
  `OpeingStock_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`OpeningStock_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m019_salesuserroute_header` (
  `Org_Id` varchar(20) NOT NULL,
  `Route_Id` varchar(20) NOT NULL,
  `SalesUser_Id` varchar(45) NOT NULL,
  `RouteDay_Id` varchar(45) NOT NULL,
  `SalesArea_Id` varchar(45) DEFAULT NULL,
  `Route_Name` varchar(100) DEFAULT NULL,
  `Working_Status` int DEFAULT '1',
  `Total_Retailers` varchar(45) DEFAULT NULL,
  `Remarks` longtext,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(45) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(45) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Route_Id`,`SalesUser_Id`,`RouteDay_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m019_salesuserroute_item` (
  `Org_Id` varchar(20) NOT NULL,
  `Route_Id` varchar(20) NOT NULL,
  `Retailer_Id` varchar(45) NOT NULL,
  `RouteDay_Id` varchar(45) NOT NULL,
  `SalesUser_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`Org_Id`,`Route_Id`,`Retailer_Id`,`RouteDay_Id`,`SalesUser_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m019_salesuserroute_item_dealer` (
  `Org_Id` varchar(20) NOT NULL,
  `SalesUser_Id` varchar(45) NOT NULL,
  `Dealer_Id` varchar(20) NOT NULL,
  PRIMARY KEY (`Org_Id`,`SalesUser_Id`,`Dealer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m020_deductions_head` (
  `Org_Id` varchar(20) NOT NULL,
  `DeductionHead_Id` varchar(45) NOT NULL,
  `DeductionHead_Name` varchar(45) DEFAULT NULL,
  `User_Type` varchar(45) DEFAULT NULL,
  `Deduction_Type` varchar(45) DEFAULT NULL,
  `GL_Code` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`DeductionHead_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m020_incentives_head` (
  `Org_Id` varchar(20) NOT NULL,
  `IncentiveHead_Id` varchar(45) NOT NULL,
  `IncentiveHead_Name` varchar(45) DEFAULT NULL,
  `User_Type` varchar(45) DEFAULT NULL,
  `Incentive_Type` varchar(45) DEFAULT NULL,
  `GL_Code` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`IncentiveHead_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m021_crate_stock` (
  `Org_Id` varchar(45) NOT NULL,
  `Dealer_Id` varchar(45) NOT NULL,
  `Material_Code` varchar(45) NOT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Dealer_Id`,`Material_Code`,`Org_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m022_dealer_distchannel` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `Dealer_Id` varchar(45) DEFAULT NULL,
  `SalesOrg_Code` varchar(45) DEFAULT NULL,
  `DistChannel_Code` varchar(45) DEFAULT NULL,
  `Division_Code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m023_product_group` (
  `Org_Id` varchar(20) NOT NULL,
  `ProductGroup_Id` varchar(45) NOT NULL,
  `Product_Group` varchar(100) DEFAULT NULL,
  `Product_Name` varchar(150) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`ProductGroup_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m024_dealer_route` (
  `Org_Id` varchar(30) NOT NULL,
  `FleetX_RouteId` varchar(45) NOT NULL,
  `Route_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`FleetX_RouteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m025_app_version` (
  `Entry_Id` varchar(20) NOT NULL,
  `App_Name` varchar(100) DEFAULT NULL,
  `Version` varchar(45) DEFAULT NULL,
  `Applicable_From` datetime DEFAULT NULL,
  PRIMARY KEY (`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m026_dealerroute_fleetx` (
  `Org_Id` varchar(20) NOT NULL,
  `Route_Id` varchar(45) NOT NULL,
  `Route_Name` varchar(100) DEFAULT NULL,
  `FleetX_RouteId` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(45) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(45) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Route_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m027_product_uom` (
  `Org_Id` varchar(20) NOT NULL,
  `Product_Code` varchar(45) NOT NULL,
  `UOM` varchar(45) NOT NULL,
  PRIMARY KEY (`Org_Id`,`Product_Code`,`UOM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m028_fleetx_route` (
  `Org_Id` varchar(20) NOT NULL,
  `RouteId` varchar(45) NOT NULL,
  `RouteName` text,
  PRIMARY KEY (`Org_Id`,`RouteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m029_payment_terms` (
  `Org_id` varchar(20) NOT NULL,
  `Payment_Term` varchar(45) NOT NULL,
  `PaymentTermsName` text,
  PRIMARY KEY (`Org_id`,`Payment_Term`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m101_mcc_material` (
  `Org_Id` varchar(10) NOT NULL,
  `MCC_Id` varchar(45) NOT NULL,
  `Material_Id` varchar(20) NOT NULL,
  `Material_Name` longtext,
  `BaseUnit` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT NULL,
  `Is_Deleted` int DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MCC_Id`,`Material_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m102_mcc_supplier` (
  `Org_Id` varchar(10) NOT NULL,
  `MCC_Id` varchar(45) NOT NULL,
  `Supplier_Id` varchar(45) NOT NULL,
  `Supplier_Name` longtext,
  `Address_Text` longtext,
  `Mobile_No` varchar(45) DEFAULT NULL,
  `ContactPerson_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Supplier_Id`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `m102_mcc_supplier_item` (
  `Org_Id` varchar(10) NOT NULL,
  `MCC_Id` varchar(45) NOT NULL,
  `Supplier_Id` varchar(45) NOT NULL,
  `Material_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`Org_Id`,`MCC_Id`,`Supplier_Id`,`Material_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `missing` (
  `Dispatch_Id` text,
  `Customer_No` text,
  `Customer Name` text,
  `Product Name` text,
  `Crate_Code` text,
  `Crate_Qty` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ml02_state` (
  `Org_Id` varchar(10) NOT NULL,
  `State_Id` varchar(20) NOT NULL,
  `State_Name` varchar(45) DEFAULT NULL,
  `State_Code` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`State_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ml03_district` (
  `Org_Id` varchar(10) NOT NULL,
  `State_Id` varchar(20) NOT NULL,
  `District_Id` varchar(20) NOT NULL,
  `District_Name` varchar(45) DEFAULT NULL,
  `District_Code` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`State_Id`,`District_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ml04_taluka` (
  `Org_Id` varchar(10) NOT NULL,
  `State_Id` varchar(20) NOT NULL,
  `District_Id` varchar(20) NOT NULL,
  `Taluka_Id` varchar(20) NOT NULL,
  `Taluka_Name` varchar(45) DEFAULT NULL,
  `Taluka_Code` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`State_Id`,`District_Id`,`Taluka_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ml05_village` (
  `Org_Id` varchar(10) NOT NULL,
  `State_Id` varchar(20) NOT NULL,
  `District_Id` varchar(20) NOT NULL,
  `Taluka_Id` varchar(20) NOT NULL,
  `Village_Id` varchar(20) NOT NULL,
  `Village_Name` varchar(45) DEFAULT NULL,
  `Pin_Code` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`State_Id`,`District_Id`,`Taluka_Id`,`Village_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mp01_sap_mapping` (
  `Org_Id` varchar(10) NOT NULL,
  `APP_Code` varchar(20) NOT NULL,
  `SAP_Code` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`APP_Code`,`Org_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu01_role` (
  `Org_Id` varchar(10) NOT NULL,
  `Role_Id` varchar(20) NOT NULL,
  `Role_Name` varchar(45) DEFAULT NULL,
  `Is_SystemRole` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Role_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu02_role_menu` (
  `Org_Id` varchar(10) NOT NULL,
  `Role_Id` varchar(20) NOT NULL,
  `Menu_Id` varchar(10) NOT NULL,
  `Display_Flag` int DEFAULT NULL,
  `Add_Flag` int DEFAULT NULL,
  `Edit_Flag` int DEFAULT NULL,
  `Delete_Flag` int DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Role_Id`,`Menu_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu02_role_report` (
  `Org_Id` varchar(10) NOT NULL,
  `Role_Id` varchar(20) NOT NULL,
  `ReportType_Id` varchar(10) NOT NULL,
  `Flag` int DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Role_Id`,`ReportType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu03_user` (
  `Org_Id` varchar(10) NOT NULL,
  `User_Id` varchar(20) NOT NULL,
  `Login_Name` varchar(45) DEFAULT NULL,
  `Login_Password` varchar(45) DEFAULT NULL,
  `Role_Id` varchar(20) DEFAULT NULL,
  `Employee_Id` varchar(45) DEFAULT NULL,
  `User_Name` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  `Email_Id` varchar(45) DEFAULT NULL,
  `Joining_Date` datetime DEFAULT NULL,
  `Pan_No` varchar(10) DEFAULT NULL,
  `Aadhar_No` varchar(12) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_PasswordReset` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` longtext,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` longtext,
  PRIMARY KEY (`Org_Id`,`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu04_farmer` (
  `Org_Id` varchar(10) NOT NULL,
  `Farmer_Id` varchar(20) NOT NULL,
  `Login_Name` varchar(45) DEFAULT NULL,
  `Login_Password` varchar(45) DEFAULT NULL,
  `Farmer_Name` varchar(45) DEFAULT NULL,
  `Farmer_Code` varchar(45) DEFAULT NULL,
  `MCC_Farmer_Code` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  `AlternateMobile_No` varchar(20) DEFAULT NULL,
  `Email_Id` varchar(45) DEFAULT NULL,
  `Birth_Date` datetime DEFAULT NULL,
  `Is_MobileNo_Verified` int DEFAULT NULL,
  `Address_Text` longtext,
  `State_Id` varchar(20) DEFAULT NULL,
  `District_Id` varchar(20) DEFAULT NULL,
  `Taluka_Id` varchar(20) DEFAULT NULL,
  `Village_Id` varchar(20) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Cow_Count` int DEFAULT NULL,
  `Buffalo_Count` int DEFAULT NULL,
  `Calf_Count` int DEFAULT NULL,
  `Milk_Capacity` int DEFAULT NULL,
  `Pan_No` varchar(10) DEFAULT NULL,
  `Aadhar_No` varchar(12) DEFAULT NULL,
  `Bank_Id` varchar(20) DEFAULT NULL,
  `Branch_Id` varchar(20) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(100) DEFAULT NULL,
  `Nominee_Name` varchar(45) DEFAULT NULL,
  `Nominee_Relation` varchar(45) DEFAULT NULL,
  `Nominee_Mobile_No` varchar(45) DEFAULT NULL,
  `Nominee_Aadhar_No` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Agent_Id` varchar(20) DEFAULT NULL,
  `Profile_Photo` varchar(255) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `Aadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `Ration_Card_Photo` varchar(255) DEFAULT NULL,
  `Bank_Cheque_PBook_Photo` varchar(255) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_PasswordReset` int DEFAULT '0',
  `Is_Request_Accepted` int DEFAULT '0',
  `RequestAcceptedBy_Id` varchar(20) DEFAULT NULL,
  `RequestAcceptedBy_Name` varchar(45) DEFAULT NULL,
  `RequestAccepted_On` datetime DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `AnamatOpeningBalance` int DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `Gov_Farmer_Id` varchar(45) DEFAULT NULL,
  `Gov_Farmer_Name` varchar(45) DEFAULT NULL,
  `WithholdingTaxType_Id` varchar(45) DEFAULT NULL,
  `Is_Offline` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Farmer_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `State_Id` (`State_Id`),
  KEY `District_Id` (`District_Id`),
  KEY `Taluka_Id` (`Taluka_Id`),
  KEY `Village_Id` (`Village_Id`),
  KEY `Bank_Id` (`Bank_Id`),
  KEY `Branch_Id` (`Branch_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu05_agent` (
  `Org_Id` varchar(10) NOT NULL,
  `Agent_Id` varchar(20) NOT NULL,
  `Login_Name` varchar(45) DEFAULT NULL,
  `Login_Password` varchar(45) DEFAULT NULL,
  `Agent_Name` varchar(45) DEFAULT NULL,
  `Agent_Code` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  `Email_Id` varchar(45) DEFAULT NULL,
  `Is_MobileNo_Verified` int DEFAULT NULL,
  `Birth_Date` datetime DEFAULT NULL,
  `Joining_Date` datetime DEFAULT NULL,
  `Address_Text` varchar(200) DEFAULT NULL,
  `State_Id` varchar(20) DEFAULT NULL,
  `District_Id` varchar(20) DEFAULT NULL,
  `Taluka_Id` varchar(20) DEFAULT NULL,
  `Village_Id` varchar(20) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Bank_Name` varchar(45) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(100) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Pan_No` varchar(10) DEFAULT NULL,
  `Aadhar_No` varchar(12) DEFAULT NULL,
  `Profile_Photo` varchar(255) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `Aadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `Online_App_Flag` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_PasswordReset` int DEFAULT '0',
  `Is_Request_Accepted` int DEFAULT '0',
  `RequestAcceptedBy_Id` varchar(20) DEFAULT NULL,
  `RequestAcceptedBy_Name` varchar(45) DEFAULT NULL,
  `RequestAccepted_On` datetime DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Agent then Agent Id will come here else Id of User who has created account will come here',
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Agent_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu06_driver` (
  `Org_Id` varchar(10) NOT NULL,
  `Driver_Id` varchar(20) NOT NULL,
  `Login_Name` varchar(45) DEFAULT NULL,
  `Login_Password` varchar(45) DEFAULT NULL,
  `Driver_Name` varchar(45) DEFAULT NULL,
  `Driver_Code` varchar(45) DEFAULT NULL,
  `DrivingLicense_No` varchar(45) DEFAULT NULL,
  `DriverType_Id` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  `Is_MobileNo_Verified` int DEFAULT NULL,
  `Birth_Date` datetime DEFAULT NULL,
  `Joining_Date` datetime DEFAULT NULL,
  `Address_Text` varchar(200) DEFAULT NULL,
  `State_Id` varchar(20) DEFAULT NULL,
  `District_Id` varchar(20) DEFAULT NULL,
  `Taluka_Id` varchar(20) DEFAULT NULL,
  `Village_Id` varchar(20) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Bank_Name` varchar(45) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(100) DEFAULT NULL,
  `Pan_No` varchar(10) DEFAULT NULL,
  `Aadhar_No` varchar(12) DEFAULT NULL,
  `Profile_Photo` varchar(255) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `Aadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `Online_App_Flag` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_PasswordReset` int DEFAULT '0',
  `Is_Request_Accepted` int DEFAULT '0',
  `RequestAcceptedBy_Id` varchar(20) DEFAULT NULL,
  `RequestAcceptedBy_Name` varchar(45) DEFAULT NULL,
  `RequestAccepted_On` datetime DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Driver_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu07_routechemist` (
  `Org_Id` varchar(10) NOT NULL,
  `Chemist_Id` varchar(45) NOT NULL,
  `Login_Name` varchar(45) DEFAULT NULL,
  `Login_Password` varchar(45) DEFAULT NULL,
  `Chemist_Name` varchar(45) DEFAULT NULL,
  `Chemist_Code` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(45) DEFAULT NULL,
  `Online_App_Flag` int DEFAULT '0',
  `Is_MobileNo_Verified` int DEFAULT NULL,
  `Birth_Date` datetime DEFAULT NULL,
  `Joining_Date` datetime DEFAULT NULL,
  `Address_Text` varchar(200) DEFAULT NULL,
  `State_Id` varchar(20) DEFAULT NULL,
  `District_Id` varchar(20) DEFAULT NULL,
  `Taluka_Id` varchar(20) DEFAULT NULL,
  `Village_Id` varchar(20) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Bank_Name` varchar(45) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(100) DEFAULT NULL,
  `Pan_No` varchar(10) DEFAULT NULL,
  `Aadhar_No` varchar(12) DEFAULT NULL,
  `Profile_Photo` varchar(255) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `Aadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_PasswordReset` int DEFAULT '0',
  `RequestAcceptedBy_Id` varchar(20) DEFAULT NULL,
  `RequestAcceptedBy_Name` varchar(45) DEFAULT NULL,
  `RequestAccepted_On` datetime DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Hidden` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Chemist_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu08_dealer` (
  `Org_Id` varchar(10) NOT NULL,
  `Dealer_Id` varchar(20) NOT NULL,
  `FleetX_RouteId` varchar(45) DEFAULT NULL,
  `Login_Name` varchar(100) DEFAULT NULL,
  `Login_Password` varchar(45) DEFAULT NULL,
  `Dealer_Code` varchar(45) DEFAULT NULL,
  `Dealer_Name` varchar(100) DEFAULT NULL,
  `SalesArea_Id` varchar(45) DEFAULT NULL,
  `SalesUser_Id` varchar(45) DEFAULT NULL,
  `Phone_No` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(45) DEFAULT NULL,
  `Contact_Person` varchar(45) DEFAULT NULL,
  `Is_MobileNo_Verified` int DEFAULT NULL,
  `Email_Id` varchar(45) DEFAULT NULL,
  `Address_Line_1_Text` longtext,
  `Address_Line_2_Text` longtext,
  `Address_Line_3_Text` longtext,
  `State_Name` varchar(45) DEFAULT NULL,
  `District_Name` varchar(45) DEFAULT NULL,
  `Taluka_Name` varchar(45) DEFAULT NULL,
  `Village_Name` varchar(45) DEFAULT NULL,
  `Pincode` varchar(45) DEFAULT NULL,
  `Pan_No` varchar(45) DEFAULT NULL,
  `Bank_Name` varchar(255) DEFAULT NULL,
  `Branch_Name` varchar(255) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(45) DEFAULT NULL,
  `MSME_No` varchar(45) DEFAULT NULL,
  `FSSAI_License_No` varchar(45) DEFAULT NULL,
  `FSSAI_LicenseValidity_On` datetime DEFAULT NULL,
  `GST_No` varchar(45) DEFAULT NULL,
  `Profile_Photo` varchar(255) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `Aadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `Shop_License_Photo` varchar(255) DEFAULT NULL,
  `Cheque_Leaf_Photo` varchar(255) DEFAULT NULL,
  `UdyamAadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `FSSAI_License_Photo` varchar(255) DEFAULT NULL,
  `GST_Certificate_Photo` varchar(255) DEFAULT NULL,
  `Is_Agreement_Done` int DEFAULT NULL,
  `AgreementValidiy_StartDate` date DEFAULT NULL,
  `AgreementValidity_EndDate` date DEFAULT NULL,
  `SecurityDepositAmount` decimal(30,2) DEFAULT NULL,
  `ShopLatitude` varchar(45) DEFAULT NULL,
  `ShopLongitude` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_PasswordReset` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Payment_Url` longtext,
  `Is_Payment` int DEFAULT '0',
  `CrateLimit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Dealer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu09_retailer` (
  `Org_Id` varchar(10) NOT NULL,
  `Retailer_Id` varchar(45) NOT NULL,
  `Retailer_Name` varchar(100) DEFAULT NULL,
  `SalesArea_Id` varchar(45) DEFAULT NULL,
  `Route_Id` varchar(45) DEFAULT NULL,
  `Dealer_Id` varchar(20) DEFAULT NULL,
  `Mobile_No` varchar(45) DEFAULT NULL,
  `Contact_Person` varchar(45) DEFAULT NULL,
  `Is_MobileNo_Verified` int DEFAULT NULL,
  `Email_Id` varchar(45) DEFAULT NULL,
  `Address_Line_1_Text` longtext,
  `Address_Line_2_Text` longtext,
  `Address_Line_3_Text` longtext,
  `State_Id` varchar(45) DEFAULT NULL,
  `District_Id` varchar(45) DEFAULT NULL,
  `Taluka_Id` varchar(45) DEFAULT NULL,
  `Village_Id` varchar(45) DEFAULT NULL,
  `Pincode` varchar(45) DEFAULT NULL,
  `Pan_No` varchar(45) DEFAULT NULL,
  `ShopLatitude` varchar(45) DEFAULT NULL,
  `ShopLongitude` varchar(45) DEFAULT NULL,
  `Shop_License_No` varchar(45) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `Shop_License_Photo` varchar(255) DEFAULT NULL,
  `Cheque_Leaf_Photo` varchar(255) DEFAULT NULL,
  `Shop_Name_Photo` varchar(255) DEFAULT NULL,
  `Bank_Id` varchar(20) DEFAULT NULL,
  `Branch_Id` varchar(20) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(45) DEFAULT NULL,
  `FSSAI_License_No` varchar(45) DEFAULT NULL,
  `FSSAI_LicenseValidity_On` datetime DEFAULT NULL,
  `UdyamAadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `FSSAI_License_Photo` varchar(255) DEFAULT NULL,
  `GST_Certificate_Photo` varchar(255) DEFAULT NULL,
  `Is_Agreement_Done` int DEFAULT NULL,
  `AgreementValidiy_StartDate` date DEFAULT NULL,
  `AgreementValidity_EndDate` date DEFAULT NULL,
  `SecurityDepositAmount` decimal(10,2) DEFAULT NULL,
  `Is_Approved` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_PasswordReset` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Approval_Remarks` longtext,
  `Approved_On` datetime DEFAULT NULL,
  `Approved_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `Approved_Name` varchar(45) DEFAULT NULL,
  `MSME` varchar(45) DEFAULT NULL,
  `Aadhar_No` varchar(45) DEFAULT NULL,
  `ASME` varchar(45) DEFAULT NULL,
  `GST_No` varchar(45) DEFAULT NULL,
  `Landline_Number` varchar(255) DEFAULT NULL,
  `SalesUser_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Retailer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu10_user_otp` (
  `OTP_Request_Id` varchar(20) NOT NULL,
  `Org_Id` varchar(10) DEFAULT NULL,
  `Mobile_No` varchar(12) DEFAULT NULL,
  `OTP` varchar(10) DEFAULT NULL,
  `Generated_On` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`OTP_Request_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu11_user_deviceid` (
  `Org_Id` varchar(10) DEFAULT NULL,
  `User_Id` varchar(45) DEFAULT NULL,
  `User_Type` varchar(45) DEFAULT NULL,
  `Device_Id` text,
  `LastEdited_On` datetime DEFAULT NULL,
  `Android_Version` text,
  `Make_Model` text,
  `Ref_Id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu12_sales_user` (
  `Org_Id` varchar(10) NOT NULL,
  `SalesUser_Id` varchar(20) NOT NULL,
  `Login_Name` varchar(45) DEFAULT NULL,
  `Login_Password` varchar(45) DEFAULT NULL,
  `SalesUser_Name` varchar(45) DEFAULT NULL,
  `SAP_BP_Partner_Code` varchar(45) DEFAULT NULL,
  `SalesEmployee` varchar(255) DEFAULT NULL,
  `SalesUser_Code` varchar(45) DEFAULT NULL,
  `SalesUserRole_Id` varchar(20) DEFAULT NULL,
  `ReportingTo_Id` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  `Is_MobileNo_Verified` int DEFAULT NULL,
  `Email_Id` varchar(45) DEFAULT NULL,
  `Birth_Date` datetime DEFAULT NULL,
  `Joining_Date` datetime DEFAULT NULL,
  `Address_Text` varchar(200) DEFAULT NULL,
  `State_Id` varchar(20) DEFAULT NULL,
  `District_Id` varchar(20) DEFAULT NULL,
  `Taluka_Id` varchar(20) DEFAULT NULL,
  `Village_Id` varchar(20) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Pan_No` varchar(10) DEFAULT NULL,
  `Aadhar_No` varchar(12) DEFAULT NULL,
  `Profile_Photo` varchar(255) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `Aadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `Online_App_Flag` int DEFAULT '0',
  `Bank_Name` varchar(45) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(100) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_PasswordReset` int DEFAULT '0',
  `Is_Request_Accepted` int DEFAULT '0',
  `RequestAcceptedBy_Id` varchar(20) DEFAULT NULL,
  `RequestAcceptedBy_Name` varchar(45) DEFAULT NULL,
  `RequestAccepted_On` datetime DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `SalesArea_Id` varchar(45) DEFAULT NULL,
  `Route_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`SalesUser_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu12_sales_user_route_day_item` (
  `Org_Id` varchar(10) NOT NULL,
  `SalesUser_Id` varchar(20) NOT NULL,
  `Route_Id` varchar(20) NOT NULL,
  `RouteDay_Id` varchar(20) NOT NULL,
  PRIMARY KEY (`Org_Id`,`SalesUser_Id`,`Route_Id`,`RouteDay_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu12_sales_user_route_item` (
  `Org_Id` varchar(20) NOT NULL,
  `SalesUser_Id` varchar(45) NOT NULL,
  `Route_Id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu19_route` (
  `Org_Id` varchar(10) DEFAULT NULL,
  `Route_Id` varchar(20) NOT NULL,
  `Route_Name` varchar(150) NOT NULL,
  `SalesArea_Id` varchar(20) NOT NULL,
  `Dealer_Id` varchar(20) NOT NULL,
  `Total_Retailers` int DEFAULT '0',
  `Working_Status` varchar(1) DEFAULT '1',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Remarks` text,
  `Created_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(100) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Route_Id`),
  KEY `idx_dealer` (`Dealer_Id`),
  KEY `idx_salesarea` (`SalesArea_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mu19_route_retailer_mapping` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Route_Id` varchar(20) DEFAULT NULL,
  `Retailer_Id` varchar(20) DEFAULT NULL,
  `Visit_Sequence` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Created_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`),
  KEY `idx_route_retailer` (`Route_Id`,`Retailer_Id`),
  CONSTRAINT `mu19_route_retailer_mapping_ibfk_1` FOREIGN KEY (`Route_Id`) REFERENCES `mu19_route` (`Route_Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mxxx_agentcommission` (
  `AgentCommission_Id` varchar(20) NOT NULL,
  PRIMARY KEY (`AgentCommission_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mxxx_faciclties` (
  `Facility_Id` varchar(20) NOT NULL,
  PRIMARY KEY (`Facility_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `new_data` (
  `Org_Id` text,
  `Material Document Year` text,
  `q` text,
  `q2` text,
  `Dispatch_Id` text,
  `Number of Material Document` text,
  `Material Document Item` text,
  `Material_Code` text,
  `Quantity` text,
  `Delivery` text,
  `Movement Type` text,
  `Dealer_Code` text,
  `Dispatch_Date` text,
  `Reversed Material Document` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `new_table` (
  `Org_Id` varchar(20) NOT NULL,
  `IncentiveHead_Id` varchar(45) NOT NULL,
  `IncentiveHead_Name` varchar(45) DEFAULT NULL,
  `User_Type` varchar(45) DEFAULT NULL,
  `Incentive_Type` varchar(45) DEFAULT NULL,
  `GL_Code` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`IncentiveHead_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `newexceldata` (
  `Customer_Code` text,
  `Customer_Name` text,
  `Material_Code` text,
  `Material_Description` text,
  `Opening_Stock` text,
  `Receipt` text,
  `Dispatch` text,
  `Closing_Stock` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pune_office_working` (
  `Org_Id` text,
  `Retailer_Id` text,
  `Salesman_Name` text,
  `SalesUser_Id` text,
  `ASM Name` text,
  `Retailer_Name` text,
  `SalesGroup_Name` text,
  `SalesArea_Id` text,
  `SalesUser_Emp_Id` text,
  `Dealer_name` text,
  `Dealer_BPCode` text,
  `Dealer_Id` text,
  `Mobile_No` text,
  `Contact_Person` text,
  `Email_Id` text,
  `Address_Line_1_Text` text,
  `Address_Line_2_Text` text,
  `Address_Line_3_Text` text,
  `State_Name` text,
  `District_Name` text,
  `Taluka_Name` text,
  `Village_Name` text,
  `Pincode` text,
  `Pan_No` text,
  `ShopLatitude` text,
  `ShopLongitude` text,
  `Shop_License_No` text,
  `Bank_Name` text,
  `Branch_Name` text,
  `Account_No` text,
  `IFSC_Code` text,
  `Account_Name` text,
  `FSSAI_License_No` text,
  `FSSAI_LicenseValidity_On` text,
  `GST_No` text,
  `Is_Agreement_Done` text,
  `AgreementValidiy_StartDate` text,
  `AgreementValidity_EndDate` text,
  `SecurityDepositAmount` text,
  `Name` text,
  `Week Day For Order` text,
  `State_Id` varchar(45) DEFAULT NULL,
  `District_Id` varchar(45) DEFAULT NULL,
  `Taluka_Id` varchar(45) DEFAULT NULL,
  `Village_Id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `retailer_data` (
  `Org_Id` text,
  `Retailer_Id` text,
  `Retailer_Name` text,
  `SalesArea_Name` text,
  `Route_Id` text,
  `Dealer_Code` text,
  `Mobile_No` text,
  `Contact_Person` text,
  `Is_MobileNo_Verified` text,
  `Email_Id` text,
  `Address_Line_1_Text` text,
  `Address_Line_2_Text` text,
  `Address_Line_3_Text` text,
  `State_Name` text,
  `District_Name` text,
  `Taluka_Name` text,
  `Village_Name` text,
  `Pincode` text,
  `Pan_No` text,
  `ShopLatitude` text,
  `ShopLongitude` text,
  `Shop_License_No` text,
  `Pan_Card_Photo` text,
  `Shop_License_Photo` text,
  `Cheque_Leaf_Photo` text,
  `Shop_Name_Photo` text,
  `Bank_Id` text,
  `Branch_Id` text,
  `Account_No` text,
  `IFSC_Code` text,
  `Account_Name` text,
  `FSSAI_License_No` text,
  `FSSAI_LicenseValidity_On` text,
  `UdyamAadhar_Card_Photo` text,
  `FSSAI_License_Photo` text,
  `GST_Certificate_Photo` text,
  `Is_Agreement_Done` text,
  `AgreementValidiy_StartDate` text,
  `AgreementValidity_EndDate` text,
  `SecurityDepositAmount` text,
  `Is_Approved` text,
  `Is_Active` text,
  `Is_Deleted` text,
  `Is_PasswordReset` text,
  `Created_On` text,
  `CreatedBy_Id` text,
  `CreatedBy_Name` text,
  `LastEdited_On` text,
  `LastEditedBy_Id` text,
  `LastEditedBy_Name` text,
  `Approval_Remarks` text,
  `Approved_On` text,
  `Approved_Id` text,
  `Approved_Name` text,
  `MSME` text,
  `Aadhar_No` text,
  `ASME` text,
  `GST_No` text,
  `Landline_Number` text,
  `SalesUser_Id` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `s001_number_range` (
  `Table_Name` varchar(50) NOT NULL,
  `Year_Id` varchar(10) NOT NULL,
  `Number_Prefix` varchar(10) NOT NULL,
  `Number_Suffix` varchar(10) DEFAULT NULL,
  `Start_Number` varchar(20) DEFAULT NULL,
  `End_Number` varchar(20) DEFAULT NULL,
  `Last_Number_Used` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Year_Id`,`Table_Name`,`Number_Prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `stg_dealer_stock_excel` (
  `Org_Id` varchar(45) DEFAULT NULL,
  `Dealer_Code` varchar(20) DEFAULT NULL,
  `Dealer_Name` varchar(200) DEFAULT NULL,
  `Material_Code` varchar(45) DEFAULT NULL,
  `Material_Name` varchar(450) DEFAULT NULL,
  `Opening_Quantity` int DEFAULT NULL,
  `Receipt_Quantity` int DEFAULT NULL,
  `Dispatch_Quantity` int DEFAULT NULL,
  `Closing_Quantity` int DEFAULT NULL,
  `Stock_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t001_dieselrate` (
  `Org_Id` varchar(10) NOT NULL,
  `DieselRate_Id` varchar(45) NOT NULL,
  `DieselRate` decimal(8,2) DEFAULT NULL,
  `DieselRate_Date` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT NULL,
  `Is_Deleted` int DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`DieselRate_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t002_farmerregistration` (
  `Org_Id` varchar(10) NOT NULL,
  `Farmer_Id` varchar(20) NOT NULL,
  `Farmer_Name` varchar(45) DEFAULT NULL,
  `MCC_Farmer_Code` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  `AlternateMobile_No` varchar(20) DEFAULT NULL,
  `Email_Id` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Birth_Date` datetime DEFAULT NULL,
  `Address_Text` longtext,
  `State_Id` varchar(20) DEFAULT NULL,
  `District_Id` varchar(20) DEFAULT NULL,
  `Taluka_Id` varchar(20) DEFAULT NULL,
  `Village_Id` varchar(20) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Cow_Count` int DEFAULT NULL,
  `Buffalo_Count` int DEFAULT NULL,
  `Calf_Count` int DEFAULT NULL,
  `Milk_Capacity` int DEFAULT NULL,
  `Pan_No` varchar(10) DEFAULT NULL,
  `Aadhar_No` varchar(12) DEFAULT NULL,
  `Bank_Id` varchar(20) DEFAULT NULL,
  `Branch_Id` varchar(20) DEFAULT NULL,
  `Account_No` varchar(45) DEFAULT NULL,
  `IFSC_Code` varchar(45) DEFAULT NULL,
  `Account_Name` varchar(100) DEFAULT NULL,
  `Nominee_Name` varchar(45) DEFAULT NULL,
  `Nominee_Relation` varchar(45) DEFAULT NULL,
  `Nominee_Mobile_No` varchar(45) DEFAULT NULL,
  `Nominee_Aadhar_No` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Agent_Id` varchar(20) DEFAULT NULL,
  `Profile_Photo` varchar(255) DEFAULT NULL,
  `Pan_Card_Photo` varchar(255) DEFAULT NULL,
  `Aadhar_Card_Photo` varchar(255) DEFAULT NULL,
  `Ration_Card_Photo` varchar(255) DEFAULT NULL,
  `Bank_Cheque_PBook_Photo` varchar(255) DEFAULT NULL,
  `Gov_Farmer_Id` varchar(45) DEFAULT NULL,
  `Gov_Farmer_Name` varchar(45) DEFAULT NULL,
  `WithholdingTaxType_Id` varchar(45) DEFAULT NULL,
  `Request_Date` datetime DEFAULT NULL,
  `Is_Approved` int DEFAULT '0',
  `Approval_Remarks` longtext,
  `Approved_On` datetime DEFAULT NULL,
  `Approved_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `Approved_Name` varchar(45) DEFAULT NULL,
  `Request_By` varchar(45) DEFAULT 'Farmer',
  `Request_By_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Farmer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t003_service` (
  `Org_Id` varchar(10) NOT NULL,
  `Request_Id` varchar(20) NOT NULL,
  `Service_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `ServiceType_Id` varchar(20) DEFAULT NULL,
  `Request_For` varchar(45) DEFAULT NULL,
  `Request_For_User_Id` varchar(20) DEFAULT NULL,
  `Request_By` varchar(45) DEFAULT NULL,
  `Request_By_User_Id` varchar(20) DEFAULT NULL,
  `Request_Date` datetime DEFAULT NULL,
  `Request_Amount` decimal(8,2) DEFAULT NULL,
  `Request_Remark` text,
  `Is_Approved` int DEFAULT '0',
  `Approval_Remarks` longtext,
  `Approved_On` datetime DEFAULT NULL,
  `Approved_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `Approved_Name` varchar(45) DEFAULT NULL,
  `Approved_Amount` decimal(8,3) DEFAULT NULL,
  `VeterinaryService_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Request_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t004_mcccollectionshift` (
  `Org_Id` varchar(10) NOT NULL,
  `MCCCollectionShift_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Collection_Date` datetime DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Name` varchar(45) DEFAULT NULL,
  `Shift_Status` int DEFAULT '1',
  `ShiftStart_Time` time DEFAULT NULL,
  `ShiftEnd_Time` time DEFAULT NULL,
  `Expected_End_Time` time DEFAULT NULL,
  `Is_MilkDispatch` int DEFAULT NULL,
  `MilkDispatch_On` datetime DEFAULT NULL,
  `Is_MilkCollected` int DEFAULT NULL,
  `MilkCollected_on` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`MCCCollectionShift_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `t004_mcccollectionshift` (`MCC_Id`,`Org_Id`,`Collection_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t005_milkcollectionfarmer` (
  `Org_Id` varchar(10) NOT NULL,
  `FarmerCollection_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Quantity_Kg` decimal(8,3) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Protein` varchar(45) DEFAULT NULL,
  `QuantityAuto_Flag` int DEFAULT '0',
  `QualityAuto_Flag` int DEFAULT '0',
  `ApplicableRate` decimal(8,2) DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `EntryTime` time DEFAULT NULL,
  `Is_Corrected` int DEFAULT NULL,
  `Correction_Request_Id` varchar(45) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `Anamat_Charge` decimal(8,2) DEFAULT NULL,
  `Freight_Charge` decimal(8,2) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  `Is_Missing` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`FarmerCollection_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `Farmer_Id` (`Farmer_Id`),
  KEY `t005_milkcollectionfarmer` (`MCCCollectionShift_Id`,`MilkType_Id`,`MilkStatus_Id`,`Is_Active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t006_milkcollectionagent` (
  `Org_Id` varchar(10) NOT NULL,
  `AgentCollection_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `Agent_Id` varchar(20) DEFAULT NULL,
  `Driver_Id` varchar(20) DEFAULT NULL,
  `Aluminum_Can_With_Lid` int DEFAULT NULL,
  `Aluminum_Can_Without_Lid` int DEFAULT NULL,
  `Plastic_Can_With_Lid` int DEFAULT NULL,
  `Plastic_Can_Without_Lid` int DEFAULT NULL,
  `Final_Qty_Cow_KG` decimal(8,3) DEFAULT NULL COMMENT 'When Milk Dispatch is confirmed by Driver or Supervisor, the same entry will be entered in this field',
  `Final_Qty_Cow_Ltr` decimal(8,3) DEFAULT NULL COMMENT 'When Milk Dispatch is confirmed by Driver or Supervisor, the same entry will be entered in this field',
  `Final_FAT_Cow_WtAvg` decimal(8,2) DEFAULT NULL COMMENT 'When Milk Dispatch is confirmed by Driver or Supervisor, the same entry will be entered in this field',
  `Final_SNF_Cow_WtAvg` decimal(8,2) DEFAULT NULL COMMENT 'When Milk Dispatch is confirmed by Driver or Supervisor, the same entry will be entered in this field',
  `Final_Qty_Buf_KG` decimal(8,3) DEFAULT NULL COMMENT 'When Milk Dispatch is confirmed by Driver or Supervisor, the same entry will be entered in this field',
  `Final_Qty_Buf_Ltr` decimal(8,3) DEFAULT NULL,
  `Final_FAT_Buf_WtAvg` decimal(8,2) DEFAULT NULL COMMENT 'When Milk Dispatch is confirmed by Driver or Supervisor, the same entry will be entered in this field',
  `Final_SNF_Buf_WtAvg` decimal(8,2) DEFAULT NULL,
  `Final_Amout_Cow` decimal(8,2) DEFAULT NULL COMMENT 'When Milk Dispatch is confirmed by Driver or Supervisor, the same entry will be entered in this field',
  `Final_Amout_Buf` decimal(8,2) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Is_Locked` int DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `MCC_Commision` decimal(8,2) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`AgentCollection_Id`),
  KEY `MCC_Id` (`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t006_milkcollectionagent_item` (
  `Org_Id` varchar(10) NOT NULL,
  `AgentCollection_Id` varchar(20) NOT NULL,
  `Milktype_Id` varchar(45) NOT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `FAT` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Commission` decimal(8,3) DEFAULT NULL,
  `MPPI_Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `MPPI_FAT` decimal(8,2) DEFAULT NULL,
  `MPPI_SNF` decimal(8,2) DEFAULT NULL,
  `MPPI_ServiceCharge` decimal(8,2) DEFAULT NULL,
  `MPPI_FAT_Incentive` decimal(8,3) DEFAULT NULL,
  `MPPI_FAT_Deduction` decimal(8,3) DEFAULT NULL,
  `MPPI_SNF_Incentive` decimal(8,3) DEFAULT NULL,
  `MPPI_SNF_Deduction` decimal(8,3) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`AgentCollection_Id`,`Milktype_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t007_milkcollectiondriver` (
  `Org_Id` varchar(10) NOT NULL,
  `Trip_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `Driver_Id` varchar(20) DEFAULT NULL,
  `Vehicle_Id` varchar(45) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `FAT` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `CompartmentType` varchar(30) DEFAULT NULL,
  `Aluminum_Can` int DEFAULT NULL,
  `Aluminum_Lid` int DEFAULT NULL,
  `Plastic_Can` int DEFAULT NULL,
  `Plastic_Lid` int DEFAULT NULL,
  `Is_DairyAccepted` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  `FilePath` longtext,
  PRIMARY KEY (`Org_Id`,`Trip_Id`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t008_milkcollectionchemist` (
  `Org_Id` varchar(10) NOT NULL,
  `ChemistCollection_Id` varchar(45) NOT NULL,
  `Trip_Id` varchar(20) NOT NULL,
  `Chemist_Id` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Driver_Id` varchar(20) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `Is_BMC_Accepted` int DEFAULT '0',
  `Status` int DEFAULT '0',
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `File_Path` longtext,
  `Is_Check` int DEFAULT '0',
  `Is_Active` int DEFAULT '0',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  `DispatchNo` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`ChemistCollection_Id`,`Trip_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t008_milkcollectionchemist_compartment` (
  `Org_Id` varchar(20) NOT NULL,
  `ChemistCollection_Id` varchar(45) NOT NULL,
  `MilkType_Id` varchar(45) NOT NULL,
  `Compartment_No` varchar(10) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Quantity_Kg` decimal(8,3) DEFAULT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Vehicle_Id` varchar(45) DEFAULT NULL,
  `Final_Quantity_Kg` decimal(8,3) DEFAULT NULL,
  `Final_Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Final_SNF` decimal(8,2) DEFAULT NULL,
  `Final_Fat` decimal(8,2) DEFAULT NULL,
  `Final_Protein` decimal(8,2) DEFAULT NULL,
  `Final_Ash` decimal(8,2) DEFAULT NULL,
  `Final_Sodium` decimal(8,2) DEFAULT NULL,
  `FatKG_Agent` decimal(20,3) DEFAULT NULL,
  `SNFKG_Agent` decimal(20,3) DEFAULT NULL,
  `FatKG_Dairy` decimal(20,3) DEFAULT NULL,
  `SNFKG_Dairy` decimal(20,3) DEFAULT NULL,
  `FatKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `SNFKG_GainLoss` decimal(20,3) DEFAULT NULL,
  `FatKG_Rate` decimal(20,3) DEFAULT NULL,
  `SNFKG_Rate` decimal(20,3) DEFAULT NULL,
  `Total_GainLoss` decimal(20,3) DEFAULT NULL,
  `Is_Sour` int DEFAULT '0',
  `Sour_Compartment_GRN_Flag` int DEFAULT '0',
  `Sour_Compartment_Adjustment_Flag` int DEFAULT '0',
  `Sour_Compartment_Adjustment_MCC_Id` varchar(45) DEFAULT NULL,
  `Sour_Compartment_Adjustment_Entry_Id` varchar(45) DEFAULT NULL,
  `Sour_Compartment_Adjustment_Done_Flag` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`ChemistCollection_Id`,`MilkType_Id`,`Compartment_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t008_milkcollectionchemist_item` (
  `Org_Id` varchar(20) NOT NULL,
  `ChemistCollection_Id` varchar(45) NOT NULL,
  `MilkType_Id` varchar(45) NOT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Quantity_Kg` decimal(8,3) DEFAULT NULL,
  `FAT` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Milk_Alcohol` varchar(45) DEFAULT NULL,
  `Milk_Temparature` varchar(45) DEFAULT NULL,
  `Milk_Acidity` varchar(45) DEFAULT NULL,
  `Comartment` varchar(150) DEFAULT NULL,
  `Is_OrganolepticTest_Done` int DEFAULT NULL,
  `MilkStatus_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`ChemistCollection_Id`,`MilkType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t009_milkcollectiondairy_header` (
  `Org_Id` varchar(10) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) NOT NULL,
  `TripDocument_Id` varchar(20) DEFAULT NULL,
  `Driver_Id` varchar(20) DEFAULT NULL,
  `Vehicle_Id` varchar(20) DEFAULT NULL,
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `Is_Locked` int DEFAULT '0',
  `Is_Confirm` int DEFAULT '0',
  `Is_Release` int DEFAULT '0',
  `Is_OutsideVehicle` int DEFAULT '0',
  `Confirm_By` varchar(45) DEFAULT NULL,
  `Confirm_On` datetime DEFAULT NULL,
  `Release_By` varchar(45) DEFAULT NULL,
  `Release_On` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `OutsideInvoice_Id` varchar(20) DEFAULT NULL,
  `Is_OutsideInvoiceCreated` int DEFAULT '0',
  `OutsideInvoiceCreated_On` datetime DEFAULT NULL,
  `Is_OutsideCheck` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MilkCollectionDairy_Id`),
  KEY `idx_t009_confirm` (`Org_Id`,`Is_Deleted`,`Confirm_On`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t009_milkcollectiondairy_mcc` (
  `Org_Id` varchar(10) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) NOT NULL,
  `MilkType_Id` varchar(20) NOT NULL,
  `MilkStatus_Id` varchar(20) NOT NULL,
  `MCCCollectionShift_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `Weight` decimal(20,3) DEFAULT NULL,
  `Liters` decimal(20,3) DEFAULT NULL,
  `SNF` decimal(20,2) DEFAULT NULL,
  `Fat` decimal(20,2) DEFAULT NULL,
  `WeightLoss` decimal(20,2) DEFAULT NULL,
  `TsLoss` decimal(20,2) DEFAULT NULL,
  `Final_Amout` decimal(20,2) DEFAULT NULL COMMENT 'Final Amount From t006_milkcollectionagent for that MCC',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MilkCollectionDairy_Id`,`MilkType_Id`,`MilkStatus_Id`,`MCCCollectionShift_Id`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t009_milkcollectiondairy_mcccommission` (
  `Org_Id` varchar(10) NOT NULL,
  `MilkCollectionMCCCommission_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `MPPIType_Id` varchar(20) NOT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Weight` decimal(20,3) DEFAULT NULL,
  `Liters` decimal(20,3) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `BaseRate` decimal(20,2) DEFAULT NULL,
  `ServiceCharge` decimal(20,2) DEFAULT NULL,
  `Amount` decimal(20,2) DEFAULT NULL,
  `MusterType_Id` varchar(20) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `MCC_Commision` decimal(20,2) DEFAULT NULL,
  `Is_Sour_Check` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`MilkCollectionMCCCommission_Id`,`MilkCollectionDairy_Id`,`MCC_Id`,`MPPIType_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t009_milkcollectiondairy_mccloss` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) NOT NULL,
  `TripDocument_Id` varchar(20) NOT NULL,
  `MCCCollectionShift_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `CellNo` varchar(2) NOT NULL,
  `Weight` decimal(20,3) DEFAULT NULL,
  `Liters` decimal(20,3) DEFAULT NULL,
  `Loss` decimal(20,3) DEFAULT NULL,
  `Adjusted_Liters` decimal(20,3) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`MilkCollectionDairy_Id`,`TripDocument_Id`,`CellNo`,`MCCCollectionShift_Id`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t009_milkcollectiondairy_milk` (
  `Org_Id` varchar(10) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) NOT NULL,
  `MilkType_Id` varchar(20) NOT NULL,
  `MilkStatus_Id` varchar(20) NOT NULL,
  `Weight` decimal(20,3) DEFAULT NULL,
  `Liters` decimal(20,3) DEFAULT NULL,
  `SNF` decimal(20,2) DEFAULT NULL,
  `Fat` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`MilkCollectionDairy_Id`,`MilkType_Id`,`MilkStatus_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t009_milkcollectiondairy_posting` (
  `Org_Id` varchar(10) NOT NULL,
  `MilkCollectionPosting_Id` varchar(20) NOT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Created_On` date DEFAULT NULL,
  `Batch_Id` varchar(45) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Weight` decimal(20,3) DEFAULT NULL,
  `Liters` decimal(20,3) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `Fat` decimal(20,2) DEFAULT NULL,
  `FatCost` decimal(20,2) DEFAULT NULL,
  `FatKG` decimal(20,3) DEFAULT NULL,
  `SNF` decimal(20,2) DEFAULT NULL,
  `SNFCost` decimal(20,2) DEFAULT NULL,
  `SNFKG` decimal(20,3) DEFAULT NULL,
  `MilkCost` decimal(20,2) DEFAULT NULL,
  `AgentCost` decimal(20,2) DEFAULT NULL,
  `TransporterCost` decimal(20,2) DEFAULT NULL,
  `Rate` decimal(20,2) DEFAULT NULL,
  `Original_MilkPrice` decimal(20,2) DEFAULT NULL,
  `Total_GainLoss` decimal(20,2) DEFAULT NULL,
  `MilkPrice` decimal(20,2) DEFAULT NULL,
  `TotalLandedCost` decimal(20,2) DEFAULT NULL,
  `Original_FatRate` decimal(20,2) DEFAULT NULL,
  `Original_FatValue` decimal(20,2) DEFAULT NULL,
  `Original_SNFRate` decimal(20,2) DEFAULT NULL,
  `Original_SNFValue` decimal(20,2) DEFAULT NULL,
  `FatRate` decimal(20,2) DEFAULT NULL,
  `FatValue` decimal(20,2) DEFAULT NULL,
  `SNFRate` decimal(20,2) DEFAULT NULL,
  `SNFValue` decimal(20,2) DEFAULT NULL,
  `FEQ` decimal(20,2) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`MilkCollectionPosting_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `CollectionShift_Id` (`CollectionShift_Id`),
  KEY `Created_On` (`Created_On`),
  KEY `MilkCollectionPosting_Id` (`MilkCollectionPosting_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t009_milkcollectiondairy_quality` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) NOT NULL,
  `TripDocument_Id` varchar(20) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Batch_Id` varchar(20) DEFAULT NULL,
  `CellNo` varchar(2) DEFAULT NULL,
  `Sample_No` varchar(45) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `Cans` varchar(45) DEFAULT NULL,
  `Protein` decimal(8,2) DEFAULT NULL,
  `Ash` decimal(8,2) DEFAULT NULL,
  `Sodium` decimal(8,2) DEFAULT NULL,
  `Adulteration` longtext,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`MilkCollectionDairy_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t009_milkcollectiondairy_quantity` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MilkCollectionDairy_Id` varchar(20) NOT NULL,
  `TripDocument_Id` varchar(20) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `CellNo` varchar(2) DEFAULT NULL,
  `Batch_Id` varchar(45) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `GrossWeight` decimal(20,3) DEFAULT NULL,
  `TareWeight` decimal(20,3) DEFAULT NULL,
  `Weight` decimal(20,3) DEFAULT NULL,
  `Liters` decimal(20,3) DEFAULT NULL,
  `Cans` varchar(45) DEFAULT NULL,
  `Start_Time` time DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `FatCost` decimal(20,2) DEFAULT NULL,
  `FatKG` decimal(20,3) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `SNFCost` decimal(20,2) DEFAULT NULL,
  `SNFKG` decimal(20,3) DEFAULT NULL,
  `MilkCost` decimal(20,2) DEFAULT NULL,
  `AgentCost` decimal(20,2) DEFAULT NULL,
  `TransporterCost` decimal(20,2) DEFAULT NULL,
  `Rate` decimal(8,2) DEFAULT NULL,
  `MilkPrice` decimal(20,2) DEFAULT NULL,
  `TotalLandedCost` decimal(20,2) DEFAULT NULL,
  `FatRate` decimal(20,2) DEFAULT NULL,
  `FatValue` decimal(20,2) DEFAULT NULL,
  `SNFRate` decimal(20,2) DEFAULT NULL,
  `SNFValue` decimal(20,2) DEFAULT NULL,
  `FEQ` decimal(20,2) DEFAULT NULL,
  `Reasons` longtext,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`MilkCollectionDairy_Id`),
  KEY `idx_t009_qty_join` (`Org_Id`,`TripDocument_Id`,`MilkCollectionDairy_Id`,`MilkStatus_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t010_collectionrequest` (
  `Org_Id` varchar(10) NOT NULL,
  `CollectionRequest_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `MCC_CollectionShift_Id` varchar(20) DEFAULT NULL,
  `RequestType_Id` varchar(20) DEFAULT NULL,
  `Request_Details` varchar(45) DEFAULT NULL,
  `Request_Remarks` longtext,
  `Expected_Time` time DEFAULT NULL,
  `Is_Approved` int DEFAULT '0',
  `Approved_On` datetime DEFAULT NULL,
  `Approved_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `Approved_Name` varchar(45) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Agent then Agent Id will come here else Id of User who has created account will come here',
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`CollectionRequest_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t011_dispatch_header` (
  `Org_Id` varchar(10) NOT NULL,
  `Dispatch_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Vehicle_Id` varchar(20) DEFAULT NULL,
  `Dispatch_Date` datetime DEFAULT NULL,
  `Vehicle_No` varchar(45) DEFAULT NULL,
  `Driver_Id` varchar(20) DEFAULT NULL,
  `Driver_Name` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Dispatch_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t013_correction_request` (
  `Org_Id` varchar(20) NOT NULL,
  `Correction_Request_Id` varchar(45) NOT NULL,
  `FarmerCollection_Id` varchar(45) DEFAULT NULL,
  `Request_Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Request_Fat` decimal(8,2) DEFAULT NULL,
  `Request_SNF` decimal(8,2) DEFAULT NULL,
  `Request_Remark` text,
  `Approved_Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Approved_Fat` decimal(8,2) DEFAULT NULL,
  `Approved_SNF` decimal(8,2) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `Created_By` varchar(45) DEFAULT NULL,
  `Approved_Remark_L1` text,
  `Is_Approved_L1` int DEFAULT '0',
  `Approved_On_L1` datetime DEFAULT NULL,
  `Approved_By_L1` varchar(45) DEFAULT NULL,
  `Approved_Name_L1` varchar(50) DEFAULT NULL,
  `Approved_Remark_L2` text,
  `Is_Approved_L2` int DEFAULT '0',
  `Approved_On_L2` datetime DEFAULT NULL,
  `Approved_By_L2` varchar(45) DEFAULT NULL,
  `Approved_Name_L2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Correction_Request_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t014_agent_expense` (
  `Org_Id` varchar(10) NOT NULL,
  `Expense_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `ExpenseType_id` varchar(45) DEFAULT NULL,
  `Expense_Amount` varchar(45) DEFAULT NULL,
  `Expense_Remark` text,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Expense_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t015_advance` (
  `Org_Id` varchar(10) NOT NULL,
  `Advance_Id` varchar(45) NOT NULL,
  `AdvanceType_Id` varchar(45) DEFAULT NULL,
  `Advance_Amount` decimal(8,2) DEFAULT NULL,
  `Advance_Remark` longtext,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Request_For` varchar(45) DEFAULT NULL,
  `Request_For_User_Id` varchar(45) DEFAULT NULL,
  `Request_By` varchar(45) DEFAULT NULL,
  `Request_By_User_Id` varchar(45) DEFAULT NULL,
  `Is_Approved` int DEFAULT NULL,
  `Approved_Amount` decimal(8,2) DEFAULT NULL,
  `Installment` int DEFAULT '0',
  `Approved_On` datetime DEFAULT NULL,
  `Approved_By` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Advance_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t016_complaint_header` (
  `Org_Id` varchar(10) NOT NULL,
  `Complaint_Id` varchar(20) NOT NULL,
  `ComplaintType_Id` varchar(45) DEFAULT NULL,
  `Complaint_Remark` text,
  `Complaint_For` varchar(45) DEFAULT NULL,
  `Complaint_For_User_Id` varchar(20) DEFAULT NULL,
  `Complaint_By` varchar(45) DEFAULT NULL,
  `Complaint_By_User_Id` varchar(20) DEFAULT NULL,
  `Complaint_Date` datetime DEFAULT NULL,
  `ComplaintStatus_Id` varchar(45) DEFAULT '0',
  `Closing_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Complaint_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t016_complaint_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Complaint_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Action_Date` datetime DEFAULT NULL,
  `Action_By_Id` varchar(45) DEFAULT NULL,
  `Action_By_Name` varchar(45) DEFAULT NULL,
  `Remarks` longtext,
  `Is_Display` int DEFAULT NULL,
  `New_Status_Id` varchar(45) DEFAULT NULL,
  `Current_Status_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Complaint_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t017_incentives_request` (
  `Org_Id` varchar(10) NOT NULL,
  `Request_Id` varchar(20) NOT NULL,
  `IncentiveScheme_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Request_For` varchar(45) DEFAULT NULL,
  `Request_For_User_Id` varchar(20) DEFAULT NULL,
  `Request_By` varchar(45) DEFAULT NULL,
  `Request_By_User_Id` varchar(20) DEFAULT NULL,
  `Request_Date` datetime DEFAULT NULL,
  `Is_Approved` int DEFAULT '0',
  `Approval_Remarks` longtext,
  `Approved_On` datetime DEFAULT NULL,
  `Approved_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `Approved_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Request_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t018_issuestocks_header` (
  `Org_Id` varchar(10) NOT NULL,
  `IssueStocks_Id` varchar(20) NOT NULL,
  `StockIssue_Type` varchar(45) DEFAULT NULL COMMENT 'Type of product can or other material',
  `MCC_Id` varchar(45) DEFAULT NULL COMMENT 'in case of empty cans mcc id will be blank',
  `Route_Id` varchar(20) DEFAULT NULL,
  `Vehicle_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `Driver_Id` varchar(20) DEFAULT NULL,
  `Driver_Name` varchar(100) DEFAULT NULL,
  `Vehicle_Number` varchar(45) DEFAULT NULL,
  `IssueStock_Date` datetime DEFAULT NULL,
  `Is_DriverAccepted` int DEFAULT '0',
  `Is_Accepted` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Mobile_No` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`IssueStocks_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t019_issuestocks_item` (
  `Org_Id` varchar(10) NOT NULL,
  `IssueStocks_Id` varchar(45) NOT NULL,
  `Order_Id` varchar(20) NOT NULL,
  `IssueStockToProfile_Id` varchar(45) NOT NULL,
  `Material_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(45) NOT NULL,
  `IssueStockToProfile_Type` varchar(45) DEFAULT NULL,
  `MCC_CollectionShift_Id` varchar(45) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Is_MCCAccepted` int DEFAULT '0',
  `MCC_Accepted_On` datetime DEFAULT NULL,
  `Is_Given` int DEFAULT '0',
  `Given_Date` datetime DEFAULT NULL,
  `TripDocument_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`IssueStocks_Id`,`Order_Id`,`IssueStockToProfile_Id`,`Material_Id`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t021_tripdocument_header` (
  `Org_Id` varchar(20) NOT NULL,
  `TripDocument_Id` varchar(45) NOT NULL,
  `Route_Trip_Id` varchar(45) DEFAULT NULL,
  `Driver_Id` varchar(45) DEFAULT NULL,
  `Vehicle_Id` varchar(45) DEFAULT NULL,
  `Transporter_Id` varchar(20) DEFAULT NULL,
  `Next_Destination` varchar(45) DEFAULT NULL,
  `Trip_Status` varchar(50) DEFAULT NULL,
  `Is_Vehicle_Breakdown` int DEFAULT NULL,
  `Is_Destination_Changed` int DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(45) DEFAULT NULL,
  `FreightRateType_Id` varchar(45) DEFAULT NULL,
  `DistanceAsPerApp` varchar(45) DEFAULT NULL,
  `FleetX_Id` varchar(45) DEFAULT NULL,
  `DistanceAsPerFleetX` varchar(45) DEFAULT NULL,
  `FinalDistance` decimal(10,2) DEFAULT NULL,
  `Rate` decimal(8,2) DEFAULT NULL,
  `DieselBaseRate` decimal(8,2) DEFAULT NULL,
  `CurrentDieselRate` decimal(8,2) DEFAULT NULL,
  `Diesel_Difference` decimal(8,2) DEFAULT '0.00',
  `Weight` decimal(8,3) DEFAULT NULL,
  `Liters` decimal(8,3) DEFAULT NULL,
  `TripAmount` decimal(8,2) DEFAULT NULL,
  `SAP_Document_No` varchar(45) DEFAULT NULL,
  `Is_PostedInSAP` int DEFAULT '0',
  `Locked_By` varchar(45) DEFAULT NULL,
  `Locked_On` datetime DEFAULT NULL,
  `Average_KM` varchar(45) DEFAULT NULL,
  `Average_Liters` decimal(8,3) DEFAULT NULL,
  `Cost` decimal(8,2) DEFAULT NULL,
  `Total_Freight` decimal(8,2) DEFAULT NULL,
  `Is_TripDocument_Locked` int DEFAULT '0',
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `Diff_Invoice_Id` varchar(20) DEFAULT NULL,
  `Diff_Is_InvoiceCreated` int DEFAULT '0',
  `Diff_InvoiceCreated_On` datetime DEFAULT NULL,
  `Diff_Is_Check` int DEFAULT '0',
  `Out_KM` varchar(45) DEFAULT NULL,
  `IN_KM` varchar(45) DEFAULT NULL,
  `In_Locked_KM` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`TripDocument_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t022_tripdocument_item` (
  `Org_Id` varchar(20) DEFAULT NULL,
  `TripDocument_Id` varchar(45) DEFAULT NULL,
  `Route_Id` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `MCC_CollectionShift_Id` varchar(45) DEFAULT NULL,
  `Expected_Time` datetime DEFAULT NULL,
  `Order_By` int DEFAULT NULL,
  `Arrival_At` datetime DEFAULT NULL,
  `Departure_At` datetime DEFAULT NULL,
  `Is_Reached` int DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `DispatchNo` int DEFAULT '0',
  KEY `MCC_Id` (`MCC_Id`),
  KEY `TripDocument_Id` (`TripDocument_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t023_order_header` (
  `Org_Id` varchar(10) NOT NULL,
  `Order_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Order_Type` varchar(20) NOT NULL,
  `Order_For` varchar(45) DEFAULT NULL,
  `Order_For_User_Id` varchar(20) DEFAULT NULL,
  `Order_By` varchar(45) DEFAULT NULL,
  `Order_By_User_Id` varchar(20) DEFAULT NULL,
  `Order_Date` datetime DEFAULT NULL,
  `Total_Item` int DEFAULT NULL,
  `Total_Price` decimal(8,4) DEFAULT NULL,
  `Is_Approved` int DEFAULT '0',
  `Approval_Remarks` longtext,
  `Approved_On` datetime DEFAULT NULL,
  `Approved_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `Approved_Name` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '0',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `Last_Edited_On` datetime DEFAULT NULL,
  `Created_By` varchar(45) DEFAULT NULL,
  `Last_Edited_By` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Order_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t023_order_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Order_Id` varchar(20) NOT NULL,
  `Product_Id` varchar(20) NOT NULL,
  `Quantity` int DEFAULT NULL,
  `Rate` varchar(20) DEFAULT NULL,
  `Total_Price` varchar(45) DEFAULT NULL,
  `Approved_Quantity` int DEFAULT NULL,
  `Is_Delivered` int DEFAULT '0',
  `Delivery_Id` varchar(20) DEFAULT NULL,
  `Is_Received` int DEFAULT '0',
  `SalesOrder` varchar(45) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `Is_Deducted` int DEFAULT '0',
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Order_Id`,`Product_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t024_fatsnf_ratio` (
  `Org_Id` varchar(10) NOT NULL,
  `Ratio_Id` varchar(20) NOT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Overhead_Amount` decimal(8,2) DEFAULT NULL,
  `Ratio_Date` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT NULL,
  `Is_Deleted` int DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Ratio_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t025_survey_header` (
  `Org_Id` varchar(10) NOT NULL,
  `Survey_Id` varchar(20) NOT NULL,
  `Chemist_Id` varchar(20) DEFAULT NULL,
  `Applicable_Date` datetime DEFAULT NULL,
  `Assign` int DEFAULT '0',
  `Conducted` int DEFAULT '0',
  `Is_Started` int DEFAULT NULL,
  `Is_Active` int DEFAULT NULL,
  `Is_Deleted` int DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Survey_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t025_survey_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Survey_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) NOT NULL,
  `Is_Started` int DEFAULT '0',
  `Started_On` datetime DEFAULT NULL,
  `Is_Completed` int DEFAULT '0',
  `Completed_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Survey_Id`,`MCC_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t026_datacorrection_request` (
  `Org_Id` varchar(10) NOT NULL,
  `Request_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Request_For` varchar(45) DEFAULT NULL,
  `Request_For_User_Id` varchar(20) DEFAULT NULL,
  `Request_By` varchar(45) DEFAULT NULL,
  `Request_By_User_Id` varchar(20) DEFAULT NULL,
  `Request_Type` varchar(45) DEFAULT NULL,
  `Request_Data` longtext,
  `Request_Date` datetime DEFAULT NULL,
  `Is_Approved` int DEFAULT NULL,
  `Approval_Remarks` longtext,
  `Approved_On` datetime DEFAULT NULL,
  `Approved_Id` varchar(20) DEFAULT NULL,
  `Approved_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Request_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t027_invoice_farmer` (
  `Org_Id` varchar(10) NOT NULL,
  `Voucher_Id` varchar(20) NOT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Invoice_Date` date DEFAULT NULL,
  `Invoice_No` varchar(20) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Amount` decimal(30,2) DEFAULT NULL,
  `Anamat_PerLtr` decimal(8,2) DEFAULT NULL,
  `Freight_PerLtr` decimal(8,2) DEFAULT NULL,
  `Is_InvoicePosted` int DEFAULT '0',
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `Is_IncomePosted` int DEFAULT '0',
  `Income_SAP_Document_Id` varchar(45) DEFAULT NULL,
  `Income_SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Is_DeductionPosted` int DEFAULT '0',
  `Deduction_SAP_Document_Id` varchar(45) DEFAULT NULL,
  `Deduction_SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Is_InvoicePDFGenerated` int DEFAULT '0',
  `Is_InvoicePDFPublished` int DEFAULT '0',
  `DairyAnamat_Amount` decimal(8,2) DEFAULT NULL,
  `Transport_Amount` decimal(8,2) DEFAULT NULL,
  `Is_TDSDownloaded` int DEFAULT '0',
  `TDS_Amount` decimal(8,2) DEFAULT NULL,
  `Is_RateChange` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Voucher_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t028_invoice_mcc` (
  `Org_Id` varchar(10) NOT NULL,
  `Voucher_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `MPPIType_Id` varchar(20) DEFAULT NULL,
  `Invoice_Date` date DEFAULT NULL,
  `Invoice_No` varchar(20) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Amount` decimal(30,2) DEFAULT NULL,
  `Anamat_PerLtr` decimal(8,2) DEFAULT NULL,
  `Freight_PerLtr` decimal(8,2) DEFAULT NULL,
  `Is_InvoicePosted` int DEFAULT '0',
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `Is_IncomePosted` int DEFAULT '0',
  `Income_SAP_Document_Id` varchar(45) DEFAULT NULL,
  `Income_SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Is_DeductionPosted` int DEFAULT '0',
  `Deduction_SAP_Document_Id` varchar(45) DEFAULT NULL,
  `Deduction_SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Primary_Voucher_Id` varchar(20) DEFAULT NULL,
  `Is_InvoicePDFGenerated` int DEFAULT '0',
  `Is_InvoicePDFPublished` int DEFAULT '0',
  `Is_TDSDownloaded` int DEFAULT '0',
  `TDS_Amount` decimal(8,2) DEFAULT NULL,
  `DairyAnamat_Amount` decimal(8,2) DEFAULT NULL,
  `Transport_Amount` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Voucher_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t029_invoice_transpoter` (
  `Org_Id` varchar(10) NOT NULL,
  `Voucher_Id` varchar(20) NOT NULL,
  `Transporter_Id` varchar(20) DEFAULT NULL,
  `Invoice_Date` date DEFAULT NULL,
  `Invoice_No` varchar(20) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Amount` decimal(8,2) DEFAULT NULL,
  `Anamat_PerLtr` decimal(8,2) DEFAULT NULL,
  `Freight_PerLtr` decimal(8,2) DEFAULT NULL,
  `Is_InvoicePosted` int DEFAULT '0',
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Voucher_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t030_deduction_header` (
  `Org_Id` varchar(10) NOT NULL,
  `Ddeduction_Id` varchar(20) NOT NULL,
  `Order_Id` varchar(20) NOT NULL,
  `Service_Id` varchar(20) DEFAULT NULL,
  `Ddeduction_For_User_Type` varchar(45) DEFAULT NULL,
  `Ddeduction_For_User_Id` varchar(20) DEFAULT NULL,
  `Total_Ddeduction_Amount` decimal(8,2) DEFAULT NULL,
  `Installation_Count` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Ddeduction_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t031_deduction_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Ddeduction_Id` varchar(20) DEFAULT NULL,
  `Installation_No` varchar(45) DEFAULT NULL,
  `Installation_Amount` decimal(8,2) DEFAULT NULL,
  `Installation_Date` datetime DEFAULT NULL,
  `Voucher_Id` varchar(20) DEFAULT NULL,
  `Is_SAPPosted` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t032_dispatchstock_header` (
  `Org_Id` varchar(20) NOT NULL,
  `Dispatchstock_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Agent_Id` varchar(45) DEFAULT NULL,
  `Driver_Id` varchar(45) DEFAULT NULL,
  `TripDocument_Id` varchar(45) DEFAULT NULL,
  `Is_Driver_Accepted` int DEFAULT '0',
  `Is_Dairy_Accepted` int DEFAULT '0',
  `Dispatched_On` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `Created_By` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `LastEdited_By` varchar(45) DEFAULT NULL,
  `Approval_Remarks` longtext,
  `Approved_On` datetime DEFAULT NULL,
  `Approved_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `Approved_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Dispatchstock_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t032_dispatchstock_item` (
  `Org_Id` varchar(20) NOT NULL,
  `Dispatchstock_Id` varchar(45) NOT NULL,
  `Material_Id` varchar(45) NOT NULL,
  `Stock_Type` varchar(100) DEFAULT NULL,
  `Dispatched_Quantity` int DEFAULT '0',
  `Accepted_Quantity` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Dispatchstock_Id`,`Material_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t033_deductions_header` (
  `Org_Id` varchar(20) NOT NULL,
  `Deductions_Id` varchar(45) NOT NULL,
  `Advance_Id` varchar(45) DEFAULT NULL,
  `Entry_Date` datetime DEFAULT NULL,
  `Request_User_Type` varchar(45) DEFAULT NULL,
  `Request_User_Id` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Request_Type` varchar(45) DEFAULT NULL,
  `Total_Amount` decimal(10,2) DEFAULT NULL,
  `Amount_Deducted` decimal(10,2) DEFAULT NULL,
  `Balance` decimal(10,2) DEFAULT NULL,
  `Is_Closed` int DEFAULT NULL,
  `No_Of_Installments` int DEFAULT NULL,
  `ApprovedBy_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy_Id` varchar(45) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(45) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Deductions_Id`),
  KEY `MCC_Id` (`MCC_Id`),
  KEY `Request_User_Id` (`Request_User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t033_deductions_header_offline` (
  `Org_Id` varchar(20) NOT NULL,
  `Deductions_Id` varchar(45) NOT NULL,
  `Entry_Date` datetime DEFAULT NULL,
  `Farmer_Id` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Total_Amount` decimal(10,2) DEFAULT NULL,
  `Amount_Interest` decimal(10,2) DEFAULT NULL,
  `Amount_Deducted` decimal(10,2) DEFAULT NULL,
  `Balance` decimal(10,2) DEFAULT NULL,
  `Is_Closed` int DEFAULT NULL,
  `No_Of_Installments` int DEFAULT NULL,
  `ApprovedBy_On` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy_Id` varchar(45) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(45) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Deductions_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t033_deductions_item` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Deductions_Id` varchar(45) NOT NULL,
  `Deduction_Date` datetime NOT NULL,
  `Deduction_Amount` decimal(10,2) DEFAULT NULL,
  `Is_Deducted` int DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Deductions_Id`,`Deduction_Date`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t033_deductions_item_offline` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Deductions_Id` varchar(45) NOT NULL,
  `Deduction_Date` datetime NOT NULL,
  `Deduction_Amount` decimal(10,2) DEFAULT NULL,
  `Is_Deducted` int DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`Deductions_Id`,`Deduction_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t034_retailerorder_header` (
  `Org_Id` varchar(10) NOT NULL,
  `RetailerOrder_Id` varchar(20) NOT NULL,
  `Retailer_Id` varchar(20) DEFAULT NULL,
  `Dealer_Id` varchar(20) DEFAULT NULL,
  `SalesUser_Id` varchar(45) DEFAULT NULL,
  `Order_No` varchar(45) DEFAULT NULL,
  `Order_Date` datetime DEFAULT NULL,
  `Remarks` longtext,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Is_Closed` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Closed_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`RetailerOrder_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t034_retailerorder_item` (
  `Org_Id` varchar(10) NOT NULL,
  `RetailerOrder_Id` varchar(20) NOT NULL,
  `RetailerOrderItem_Id` varchar(20) NOT NULL,
  `Product_Id` varchar(45) DEFAULT NULL,
  `UOM` varchar(45) DEFAULT NULL,
  `Quantity` decimal(10,0) DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`RetailerOrder_Id`,`RetailerOrderItem_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t035_dealerstock_header` (
  `Org_Id` varchar(20) NOT NULL,
  `DealerStock_Id` varchar(20) NOT NULL,
  `Dealer_Id` varchar(20) DEFAULT NULL,
  `Month_Year` date DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`DealerStock_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t035_dealerstock_item` (
  `Org_Id` varchar(20) NOT NULL,
  `DealerStock_Id` varchar(20) NOT NULL,
  `Product_Id` varchar(45) NOT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`DealerStock_Id`,`Product_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t036_salesuser_targets` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `SalesUser_Id` varchar(45) DEFAULT NULL,
  `Month_Year` date DEFAULT NULL,
  `FinancialYear_Id` varchar(45) DEFAULT NULL,
  `Dealer_Id` varchar(45) DEFAULT NULL,
  `ProductGroup_Id` varchar(45) DEFAULT NULL,
  `Product_Id` varchar(45) DEFAULT NULL,
  `ProductUOM` varchar(45) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t036_salesusers_targets_header` (
  `Org_Id` varchar(20) NOT NULL,
  `Target_Id` varchar(45) NOT NULL,
  `SalesUser_Id` varchar(45) DEFAULT NULL,
  `Month_Year` date DEFAULT NULL,
  `FinancialYear_Id` varchar(45) DEFAULT NULL,
  `Dealer_Id` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Target_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t036_salesusers_targets_item` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `Target_Id` varchar(45) DEFAULT NULL,
  `ProductGroup_Id` varchar(45) DEFAULT NULL,
  `Product_Id` varchar(45) DEFAULT NULL,
  `ProductUOM` varchar(45) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t037_sales_complaint_header` (
  `Org_Id` varchar(10) NOT NULL,
  `Complaint_Id` varchar(20) NOT NULL,
  `Product_Id` varchar(45) DEFAULT NULL,
  `ComplaintType_Id` varchar(45) DEFAULT NULL,
  `Complaint_Remark` text,
  `Complaint_For` varchar(45) DEFAULT NULL,
  `Complaint_For_User_Id` varchar(20) DEFAULT NULL,
  `Complaint_By` varchar(45) DEFAULT NULL,
  `Complaint_By_User_Id` varchar(20) DEFAULT NULL,
  `Complaint_Date` datetime DEFAULT NULL,
  `ComplaintStatus_Id` varchar(45) DEFAULT '0',
  `Closing_Date` datetime DEFAULT NULL,
  `Latitude` varchar(45) DEFAULT NULL,
  `Longitude` varchar(45) DEFAULT NULL,
  `NotificationCodeGroup_Id` varchar(255) DEFAULT NULL,
  `NotificationCode_Id` varchar(255) DEFAULT NULL,
  `NotificationPriority_Id` varchar(255) DEFAULT NULL,
  `QualityNotification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Complaint_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t037_sales_complaint_images` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Complaint_Id` varchar(20) NOT NULL,
  `Photo` longtext,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`Complaint_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t037_sales_complaint_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Complaint_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Action_Date` datetime DEFAULT NULL,
  `Action_By_Id` varchar(45) DEFAULT NULL,
  `Action_By_Name` varchar(45) DEFAULT NULL,
  `Remarks` longtext,
  `Is_Display` int DEFAULT NULL,
  `New_Status_Id` varchar(45) DEFAULT NULL,
  `Current_Status_Id` varchar(45) DEFAULT NULL,
  `Is_Posted` int DEFAULT NULL,
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Complaint_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t038_receivedcrate_header` (
  `Org_Id` varchar(20) NOT NULL,
  `ReceivedCrate_Id` varchar(45) NOT NULL,
  `Dealer_Id` varchar(45) DEFAULT NULL,
  `SalesUser_Id` varchar(45) DEFAULT NULL,
  `UserType` varchar(45) DEFAULT NULL,
  `Is_Approved` int DEFAULT '0',
  `CrateBalance` decimal(10,2) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `Approved_On` datetime DEFAULT NULL,
  `ApprovedBy_Id` varchar(20) DEFAULT NULL,
  `ApprovedBy_Name` varchar(150) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`ReceivedCrate_Id`),
  KEY `Dealer_Id` (`Dealer_Id`),
  KEY `SalesUser_Id` (`SalesUser_Id`),
  KEY `idx_rc_header_org_date` (`Org_Id`,`Created_On`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t038_receivedcrate_item` (
  `Org_Id` varchar(20) NOT NULL,
  `ReceivedCrate_Id` varchar(45) NOT NULL,
  `Material_Id` varchar(45) NOT NULL,
  `MaterialType_Id` varchar(45) DEFAULT NULL,
  `Quantity` int DEFAULT '0',
  `Good_Quantity` int DEFAULT '0',
  `Broken_Quantity` int DEFAULT '0',
  `ThirdParty_Quantity` int DEFAULT '0',
  `Is_Approved` int DEFAULT '0',
  `Is_Posted` int DEFAULT NULL,
  `Sap_Document` varchar(45) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Dealer_Code` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`ReceivedCrate_Id`,`Material_Id`),
  KEY `idx_rc_item_rcid` (`Org_Id`,`ReceivedCrate_Id`,`Material_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t039_dispatch_crate` (
  `Org_Id` varchar(20) NOT NULL,
  `Dispatch_Id` varchar(45) NOT NULL,
  `Dealer_Code` varchar(45) DEFAULT NULL,
  `Dealer_Name` varchar(200) DEFAULT NULL,
  `Dispatch_Date` varchar(45) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Material_Code` varchar(45) DEFAULT NULL,
  `Invoice_Number` varchar(45) DEFAULT NULL,
  `Created_On` varchar(45) DEFAULT NULL,
  `Delivery_Item` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Dispatch_Id`),
  KEY `Dealer_Code` (`Dealer_Code`),
  KEY `Material_Code` (`Material_Code`),
  KEY `idx_duplicate_check` (`Invoice_Number`,`Dealer_Code`,`Material_Code`,`Dispatch_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t039_dispatch_crate_backup` (
  `Org_Id` varchar(20) NOT NULL,
  `Dispatch_Id` varchar(45) NOT NULL,
  `Dealer_Code` varchar(45) DEFAULT NULL,
  `Dealer_Name` varchar(200) DEFAULT NULL,
  `Dispatch_Date` varchar(45) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Material_Code` varchar(45) DEFAULT NULL,
  `Invoice_Number` varchar(45) DEFAULT NULL,
  `Created_On` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t039_dispatch_crate_backup_avi_26_02_2026` (
  `Org_Id` varchar(20) NOT NULL,
  `Dispatch_Id` varchar(45) NOT NULL,
  `Dealer_Code` varchar(45) DEFAULT NULL,
  `Dealer_Name` varchar(200) DEFAULT NULL,
  `Dispatch_Date` varchar(45) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Material_Code` varchar(45) DEFAULT NULL,
  `Invoice_Number` varchar(45) DEFAULT NULL,
  `Created_On` varchar(45) DEFAULT NULL,
  `Delivery_Item` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Dispatch_Id`),
  KEY `Dealer_Code` (`Dealer_Code`),
  KEY `Material_Code` (`Material_Code`),
  KEY `idx_duplicate_check` (`Invoice_Number`,`Dealer_Code`,`Material_Code`,`Dispatch_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t039_dispatch_crate_batch` (
  `Org_Id` varchar(20) NOT NULL,
  `Dispatch_Id` varchar(45) NOT NULL,
  `Dealer_Code` varchar(45) DEFAULT NULL,
  `Dealer_Name` varchar(200) DEFAULT NULL,
  `Dispatch_Date` varchar(45) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Material_Code` varchar(45) DEFAULT NULL,
  `Invoice_Number` varchar(45) DEFAULT NULL,
  `Batch` varchar(45) DEFAULT NULL,
  `Created_On` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Dispatch_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t039_dispatch_crate_time` (
  `Org_Id` varchar(20) NOT NULL,
  `Dispatch_Id` varchar(45) NOT NULL,
  `Dealer_Code` varchar(45) DEFAULT NULL,
  `Dealer_Name` varchar(200) DEFAULT NULL,
  `Dispatch_Date` varchar(45) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `Material_Code` varchar(45) DEFAULT NULL,
  `Invoice_Number` varchar(45) DEFAULT NULL,
  `Created_On` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Dispatch_Id`),
  KEY `Dealer_Code` (`Dealer_Code`),
  KEY `Material_Code` (`Material_Code`),
  KEY `idx_duplicate_check` (`Invoice_Number`,`Dealer_Code`,`Material_Code`,`Dispatch_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t040_salesinquiry_header` (
  `Org_Id` varchar(10) NOT NULL,
  `SalesInquiry` varchar(20) NOT NULL,
  `Dealer_Id` varchar(20) DEFAULT NULL,
  `Retailer_Id` varchar(20) DEFAULT NULL,
  `SalesUser_Id` varchar(20) DEFAULT NULL,
  `SalesNoteText` varchar(45) DEFAULT NULL,
  `CustomerReference` varchar(45) DEFAULT NULL,
  `InquiryStatus_Id` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL COMMENT 'If account is created by Farmer then Farmer Id will come here else Id of User who has created account will come here',
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `SalesInquiryType` varchar(45) DEFAULT NULL,
  `SalesOrganization` varchar(45) DEFAULT NULL,
  `DistributionChannel` varchar(45) DEFAULT NULL,
  `OrganizationDivision` varchar(45) DEFAULT NULL,
  `CustomerPaymentTerms` varchar(45) DEFAULT NULL,
  `IncotermsClassification` varchar(45) DEFAULT NULL,
  `PurchaseOrderByCustomer` varchar(45) DEFAULT NULL,
  `DestinationText` varchar(45) DEFAULT NULL,
  `SoldToParty` varchar(45) DEFAULT NULL,
  `ShipToParty` varchar(45) DEFAULT NULL,
  `BillToParty` varchar(45) DEFAULT NULL,
  `Transporter` varchar(45) DEFAULT NULL,
  `Payer` varchar(45) DEFAULT NULL,
  `SalesPerson` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`SalesInquiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t040_salesinquiry_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Material` varchar(20) NOT NULL,
  `SalesInquiry` varchar(20) NOT NULL,
  `Rate` varchar(20) DEFAULT NULL,
  `RequestedQuantity` varchar(45) DEFAULT NULL,
  `LrDetailsText` longtext,
  `ProductionInstructionsText` longtext,
  `UOM` varchar(45) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Material`,`SalesInquiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t041_salesuser_route` (
  `Org_Id` varchar(30) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `SalesUser_Id` varchar(45) NOT NULL,
  `RouteId` varchar(45) NOT NULL,
  `RouteDay_Id` varchar(45) DEFAULT NULL,
  `Route_Day` varchar(50) DEFAULT NULL,
  `Start_Time` datetime DEFAULT NULL,
  `End_Time` datetime DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Is_Open` int DEFAULT '0',
  `LastEdited_On` datetime DEFAULT NULL,
  `LastEditedBy_Id` varchar(45) DEFAULT NULL,
  `LastEditedBy_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`SalesUser_Id`,`RouteId`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t042_incentives_header` (
  `Org_Id` varchar(20) NOT NULL,
  `Incentives_Id` varchar(45) NOT NULL,
  `Advance_Id` varchar(45) DEFAULT NULL,
  `Entry_Date` datetime DEFAULT NULL,
  `Request_User_Type` varchar(45) DEFAULT NULL,
  `Request_User_Id` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Request_Type` varchar(45) DEFAULT NULL,
  `Total_Amount` decimal(10,2) DEFAULT NULL,
  `Amount_Paid` decimal(10,2) DEFAULT NULL,
  `Balance` decimal(10,2) DEFAULT NULL,
  `Is_Closed` int DEFAULT NULL,
  `No_Of_Installments` int DEFAULT NULL,
  `Remarks` text,
  `CreatedBy_Id` varchar(45) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(45) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Incentives_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t042_incentives_item` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Incentives_Id` varchar(45) NOT NULL,
  `Incentive_Date` datetime NOT NULL,
  `Incentive_Amount` decimal(10,2) DEFAULT NULL,
  `Is_Paid` int DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`Incentives_Id`,`Incentive_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t043_dieselupload` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `DieselUpload_Id` varchar(20) DEFAULT NULL,
  `Transporter_Id` varchar(45) DEFAULT NULL,
  `Vehicle_Id` varchar(45) DEFAULT NULL,
  `Entry_Date` datetime DEFAULT NULL,
  `Quantity_Ltr` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,3) DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t044_rebate` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Entry_Date` date DEFAULT NULL,
  `Quantity_Ltr` decimal(20,3) DEFAULT NULL,
  `RebateRate` decimal(8,2) DEFAULT NULL,
  `RebateMilkPrice` decimal(20,2) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `Posted_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t045_sapposting` (
  `Org_Id` varchar(10) NOT NULL,
  `Voucher_Id` varchar(20) NOT NULL,
  `Invoice_No` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Invoice_Date` date DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Amount` decimal(30,2) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `IncomeFor` varchar(45) DEFAULT NULL,
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Remark` longtext,
  `Is_MilkPayment` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Voucher_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t046_debitsapposting` (
  `Org_Id` varchar(10) NOT NULL,
  `Voucher_Id` varchar(20) NOT NULL,
  `Invoice_No` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Invoice_Date` date DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Amount` decimal(30,2) DEFAULT NULL,
  `Is_Posted` int DEFAULT '0',
  `SAP_Document_Id` varchar(45) DEFAULT NULL,
  `SAP_Document_Year` varchar(45) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Voucher_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t101_mcc_material_inward` (
  `Org_Id` varchar(10) NOT NULL,
  `Inward_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Supplier_Id` varchar(45) DEFAULT NULL,
  `Inward_Date` date DEFAULT NULL,
  `Total_Amount` decimal(30,2) DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Inward_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t101_mcc_material_inward_item` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `Inward_Id` varchar(45) DEFAULT NULL,
  `Material_Id` varchar(45) DEFAULT NULL,
  `Purchase_Amount` decimal(30,2) DEFAULT NULL,
  `Selling_Amount` decimal(30,2) DEFAULT NULL,
  `Purchase_Unit` varchar(45) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t102_mcccollectionshift_offline` (
  `Org_Id` varchar(10) NOT NULL,
  `MCCCollectionShift_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Collection_Date` datetime DEFAULT NULL,
  `CollectionShift_Id` varchar(20) DEFAULT NULL,
  `CollectionShift_Name` varchar(45) DEFAULT NULL,
  `Shift_Status` int DEFAULT '1',
  `ShiftStart_Time` time DEFAULT NULL,
  `ShiftEnd_Time` time DEFAULT NULL,
  `Expected_End_Time` time DEFAULT NULL,
  `Is_MilkDispatch` int DEFAULT NULL,
  `MilkDispatch_On` datetime DEFAULT NULL,
  `Is_MilkCollected` int DEFAULT NULL,
  `MilkCollected_on` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`MCCCollectionShift_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t103_milkcollectionfarmer_offline` (
  `Org_Id` varchar(10) NOT NULL,
  `FarmerCollection_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Quantity_Kg` decimal(8,3) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Protein` varchar(45) DEFAULT NULL,
  `QuantityAuto_Flag` int DEFAULT '0',
  `QualityAuto_Flag` int DEFAULT '0',
  `ApplicableRate` decimal(8,2) DEFAULT NULL,
  `Amount` decimal(8,2) DEFAULT NULL,
  `EntryTime` time DEFAULT NULL,
  `Is_Corrected` int DEFAULT NULL,
  `Correction_Request_Id` varchar(45) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `Anamat_Charge` decimal(8,2) DEFAULT NULL,
  `Freight_Charge` decimal(8,2) DEFAULT NULL,
  `Is_FromApp` int DEFAULT '0',
  `Is_Missing` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`FarmerCollection_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t104_mcc_collection_offline` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(45) NOT NULL,
  `MCCCollectionShift_Id` varchar(45) DEFAULT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Mlk_Type` varchar(50) DEFAULT NULL,
  `Entry_Type` varchar(100) DEFAULT NULL,
  `Quantity` decimal(8,3) DEFAULT '0.000',
  `Fat` decimal(8,2) DEFAULT '0.00',
  `Snf` decimal(8,2) DEFAULT '0.00',
  `Date` datetime DEFAULT NULL,
  `Dealer_Name` longtext,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t105_mcc_collection_stock_offline` (
  `Org_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(45) NOT NULL,
  `Mlk_Type` varchar(50) NOT NULL,
  `Date` datetime NOT NULL,
  `Quantity` decimal(8,3) DEFAULT '0.000',
  `Fat` decimal(8,2) DEFAULT '0.00',
  `Snf` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`Org_Id`,`MCC_Id`,`Mlk_Type`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t105_mcc_collection_stock_offline_reset` (
  `Org_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(45) NOT NULL,
  `Mlk_Type` varchar(50) NOT NULL,
  `Date` datetime NOT NULL,
  `Quantity` decimal(8,3) DEFAULT '0.000',
  `Fat` decimal(8,2) DEFAULT '0.00',
  `Snf` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`Org_Id`,`MCC_Id`,`Mlk_Type`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t106_mcc_material_issue` (
  `Org_Id` varchar(10) NOT NULL,
  `Issue_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Farmer_Id` varchar(45) DEFAULT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Material` longtext,
  `Quantity` decimal(30,3) DEFAULT NULL,
  `Rate` decimal(30,3) DEFAULT NULL,
  `Amount` decimal(30,2) DEFAULT NULL,
  `Amount_Interest` decimal(10,2) DEFAULT NULL,
  `Amount_Deducted` decimal(10,2) DEFAULT NULL,
  `Balance` decimal(10,2) DEFAULT NULL,
  `No_Of_Installments` int DEFAULT NULL,
  `Is_Paid` int DEFAULT '0',
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Issue_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t106_mcc_material_issue_item` (
  `Org_Id` varchar(20) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `Issue_Id` varchar(45) NOT NULL,
  `Date` datetime NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Is_Deducted` int DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`,`Issue_Id`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t107_mcc_farmer_deduction` (
  `Org_Id` varchar(10) NOT NULL,
  `Deduction_Id` varchar(45) NOT NULL,
  `MCC_Id` varchar(45) DEFAULT NULL,
  `Farmer_Id` varchar(45) DEFAULT NULL,
  `Deduction_Date` date DEFAULT NULL,
  `Deduction_Type` longtext,
  `Amount` decimal(30,2) DEFAULT NULL,
  `Is_Check` int DEFAULT '0',
  `Description` longtext,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Invoice_Id` varchar(20) DEFAULT NULL,
  `Is_InvoiceCreated` int DEFAULT '0',
  `InvoiceCreated_On` datetime DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Deduction_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `t108_mcc_farmer_payment` (
  `Org_Id` varchar(10) NOT NULL,
  `Voucher_Id` varchar(20) NOT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `Invoice_Date` date DEFAULT NULL,
  `Invoice_No` varchar(20) DEFAULT NULL,
  `MusterCycle_StartDate` date DEFAULT NULL,
  `MusterCycle_EndDate` date DEFAULT NULL,
  `Invoice_Amount` decimal(30,2) DEFAULT NULL,
  `Description` longtext,
  `Is_Active` int DEFAULT '1',
  `Is_Deleted` int DEFAULT '0',
  `Created_On` datetime DEFAULT NULL,
  `LastEdited_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  `LastEditedBy_Id` varchar(20) DEFAULT NULL,
  `LastEditedBy_Name` varchar(45) DEFAULT NULL,
  `Is_Posted` int DEFAULT '1',
  PRIMARY KEY (`Org_Id`,`Voucher_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `temp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `text` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `temp_test_1` (
  `Material` text,
  `Material Description` text,
  `Plant` text,
  `Supplier` text,
  `Supplier Name` text,
  `Stock` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tm01_milkcollectionfarmer` (
  `Org_Id` varchar(10) NOT NULL,
  `Entry_Id` varchar(20) NOT NULL,
  `MCC_Id` varchar(20) DEFAULT NULL,
  `MCCCollectionShift_Id` varchar(20) DEFAULT NULL,
  `Farmer_Id` varchar(20) DEFAULT NULL,
  `MilkType_Id` varchar(20) DEFAULT NULL,
  `MilkStatus_Id` varchar(20) DEFAULT NULL,
  `Quantity_Ltr` decimal(8,3) DEFAULT NULL,
  `Quantity_Kg` decimal(8,3) DEFAULT NULL,
  `Fat` decimal(8,2) DEFAULT NULL,
  `SNF` decimal(8,2) DEFAULT NULL,
  `Protein` varchar(45) DEFAULT NULL,
  `Run_ApplicableRate` decimal(8,2) DEFAULT NULL,
  `Collection_On` datetime DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `CreatedBy_Id` varchar(20) DEFAULT NULL,
  `CreatedBy_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Org_Id`,`Entry_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tm02_mcc_block` (
  `Org_Id` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Is_Blocked` int DEFAULT '0',
  PRIMARY KEY (`Org_Id`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `your_table_name` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

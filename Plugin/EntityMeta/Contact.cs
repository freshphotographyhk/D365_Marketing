// *********************************************************************
// Created by : Latebound Constants Generator 1.2020.2.1 for XrmToolBox
// Author     : Jonas Rapp https://twitter.com/rappen
// GitHub     : https://github.com/rappen/LCG-UDG
// Source Org : https://freshphotographyhkdev.crm5.dynamics.com/
// Filename   : C:\Users\ianmok\Desktop\Development\D365_Marketing\Plugin\EntityMeta\Contact.cs
// Created    : 2020-08-13 10:49:04
// *********************************************************************

namespace D365Meta
{
    /// <summary>OwnershipType: UserOwned, IntroducedVersion: 5.0.0.0</summary>
    public static class Contact
    {
        public const string EntityName = "contact";
        public const string EntityCollectionName = "contacts";

        #region Attributes

        /// <summary>Type: Uniqueidentifier, RequiredLevel: SystemRequired</summary>
        public const string PrimaryKey = "contactid";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 160, Format: Text</summary>
        public const string PrimaryName = "fullname";
        /// <summary>Type: Uniqueidentifier, RequiredLevel: None</summary>
        public const string DeprecatedProcessStage = "stageid";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 1250, Format: Text</summary>
        public const string DeprecatedTraversedPath = "traversedpath";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: 0, MaxValue: 100000000000000, Precision: 2</summary>
        public const string Aging30 = "aging30";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: -922337203685477, MaxValue: 922337203685477, Precision: 4, CalculationOf: aging30</summary>
        public const string Aging30Base = "aging30_base";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: 0, MaxValue: 100000000000000, Precision: 2</summary>
        public const string Aging60 = "aging60";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: -922337203685477, MaxValue: 922337203685477, Precision: 4, CalculationOf: aging60</summary>
        public const string Aging60Base = "aging60_base";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: 0, MaxValue: 100000000000000, Precision: 2</summary>
        public const string Aging90 = "aging90";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: -922337203685477, MaxValue: 922337203685477, Precision: 4, CalculationOf: aging90</summary>
        public const string Aging90Base = "aging90_base";
        /// <summary>Type: DateTime, RequiredLevel: None, Format: DateOnly, DateTimeBehavior: DateOnly</summary>
        public const string Anniversary = "anniversary";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: 0, MaxValue: 100000000000000, Precision: 2</summary>
        public const string AnnualIncome = "annualincome";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: -922337203685477, MaxValue: 922337203685477, Precision: 4, CalculationOf: annualincome</summary>
        public const string AnnualIncomeBase = "annualincome_base";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Text</summary>
        public const string Assistant = "assistantname";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string AssistantPhone = "assistantphone";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string Auto_created = "isautocreate";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string BackOfficeCustomer = "isbackofficecustomer";
        /// <summary>Type: DateTime, RequiredLevel: None, Format: DateOnly, DateTimeBehavior: DateOnly</summary>
        public const string Birthday = "birthdate";
        /// <summary>Type: Memo, RequiredLevel: None, MaxLength: 1073741823</summary>
        public const string BusinessCard = "businesscard";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string BusinessPhone = "telephone1";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string BusinessPhone2 = "business2";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 4000, Format: Text</summary>
        public const string BusinessCardAttributes = "businesscardattributes";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string CallbackNumber = "callback";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 255, Format: Text</summary>
        public const string ChildrensNames = "childrensnames";
        /// <summary>Type: Customer, RequiredLevel: None, Targets: account,contact</summary>
        public const string CompanyName = "parentcustomerid";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string CompanyPhone = "company";
        /// <summary>Type: Decimal, RequiredLevel: None, MinValue: 0, MaxValue: 100, Precision: 2</summary>
        public const string ContactScore = "fph_contactscore";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: systemuser</summary>
        public const string CreatedBy = "createdby";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: externalparty</summary>
        public const string CreatedByExternalParty = "createdbyexternalparty";
        /// <summary>Type: DateTime, RequiredLevel: None, Format: DateAndTime, DateTimeBehavior: UserLocal</summary>
        public const string CreatedOn = "createdon";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string CreditHold = "creditonhold";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: -922337203685477, MaxValue: 922337203685477, Precision: 4, CalculationOf: creditlimit</summary>
        public const string CreditLimitBase = "creditlimit_base";
        /// <summary>Type: Money, RequiredLevel: None, MinValue: 0, MaxValue: 100000000000000, Precision: 2</summary>
        public const string CreditLimit = "creditlimit";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: transactioncurrency</summary>
        public const string Currency = "transactioncurrencyid";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Customer Size, OptionSetType: Picklist, DefaultFormValue: 1</summary>
        public const string CustomerSize = "customersizecode";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Text</summary>
        public const string Department = "department";
        /// <summary>Type: Memo, RequiredLevel: None, MaxLength: 2000</summary>
        public const string Description = "description";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string DonotallowBulkEmails = "donotbulkemail";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string DonotallowBulkMails = "donotbulkpostalmail";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string DonotallowEmails = "donotemail";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string DonotallowFaxes = "donotfax";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string DonotallowMails = "donotpostalmail";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string DonotallowPhoneCalls = "donotphone";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Education, OptionSetType: Picklist, DefaultFormValue: 1</summary>
        public const string Education = "educationcode";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Email</summary>
        public const string Email = "emailaddress1";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Email</summary>
        public const string EmailAddress2 = "emailaddress2";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Email</summary>
        public const string EmailAddress3 = "emailaddress3";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string Employee = "employeeid";
        /// <summary>Type: Uniqueidentifier, RequiredLevel: None</summary>
        public const string EntityImageId = "entityimageid";
        /// <summary>Type: Decimal, RequiredLevel: None, MinValue: 0.0000000001, MaxValue: 100000000000, Precision: 10</summary>
        public const string ExchangeRate = "exchangerate";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string ExternalUserIdentifier = "externaluseridentifier";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string Fax = "fax";
        /// <summary>Type: String, RequiredLevel: Recommended, MaxLength: 50, Format: Text</summary>
        public const string FirstName = "firstname";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: True</summary>
        public const string FollowEmailActivity = "followemail";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 200, Format: Url</summary>
        public const string FTPSite = "ftpsiteurl";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string GDPROptout = "msdyn_gdproptout";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Gender, OptionSetType: Picklist, DefaultFormValue: -1</summary>
        public const string Gender = "gendercode";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string Government = "governmentid";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Has Children, OptionSetType: Picklist, DefaultFormValue: 1</summary>
        public const string HasChildren = "haschildrencode";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string HomePhone = "telephone2";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string HomePhone2 = "home2";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string isprivate = "isprivate";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Text</summary>
        public const string JobTitle = "jobtitle";
        /// <summary>Type: DateTime, RequiredLevel: None, Format: DateOnly, DateTimeBehavior: UserLocal</summary>
        public const string LastDateIncludedinCampaign = "lastusedincampaign";
        /// <summary>Type: String, RequiredLevel: ApplicationRequired, MaxLength: 50, Format: Text</summary>
        public const string LastName = "lastname";
        /// <summary>Type: DateTime, RequiredLevel: None, Format: DateAndTime, DateTimeBehavior: UserLocal</summary>
        public const string LastOnHoldTime = "lastonholdtime";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: sla</summary>
        public const string LastSLAapplied = "slainvokedid";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Lead Source, OptionSetType: Picklist, DefaultFormValue: 1</summary>
        public const string LeadSource = "leadsourcecode";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Text</summary>
        public const string Manager = "managername";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string ManagerPhone = "managerphone";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Marital Status, OptionSetType: Picklist, DefaultFormValue: -1</summary>
        public const string MaritalStatus = "familystatuscode";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string MarketingOnly = "marketingonly";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: contact</summary>
        public const string MasterID = "masterid";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string Merged = "merged";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string MiddleName = "middlename";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string MobilePhone = "mobilephone";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: externalparty</summary>
        public const string ModifiedByExternalParty = "modifiedbyexternalparty";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: systemuser</summary>
        public const string ModifiedBy = "modifiedby";
        /// <summary>Type: DateTime, RequiredLevel: None, Format: DateAndTime, DateTimeBehavior: UserLocal</summary>
        public const string ModifiedOn = "modifiedon";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Text</summary>
        public const string Nickname = "nickname";
        /// <summary>Type: Integer, RequiredLevel: None, MinValue: 0, MaxValue: 1000000000</summary>
        public const string NoofChildren = "numberofchildren";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Not at Company Flag, OptionSetType: Picklist, DefaultFormValue: 0</summary>
        public const string NotatCompanyFlag = "msdyn_orgchangestatus";
        /// <summary>Type: Integer, RequiredLevel: None, MinValue: -2147483648, MaxValue: 2147483647</summary>
        public const string OnHoldTimeMinutes = "onholdtime";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: lead</summary>
        public const string OriginatingLead = "originatingleadid";
        /// <summary>Type: Owner, RequiredLevel: SystemRequired, Targets: systemuser,team</summary>
        public const string Owner = "ownerid";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string Pager = "pager";
        /// <summary>Type: EntityName, RequiredLevel: None</summary>
        public const string ParentCustomerType = "parentcustomeridtype";
        /// <summary>Type: String, RequiredLevel: ApplicationRequired, MaxLength: 160, Format: Text</summary>
        public const string parentcustomeridname = "parentcustomeridname";
        /// <summary>Type: String, RequiredLevel: ApplicationRequired, MaxLength: 450, Format: Text</summary>
        public const string parentcustomeridyominame = "parentcustomeridyominame";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string ParticipatesinWorkflow = "participatesinworkflow";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Payment Terms, OptionSetType: Picklist, DefaultFormValue: -1</summary>
        public const string PaymentTerms = "paymenttermscode";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Preferred Day, OptionSetType: Picklist, DefaultFormValue: -1</summary>
        public const string PreferredDay = "preferredappointmentdaycode";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: equipment</summary>
        public const string PreferredFacility_Equipment = "preferredequipmentid";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Preferred Method of Contact, OptionSetType: Picklist, DefaultFormValue: 1</summary>
        public const string PreferredMethodofContact = "preferredcontactmethodcode";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: service</summary>
        public const string PreferredService = "preferredserviceid";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Preferred Time, OptionSetType: Picklist, DefaultFormValue: 1</summary>
        public const string PreferredTime = "preferredappointmenttimecode";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: systemuser</summary>
        public const string PreferredUser = "preferredsystemuserid";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: pricelevel</summary>
        public const string PriceList = "defaultpricelevelid";
        /// <summary>Type: Uniqueidentifier, RequiredLevel: None</summary>
        public const string Process = "processid";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Relationship Type, OptionSetType: Picklist, DefaultFormValue: 1</summary>
        public const string RelationshipType = "customertypecode";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Role, OptionSetType: Picklist, DefaultFormValue: -1</summary>
        public const string Role = "accountrolecode";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Text</summary>
        public const string Salutation = "salutation";
        /// <summary>Type: Boolean, RequiredLevel: None, True: 1, False: 0, DefaultValue: False</summary>
        public const string SendMarketingMaterials = "donotsendmm";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Shipping Method , OptionSetType: Picklist, DefaultFormValue: 1</summary>
        public const string ShippingMethod = "shippingmethodcode";
        /// <summary>Type: Lookup, RequiredLevel: None, Targets: sla</summary>
        public const string SLA = "slaid";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 100, Format: Text</summary>
        public const string Spouse_PartnerName = "spousesname";
        /// <summary>Type: State, RequiredLevel: SystemRequired, DisplayName: Status, OptionSetType: State</summary>
        public const string Status = "statecode";
        /// <summary>Type: Status, RequiredLevel: None, DisplayName: Status Reason, OptionSetType: Status</summary>
        public const string StatusReason = "statuscode";
        /// <summary>Type: Uniqueidentifier, RequiredLevel: None</summary>
        public const string Subscription = "subscriptionid";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 10, Format: Text</summary>
        public const string Suffix = "suffix";
        /// <summary>Type: Integer, RequiredLevel: None, MinValue: -2147483648, MaxValue: 2147483647</summary>
        public const string TeamsFollowed = "teamsfollowed";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 50, Format: Text</summary>
        public const string Telephone3 = "telephone3";
        /// <summary>Type: Picklist, RequiredLevel: None, DisplayName: Territory, OptionSetType: Picklist, DefaultFormValue: 1</summary>
        public const string Territory = "territorycode";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 1250, Format: Text</summary>
        public const string TimeSpentbyme = "timespentbymeonemailandmeetings";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 200, Format: Url</summary>
        public const string Website = "websiteurl";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 150, Format: PhoneticGuide</summary>
        public const string YomiFirstName = "yomifirstname";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 450, Format: PhoneticGuide</summary>
        public const string YomiFullName = "yomifullname";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 150, Format: PhoneticGuide</summary>
        public const string YomiLastName = "yomilastname";
        /// <summary>Type: String, RequiredLevel: None, MaxLength: 150, Format: PhoneticGuide</summary>
        public const string YomiMiddleName = "yomimiddlename";

        #endregion Attributes

        #region OptionSets

        public enum CustomerSize_OptionSet
        {
            DefaultValue = 1
        }
        public enum Education_OptionSet
        {
            DefaultValue = 1
        }
        public enum Gender_OptionSet
        {
            Male = 1,
            Female = 2
        }
        public enum HasChildren_OptionSet
        {
            DefaultValue = 1
        }
        public enum LeadSource_OptionSet
        {
            DefaultValue = 1
        }
        public enum MaritalStatus_OptionSet
        {
            Single = 1,
            Married = 2,
            Divorced = 3,
            Widowed = 4
        }
        public enum NotatCompanyFlag_OptionSet
        {
            NoFeedback = 0,
            NotatCompany = 1,
            Ignore = 2
        }
        public enum ParentCustomerType_OptionSet
        {
        }
        public enum PaymentTerms_OptionSet
        {
            Net30 = 1,
            _210Net30 = 2,
            Net45 = 3,
            Net60 = 4
        }
        public enum PreferredDay_OptionSet
        {
            Sunday = 0,
            Monday = 1,
            Tuesday = 2,
            Wednesday = 3,
            Thursday = 4,
            Friday = 5,
            Saturday = 6
        }
        public enum PreferredMethodofContact_OptionSet
        {
            Any = 1,
            Email = 2,
            Phone = 3,
            Fax = 4,
            Mail = 5
        }
        public enum PreferredTime_OptionSet
        {
            Morning = 1,
            Afternoon = 2,
            Evening = 3
        }
        public enum RelationshipType_OptionSet
        {
            DefaultValue = 1
        }
        public enum Role_OptionSet
        {
            DecisionMaker = 1,
            Employee = 2,
            Influencer = 3
        }
        public enum ShippingMethod_OptionSet
        {
            DefaultValue = 1
        }
        public enum Status_OptionSet
        {
            Active = 0,
            Inactive = 1
        }
        public enum StatusReason_OptionSet
        {
            Active = 1,
            Inactive = 2
        }
        public enum Territory_OptionSet
        {
            DefaultValue = 1
        }

        #endregion OptionSets
    }
}

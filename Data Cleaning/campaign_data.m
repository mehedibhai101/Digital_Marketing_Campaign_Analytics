let
    // Load the marketing dataset from the local CSV source
    Source = Csv.Document(File.Contents("your_file_path.csv"),[Delimiter=",", Columns=20, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    
    // Promote the first row to use as headers
    Promote_Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    
    // Assigned standardized data types to support marketing funnel analysis
    Set_Data_Types = Table.TransformColumnTypes(Promote_Headers,{
        {"CustomerID", Int64.Type}, {"Age", Int64.Type}, {"Gender", type text}, 
        {"Income", Int64.Type}, {"CampaignChannel", type text}, {"CampaignType", type text}, 
        {"AdSpend", type number}, {"ClickThroughRate", type number}, {"ConversionRate", type number}, 
        {"WebsiteVisits", Int64.Type}, {"PagesPerVisit", type number}, {"TimeOnSite", type number}, 
        {"SocialShares", Int64.Type}, {"EmailOpens", Int64.Type}, {"EmailClicks", Int64.Type}, 
        {"PreviousPurchases", Int64.Type}, {"LoyaltyPoints", Int64.Type}, {"AdvertisingPlatform", type text}, 
        {"AdvertisingTool", type text}, {"Conversion", Int64.Type}
    }),

    // Removed technical and high-cardinality columns to focus on core performance metrics
    Remove_Columns = Table.RemoveColumns(Set_Data_Types,{"AdvertisingPlatform", "AdvertisingTool", "Income"}),

    // Renamed columns to professional business terminology for dashboarding
    Renamed_Columns = Table.RenameColumns(Remove_Columns,{
        {"CampaignChannel", "Channel"}, {"CampaignType", "Campaign Name"}, 
        {"AdSpend", "Spend"}, {"ClickThroughRate", "CTR"}, {"ConversionRate", "CR %"},
        {"Conversion", "Conversion Flag"}
    }),

    // Replaced Binary 1/0 with Text for easier filtering in visuals
    Standardize_Conversion = Table.TransformColumns(Renamed_Columns, {
        {"Conversion Flag", each if _ = 1 then "Converted" else "Not Converted", type text}
    })
in
    Standardize_Conversion

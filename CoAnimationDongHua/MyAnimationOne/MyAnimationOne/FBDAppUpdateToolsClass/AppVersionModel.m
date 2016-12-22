//
//  AppVersionModel.m
//
//  Created by 冯 宝东 on 2016/11/30
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "AppVersionModel.h"


NSString *const kAppVersionModelAdvisories = @"advisories";
NSString *const kAppVersionModelArtworkUrl100 = @"artworkUrl100";
NSString *const kAppVersionModelCurrency = @"currency";
NSString *const kAppVersionModelSellerUrl = @"sellerUrl";
NSString *const kAppVersionModelArtworkUrl512 = @"artworkUrl512";
NSString *const kAppVersionModelIpadScreenshotUrls = @"ipadScreenshotUrls";
NSString *const kAppVersionModelFileSizeBytes = @"fileSizeBytes";
NSString *const kAppVersionModelGenres = @"genres";
NSString *const kAppVersionModelLanguageCodesISO2A = @"languageCodesISO2A";
NSString *const kAppVersionModelArtworkUrl60 = @"artworkUrl60";
NSString *const kAppVersionModelSupportedDevices = @"supportedDevices";
NSString *const kAppVersionModelBundleId = @"bundleId";
NSString *const kAppVersionModelTrackViewUrl = @"trackViewUrl";
NSString *const kAppVersionModelVersion = @"version";
NSString *const kAppVersionModelDescription = @"description";
NSString *const kAppVersionModelReleaseDate = @"releaseDate";
NSString *const kAppVersionModelArtistViewUrl = @"artistViewUrl";
NSString *const kAppVersionModelIsGameCenterEnabled = @"isGameCenterEnabled";
NSString *const kAppVersionModelWrapperType = @"wrapperType";
NSString *const kAppVersionModelGenreIds = @"genreIds";
NSString *const kAppVersionModelAppletvScreenshotUrls = @"appletvScreenshotUrls";
NSString *const kAppVersionModelTrackId = @"trackId";
NSString *const kAppVersionModelMinimumOsVersion = @"minimumOsVersion";
NSString *const kAppVersionModelFormattedPrice = @"formattedPrice";
NSString *const kAppVersionModelPrimaryGenreId = @"primaryGenreId";
NSString *const kAppVersionModelCurrentVersionReleaseDate = @"currentVersionReleaseDate";
NSString *const kAppVersionModelUserRatingCount = @"userRatingCount";
NSString *const kAppVersionModelArtistId = @"artistId";
NSString *const kAppVersionModelTrackContentRating = @"trackContentRating";
NSString *const kAppVersionModelArtistName = @"artistName";
NSString *const kAppVersionModelPrice = @"price";
NSString *const kAppVersionModelTrackCensoredName = @"trackCensoredName";
NSString *const kAppVersionModelTrackName = @"trackName";
NSString *const kAppVersionModelKind = @"kind";
NSString *const kAppVersionModelFeatures = @"features";
NSString *const kAppVersionModelContentAdvisoryRating = @"contentAdvisoryRating";
NSString *const kAppVersionModelScreenshotUrls = @"screenshotUrls";
NSString *const kAppVersionModelReleaseNotes = @"releaseNotes";
NSString *const kAppVersionModelIsVppDeviceBasedLicensingEnabled = @"isVppDeviceBasedLicensingEnabled";
NSString *const kAppVersionModelSellerName = @"sellerName";
NSString *const kAppVersionModelAverageUserRating = @"averageUserRating";
NSString *const kAppVersionModelPrimaryGenreName = @"primaryGenreName";


@interface AppVersionModel ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation AppVersionModel

@synthesize advisories = _advisories;
@synthesize artworkUrl100 = _artworkUrl100;
@synthesize currency = _currency;
@synthesize sellerUrl = _sellerUrl;
@synthesize artworkUrl512 = _artworkUrl512;
@synthesize ipadScreenshotUrls = _ipadScreenshotUrls;
@synthesize fileSizeBytes = _fileSizeBytes;
@synthesize genres = _genres;
@synthesize languageCodesISO2A = _languageCodesISO2A;
@synthesize artworkUrl60 = _artworkUrl60;
@synthesize supportedDevices = _supportedDevices;
@synthesize bundleId = _bundleId;
@synthesize trackViewUrl = _trackViewUrl;
@synthesize version = _version;
@synthesize internalBaseClassDescription = _internalBaseClassDescription;
@synthesize releaseDate = _releaseDate;
@synthesize artistViewUrl = _artistViewUrl;
@synthesize isGameCenterEnabled = _isGameCenterEnabled;
@synthesize wrapperType = _wrapperType;
@synthesize genreIds = _genreIds;
@synthesize appletvScreenshotUrls = _appletvScreenshotUrls;
@synthesize trackId = _trackId;
@synthesize minimumOsVersion = _minimumOsVersion;
@synthesize formattedPrice = _formattedPrice;
@synthesize primaryGenreId = _primaryGenreId;
@synthesize currentVersionReleaseDate = _currentVersionReleaseDate;
@synthesize userRatingCount = _userRatingCount;
@synthesize artistId = _artistId;
@synthesize trackContentRating = _trackContentRating;
@synthesize artistName = _artistName;
@synthesize price = _price;
@synthesize trackCensoredName = _trackCensoredName;
@synthesize trackName = _trackName;
@synthesize kind = _kind;
@synthesize features = _features;
@synthesize contentAdvisoryRating = _contentAdvisoryRating;
@synthesize screenshotUrls = _screenshotUrls;
@synthesize releaseNotes = _releaseNotes;
@synthesize isVppDeviceBasedLicensingEnabled = _isVppDeviceBasedLicensingEnabled;
@synthesize sellerName = _sellerName;
@synthesize averageUserRating = _averageUserRating;
@synthesize primaryGenreName = _primaryGenreName;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.advisories = [self objectOrNilForKey:kAppVersionModelAdvisories fromDictionary:dict];
            self.artworkUrl100 = [self objectOrNilForKey:kAppVersionModelArtworkUrl100 fromDictionary:dict];
            self.currency = [self objectOrNilForKey:kAppVersionModelCurrency fromDictionary:dict];
            self.sellerUrl = [self objectOrNilForKey:kAppVersionModelSellerUrl fromDictionary:dict];
            self.artworkUrl512 = [self objectOrNilForKey:kAppVersionModelArtworkUrl512 fromDictionary:dict];
            self.ipadScreenshotUrls = [self objectOrNilForKey:kAppVersionModelIpadScreenshotUrls fromDictionary:dict];
            self.fileSizeBytes = [self objectOrNilForKey:kAppVersionModelFileSizeBytes fromDictionary:dict];
            self.genres = [self objectOrNilForKey:kAppVersionModelGenres fromDictionary:dict];
            self.languageCodesISO2A = [self objectOrNilForKey:kAppVersionModelLanguageCodesISO2A fromDictionary:dict];
            self.artworkUrl60 = [self objectOrNilForKey:kAppVersionModelArtworkUrl60 fromDictionary:dict];
            self.supportedDevices = [self objectOrNilForKey:kAppVersionModelSupportedDevices fromDictionary:dict];
            self.bundleId = [self objectOrNilForKey:kAppVersionModelBundleId fromDictionary:dict];
            self.trackViewUrl = [self objectOrNilForKey:kAppVersionModelTrackViewUrl fromDictionary:dict];
            self.version = [self objectOrNilForKey:kAppVersionModelVersion fromDictionary:dict];
            self.internalBaseClassDescription = [self objectOrNilForKey:kAppVersionModelDescription fromDictionary:dict];
            self.releaseDate = [self objectOrNilForKey:kAppVersionModelReleaseDate fromDictionary:dict];
            self.artistViewUrl = [self objectOrNilForKey:kAppVersionModelArtistViewUrl fromDictionary:dict];
            self.isGameCenterEnabled = [[self objectOrNilForKey:kAppVersionModelIsGameCenterEnabled fromDictionary:dict] boolValue];
            self.wrapperType = [self objectOrNilForKey:kAppVersionModelWrapperType fromDictionary:dict];
            self.genreIds = [self objectOrNilForKey:kAppVersionModelGenreIds fromDictionary:dict];
            self.appletvScreenshotUrls = [self objectOrNilForKey:kAppVersionModelAppletvScreenshotUrls fromDictionary:dict];
            self.trackId = [[self objectOrNilForKey:kAppVersionModelTrackId fromDictionary:dict] doubleValue];
            self.minimumOsVersion = [self objectOrNilForKey:kAppVersionModelMinimumOsVersion fromDictionary:dict];
            self.formattedPrice = [self objectOrNilForKey:kAppVersionModelFormattedPrice fromDictionary:dict];
            self.primaryGenreId = [[self objectOrNilForKey:kAppVersionModelPrimaryGenreId fromDictionary:dict] doubleValue];
            self.currentVersionReleaseDate = [self objectOrNilForKey:kAppVersionModelCurrentVersionReleaseDate fromDictionary:dict];
            self.userRatingCount = [[self objectOrNilForKey:kAppVersionModelUserRatingCount fromDictionary:dict] doubleValue];
            self.artistId = [[self objectOrNilForKey:kAppVersionModelArtistId fromDictionary:dict] doubleValue];
            self.trackContentRating = [self objectOrNilForKey:kAppVersionModelTrackContentRating fromDictionary:dict];
            self.artistName = [self objectOrNilForKey:kAppVersionModelArtistName fromDictionary:dict];
            self.price = [[self objectOrNilForKey:kAppVersionModelPrice fromDictionary:dict] doubleValue];
            self.trackCensoredName = [self objectOrNilForKey:kAppVersionModelTrackCensoredName fromDictionary:dict];
            self.trackName = [self objectOrNilForKey:kAppVersionModelTrackName fromDictionary:dict];
            self.kind = [self objectOrNilForKey:kAppVersionModelKind fromDictionary:dict];
            self.features = [self objectOrNilForKey:kAppVersionModelFeatures fromDictionary:dict];
            self.contentAdvisoryRating = [self objectOrNilForKey:kAppVersionModelContentAdvisoryRating fromDictionary:dict];
            self.screenshotUrls = [self objectOrNilForKey:kAppVersionModelScreenshotUrls fromDictionary:dict];
            self.releaseNotes = [self objectOrNilForKey:kAppVersionModelReleaseNotes fromDictionary:dict];
            self.isVppDeviceBasedLicensingEnabled = [[self objectOrNilForKey:kAppVersionModelIsVppDeviceBasedLicensingEnabled fromDictionary:dict] boolValue];
            self.sellerName = [self objectOrNilForKey:kAppVersionModelSellerName fromDictionary:dict];
            self.averageUserRating = [[self objectOrNilForKey:kAppVersionModelAverageUserRating fromDictionary:dict] doubleValue];
            self.primaryGenreName = [self objectOrNilForKey:kAppVersionModelPrimaryGenreName fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForAdvisories = [NSMutableArray array];
    for (NSObject *subArrayObject in self.advisories) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAdvisories addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAdvisories addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAdvisories] forKey:kAppVersionModelAdvisories];
    [mutableDict setValue:self.artworkUrl100 forKey:kAppVersionModelArtworkUrl100];
    [mutableDict setValue:self.currency forKey:kAppVersionModelCurrency];
    [mutableDict setValue:self.sellerUrl forKey:kAppVersionModelSellerUrl];
    [mutableDict setValue:self.artworkUrl512 forKey:kAppVersionModelArtworkUrl512];
    NSMutableArray *tempArrayForIpadScreenshotUrls = [NSMutableArray array];
    for (NSObject *subArrayObject in self.ipadScreenshotUrls) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForIpadScreenshotUrls addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForIpadScreenshotUrls addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForIpadScreenshotUrls] forKey:kAppVersionModelIpadScreenshotUrls];
    [mutableDict setValue:self.fileSizeBytes forKey:kAppVersionModelFileSizeBytes];
    NSMutableArray *tempArrayForGenres = [NSMutableArray array];
    for (NSObject *subArrayObject in self.genres) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForGenres addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForGenres addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForGenres] forKey:kAppVersionModelGenres];
    NSMutableArray *tempArrayForLanguageCodesISO2A = [NSMutableArray array];
    for (NSObject *subArrayObject in self.languageCodesISO2A) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForLanguageCodesISO2A addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForLanguageCodesISO2A addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForLanguageCodesISO2A] forKey:kAppVersionModelLanguageCodesISO2A];
    [mutableDict setValue:self.artworkUrl60 forKey:kAppVersionModelArtworkUrl60];
    NSMutableArray *tempArrayForSupportedDevices = [NSMutableArray array];
    for (NSObject *subArrayObject in self.supportedDevices) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForSupportedDevices addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForSupportedDevices addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForSupportedDevices] forKey:kAppVersionModelSupportedDevices];
    [mutableDict setValue:self.bundleId forKey:kAppVersionModelBundleId];
    [mutableDict setValue:self.trackViewUrl forKey:kAppVersionModelTrackViewUrl];
    [mutableDict setValue:self.version forKey:kAppVersionModelVersion];
    [mutableDict setValue:self.internalBaseClassDescription forKey:kAppVersionModelDescription];
    [mutableDict setValue:self.releaseDate forKey:kAppVersionModelReleaseDate];
    [mutableDict setValue:self.artistViewUrl forKey:kAppVersionModelArtistViewUrl];
    [mutableDict setValue:[NSNumber numberWithBool:self.isGameCenterEnabled] forKey:kAppVersionModelIsGameCenterEnabled];
    [mutableDict setValue:self.wrapperType forKey:kAppVersionModelWrapperType];
    NSMutableArray *tempArrayForGenreIds = [NSMutableArray array];
    for (NSObject *subArrayObject in self.genreIds) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForGenreIds addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForGenreIds addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForGenreIds] forKey:kAppVersionModelGenreIds];
    NSMutableArray *tempArrayForAppletvScreenshotUrls = [NSMutableArray array];
    for (NSObject *subArrayObject in self.appletvScreenshotUrls) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAppletvScreenshotUrls addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAppletvScreenshotUrls addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAppletvScreenshotUrls] forKey:kAppVersionModelAppletvScreenshotUrls];
    [mutableDict setValue:[NSNumber numberWithDouble:self.trackId] forKey:kAppVersionModelTrackId];
    [mutableDict setValue:self.minimumOsVersion forKey:kAppVersionModelMinimumOsVersion];
    [mutableDict setValue:self.formattedPrice forKey:kAppVersionModelFormattedPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.primaryGenreId] forKey:kAppVersionModelPrimaryGenreId];
    [mutableDict setValue:self.currentVersionReleaseDate forKey:kAppVersionModelCurrentVersionReleaseDate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userRatingCount] forKey:kAppVersionModelUserRatingCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.artistId] forKey:kAppVersionModelArtistId];
    [mutableDict setValue:self.trackContentRating forKey:kAppVersionModelTrackContentRating];
    [mutableDict setValue:self.artistName forKey:kAppVersionModelArtistName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.price] forKey:kAppVersionModelPrice];
    [mutableDict setValue:self.trackCensoredName forKey:kAppVersionModelTrackCensoredName];
    [mutableDict setValue:self.trackName forKey:kAppVersionModelTrackName];
    [mutableDict setValue:self.kind forKey:kAppVersionModelKind];
    NSMutableArray *tempArrayForFeatures = [NSMutableArray array];
    for (NSObject *subArrayObject in self.features) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForFeatures addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForFeatures addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForFeatures] forKey:kAppVersionModelFeatures];
    [mutableDict setValue:self.contentAdvisoryRating forKey:kAppVersionModelContentAdvisoryRating];
    NSMutableArray *tempArrayForScreenshotUrls = [NSMutableArray array];
    for (NSObject *subArrayObject in self.screenshotUrls) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForScreenshotUrls addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForScreenshotUrls addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForScreenshotUrls] forKey:kAppVersionModelScreenshotUrls];
    [mutableDict setValue:self.releaseNotes forKey:kAppVersionModelReleaseNotes];
    [mutableDict setValue:[NSNumber numberWithBool:self.isVppDeviceBasedLicensingEnabled] forKey:kAppVersionModelIsVppDeviceBasedLicensingEnabled];
    [mutableDict setValue:self.sellerName forKey:kAppVersionModelSellerName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.averageUserRating] forKey:kAppVersionModelAverageUserRating];
    [mutableDict setValue:self.primaryGenreName forKey:kAppVersionModelPrimaryGenreName];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.advisories = [aDecoder decodeObjectForKey:kAppVersionModelAdvisories];
    self.artworkUrl100 = [aDecoder decodeObjectForKey:kAppVersionModelArtworkUrl100];
    self.currency = [aDecoder decodeObjectForKey:kAppVersionModelCurrency];
    self.sellerUrl = [aDecoder decodeObjectForKey:kAppVersionModelSellerUrl];
    self.artworkUrl512 = [aDecoder decodeObjectForKey:kAppVersionModelArtworkUrl512];
    self.ipadScreenshotUrls = [aDecoder decodeObjectForKey:kAppVersionModelIpadScreenshotUrls];
    self.fileSizeBytes = [aDecoder decodeObjectForKey:kAppVersionModelFileSizeBytes];
    self.genres = [aDecoder decodeObjectForKey:kAppVersionModelGenres];
    self.languageCodesISO2A = [aDecoder decodeObjectForKey:kAppVersionModelLanguageCodesISO2A];
    self.artworkUrl60 = [aDecoder decodeObjectForKey:kAppVersionModelArtworkUrl60];
    self.supportedDevices = [aDecoder decodeObjectForKey:kAppVersionModelSupportedDevices];
    self.bundleId = [aDecoder decodeObjectForKey:kAppVersionModelBundleId];
    self.trackViewUrl = [aDecoder decodeObjectForKey:kAppVersionModelTrackViewUrl];
    self.version = [aDecoder decodeObjectForKey:kAppVersionModelVersion];
    self.internalBaseClassDescription = [aDecoder decodeObjectForKey:kAppVersionModelDescription];
    self.releaseDate = [aDecoder decodeObjectForKey:kAppVersionModelReleaseDate];
    self.artistViewUrl = [aDecoder decodeObjectForKey:kAppVersionModelArtistViewUrl];
    self.isGameCenterEnabled = [aDecoder decodeBoolForKey:kAppVersionModelIsGameCenterEnabled];
    self.wrapperType = [aDecoder decodeObjectForKey:kAppVersionModelWrapperType];
    self.genreIds = [aDecoder decodeObjectForKey:kAppVersionModelGenreIds];
    self.appletvScreenshotUrls = [aDecoder decodeObjectForKey:kAppVersionModelAppletvScreenshotUrls];
    self.trackId = [aDecoder decodeDoubleForKey:kAppVersionModelTrackId];
    self.minimumOsVersion = [aDecoder decodeObjectForKey:kAppVersionModelMinimumOsVersion];
    self.formattedPrice = [aDecoder decodeObjectForKey:kAppVersionModelFormattedPrice];
    self.primaryGenreId = [aDecoder decodeDoubleForKey:kAppVersionModelPrimaryGenreId];
    self.currentVersionReleaseDate = [aDecoder decodeObjectForKey:kAppVersionModelCurrentVersionReleaseDate];
    self.userRatingCount = [aDecoder decodeDoubleForKey:kAppVersionModelUserRatingCount];
    self.artistId = [aDecoder decodeDoubleForKey:kAppVersionModelArtistId];
    self.trackContentRating = [aDecoder decodeObjectForKey:kAppVersionModelTrackContentRating];
    self.artistName = [aDecoder decodeObjectForKey:kAppVersionModelArtistName];
    self.price = [aDecoder decodeDoubleForKey:kAppVersionModelPrice];
    self.trackCensoredName = [aDecoder decodeObjectForKey:kAppVersionModelTrackCensoredName];
    self.trackName = [aDecoder decodeObjectForKey:kAppVersionModelTrackName];
    self.kind = [aDecoder decodeObjectForKey:kAppVersionModelKind];
    self.features = [aDecoder decodeObjectForKey:kAppVersionModelFeatures];
    self.contentAdvisoryRating = [aDecoder decodeObjectForKey:kAppVersionModelContentAdvisoryRating];
    self.screenshotUrls = [aDecoder decodeObjectForKey:kAppVersionModelScreenshotUrls];
    self.releaseNotes = [aDecoder decodeObjectForKey:kAppVersionModelReleaseNotes];
    self.isVppDeviceBasedLicensingEnabled = [aDecoder decodeBoolForKey:kAppVersionModelIsVppDeviceBasedLicensingEnabled];
    self.sellerName = [aDecoder decodeObjectForKey:kAppVersionModelSellerName];
    self.averageUserRating = [aDecoder decodeDoubleForKey:kAppVersionModelAverageUserRating];
    self.primaryGenreName = [aDecoder decodeObjectForKey:kAppVersionModelPrimaryGenreName];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_advisories forKey:kAppVersionModelAdvisories];
    [aCoder encodeObject:_artworkUrl100 forKey:kAppVersionModelArtworkUrl100];
    [aCoder encodeObject:_currency forKey:kAppVersionModelCurrency];
    [aCoder encodeObject:_sellerUrl forKey:kAppVersionModelSellerUrl];
    [aCoder encodeObject:_artworkUrl512 forKey:kAppVersionModelArtworkUrl512];
    [aCoder encodeObject:_ipadScreenshotUrls forKey:kAppVersionModelIpadScreenshotUrls];
    [aCoder encodeObject:_fileSizeBytes forKey:kAppVersionModelFileSizeBytes];
    [aCoder encodeObject:_genres forKey:kAppVersionModelGenres];
    [aCoder encodeObject:_languageCodesISO2A forKey:kAppVersionModelLanguageCodesISO2A];
    [aCoder encodeObject:_artworkUrl60 forKey:kAppVersionModelArtworkUrl60];
    [aCoder encodeObject:_supportedDevices forKey:kAppVersionModelSupportedDevices];
    [aCoder encodeObject:_bundleId forKey:kAppVersionModelBundleId];
    [aCoder encodeObject:_trackViewUrl forKey:kAppVersionModelTrackViewUrl];
    [aCoder encodeObject:_version forKey:kAppVersionModelVersion];
    [aCoder encodeObject:_internalBaseClassDescription forKey:kAppVersionModelDescription];
    [aCoder encodeObject:_releaseDate forKey:kAppVersionModelReleaseDate];
    [aCoder encodeObject:_artistViewUrl forKey:kAppVersionModelArtistViewUrl];
    [aCoder encodeBool:_isGameCenterEnabled forKey:kAppVersionModelIsGameCenterEnabled];
    [aCoder encodeObject:_wrapperType forKey:kAppVersionModelWrapperType];
    [aCoder encodeObject:_genreIds forKey:kAppVersionModelGenreIds];
    [aCoder encodeObject:_appletvScreenshotUrls forKey:kAppVersionModelAppletvScreenshotUrls];
    [aCoder encodeDouble:_trackId forKey:kAppVersionModelTrackId];
    [aCoder encodeObject:_minimumOsVersion forKey:kAppVersionModelMinimumOsVersion];
    [aCoder encodeObject:_formattedPrice forKey:kAppVersionModelFormattedPrice];
    [aCoder encodeDouble:_primaryGenreId forKey:kAppVersionModelPrimaryGenreId];
    [aCoder encodeObject:_currentVersionReleaseDate forKey:kAppVersionModelCurrentVersionReleaseDate];
    [aCoder encodeDouble:_userRatingCount forKey:kAppVersionModelUserRatingCount];
    [aCoder encodeDouble:_artistId forKey:kAppVersionModelArtistId];
    [aCoder encodeObject:_trackContentRating forKey:kAppVersionModelTrackContentRating];
    [aCoder encodeObject:_artistName forKey:kAppVersionModelArtistName];
    [aCoder encodeDouble:_price forKey:kAppVersionModelPrice];
    [aCoder encodeObject:_trackCensoredName forKey:kAppVersionModelTrackCensoredName];
    [aCoder encodeObject:_trackName forKey:kAppVersionModelTrackName];
    [aCoder encodeObject:_kind forKey:kAppVersionModelKind];
    [aCoder encodeObject:_features forKey:kAppVersionModelFeatures];
    [aCoder encodeObject:_contentAdvisoryRating forKey:kAppVersionModelContentAdvisoryRating];
    [aCoder encodeObject:_screenshotUrls forKey:kAppVersionModelScreenshotUrls];
    [aCoder encodeObject:_releaseNotes forKey:kAppVersionModelReleaseNotes];
    [aCoder encodeBool:_isVppDeviceBasedLicensingEnabled forKey:kAppVersionModelIsVppDeviceBasedLicensingEnabled];
    [aCoder encodeObject:_sellerName forKey:kAppVersionModelSellerName];
    [aCoder encodeDouble:_averageUserRating forKey:kAppVersionModelAverageUserRating];
    [aCoder encodeObject:_primaryGenreName forKey:kAppVersionModelPrimaryGenreName];
}

- (id)copyWithZone:(NSZone *)zone
{
    AppVersionModel *copy = [[AppVersionModel alloc] init];
    
    if (copy) {

        copy.advisories = [self.advisories copyWithZone:zone];
        copy.artworkUrl100 = [self.artworkUrl100 copyWithZone:zone];
        copy.currency = [self.currency copyWithZone:zone];
        copy.sellerUrl = [self.sellerUrl copyWithZone:zone];
        copy.artworkUrl512 = [self.artworkUrl512 copyWithZone:zone];
        copy.ipadScreenshotUrls = [self.ipadScreenshotUrls copyWithZone:zone];
        copy.fileSizeBytes = [self.fileSizeBytes copyWithZone:zone];
        copy.genres = [self.genres copyWithZone:zone];
        copy.languageCodesISO2A = [self.languageCodesISO2A copyWithZone:zone];
        copy.artworkUrl60 = [self.artworkUrl60 copyWithZone:zone];
        copy.supportedDevices = [self.supportedDevices copyWithZone:zone];
        copy.bundleId = [self.bundleId copyWithZone:zone];
        copy.trackViewUrl = [self.trackViewUrl copyWithZone:zone];
        copy.version = [self.version copyWithZone:zone];
        copy.internalBaseClassDescription = [self.internalBaseClassDescription copyWithZone:zone];
        copy.releaseDate = [self.releaseDate copyWithZone:zone];
        copy.artistViewUrl = [self.artistViewUrl copyWithZone:zone];
        copy.isGameCenterEnabled = self.isGameCenterEnabled;
        copy.wrapperType = [self.wrapperType copyWithZone:zone];
        copy.genreIds = [self.genreIds copyWithZone:zone];
        copy.appletvScreenshotUrls = [self.appletvScreenshotUrls copyWithZone:zone];
        copy.trackId = self.trackId;
        copy.minimumOsVersion = [self.minimumOsVersion copyWithZone:zone];
        copy.formattedPrice = [self.formattedPrice copyWithZone:zone];
        copy.primaryGenreId = self.primaryGenreId;
        copy.currentVersionReleaseDate = [self.currentVersionReleaseDate copyWithZone:zone];
        copy.userRatingCount = self.userRatingCount;
        copy.artistId = self.artistId;
        copy.trackContentRating = [self.trackContentRating copyWithZone:zone];
        copy.artistName = [self.artistName copyWithZone:zone];
        copy.price = self.price;
        copy.trackCensoredName = [self.trackCensoredName copyWithZone:zone];
        copy.trackName = [self.trackName copyWithZone:zone];
        copy.kind = [self.kind copyWithZone:zone];
        copy.features = [self.features copyWithZone:zone];
        copy.contentAdvisoryRating = [self.contentAdvisoryRating copyWithZone:zone];
        copy.screenshotUrls = [self.screenshotUrls copyWithZone:zone];
        copy.releaseNotes = [self.releaseNotes copyWithZone:zone];
        copy.isVppDeviceBasedLicensingEnabled = self.isVppDeviceBasedLicensingEnabled;
        copy.sellerName = [self.sellerName copyWithZone:zone];
        copy.averageUserRating = self.averageUserRating;
        copy.primaryGenreName = [self.primaryGenreName copyWithZone:zone];
    }
    
    return copy;
}


@end

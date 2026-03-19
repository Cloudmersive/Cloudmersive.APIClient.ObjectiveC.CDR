#import "CMFileSanitizationApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMProblemDetails.h"


@interface CMFileSanitizationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMFileSanitizationApi

NSString* kCMFileSanitizationApiErrorDomain = @"CMFileSanitizationApiErrorDomain";
NSInteger kCMFileSanitizationApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[CMApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(CMApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Content Disarm and Reconstruction on a File
/// Processes the input file via CDR to produce a secured output file.  Input content is parsed, disarmed, and then reconstructed into a new output file with the same file format as the input.
///  @param inputFile Input document, or photos of a document, to extract data from (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) fileWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cdr/sanitization/file"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Advanced Content Disarm and Reconstruction on a File
/// Processes the input file via CDR to produce a secured output file with advanced scan options and response headers containing scan metadata.
///  @param allowExecutables Set to false to block executable files (EXE, DLL, etc.) (optional)
///
///  @param allowInvalidFiles Set to false to block files that are not valid for their detected type (optional)
///
///  @param allowScripts Set to false to block script files. PDF and Office macro sanitization still runs regardless. (optional)
///
///  @param allowPasswordProtectedFiles Set to false to block password-protected files (optional)
///
///  @param allowMacros Set to false to block files containing macros. Office macro removal still runs regardless. (optional)
///
///  @param allowXmlExternalEntities Set to false to block XML files with external entity references (XXE) (optional)
///
///  @param allowInsecureDeserialization Set to false to block files with insecure deserialization patterns (optional)
///
///  @param allowHtml Set to false to block HTML files (optional)
///
///  @param allowUnsafeArchives Set to false to block archive files flagged as unsafe (e.g., zip bombs) (optional)
///
///  @param allowOleEmbeddedObject Set to false to block files with embedded OLE objects (optional)
///
///  @param allowUnwantedAction Set to false to block files with unwanted actions (optional)
///
///  @param restrictFileTypes Comma-separated list of allowed file extensions (e.g., \".pdf,.docx,.xlsx\"). Files not matching will be blocked. (optional)
///
///  @param inputFile Input document to CDR process (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) fileAdvancedWithAllowExecutables: (NSNumber*) allowExecutables
    allowInvalidFiles: (NSNumber*) allowInvalidFiles
    allowScripts: (NSNumber*) allowScripts
    allowPasswordProtectedFiles: (NSNumber*) allowPasswordProtectedFiles
    allowMacros: (NSNumber*) allowMacros
    allowXmlExternalEntities: (NSNumber*) allowXmlExternalEntities
    allowInsecureDeserialization: (NSNumber*) allowInsecureDeserialization
    allowHtml: (NSNumber*) allowHtml
    allowUnsafeArchives: (NSNumber*) allowUnsafeArchives
    allowOleEmbeddedObject: (NSNumber*) allowOleEmbeddedObject
    allowUnwantedAction: (NSNumber*) allowUnwantedAction
    restrictFileTypes: (NSString*) restrictFileTypes
    inputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cdr/sanitization/file/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (allowExecutables != nil) {
        headerParams[@"allowExecutables"] = allowExecutables;
    }
    if (allowInvalidFiles != nil) {
        headerParams[@"allowInvalidFiles"] = allowInvalidFiles;
    }
    if (allowScripts != nil) {
        headerParams[@"allowScripts"] = allowScripts;
    }
    if (allowPasswordProtectedFiles != nil) {
        headerParams[@"allowPasswordProtectedFiles"] = allowPasswordProtectedFiles;
    }
    if (allowMacros != nil) {
        headerParams[@"allowMacros"] = allowMacros;
    }
    if (allowXmlExternalEntities != nil) {
        headerParams[@"allowXmlExternalEntities"] = allowXmlExternalEntities;
    }
    if (allowInsecureDeserialization != nil) {
        headerParams[@"allowInsecureDeserialization"] = allowInsecureDeserialization;
    }
    if (allowHtml != nil) {
        headerParams[@"allowHtml"] = allowHtml;
    }
    if (allowUnsafeArchives != nil) {
        headerParams[@"allowUnsafeArchives"] = allowUnsafeArchives;
    }
    if (allowOleEmbeddedObject != nil) {
        headerParams[@"allowOleEmbeddedObject"] = allowOleEmbeddedObject;
    }
    if (allowUnwantedAction != nil) {
        headerParams[@"allowUnwantedAction"] = allowUnwantedAction;
    }
    if (restrictFileTypes != nil) {
        headerParams[@"restrictFileTypes"] = restrictFileTypes;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Content Disarm and Reconstruction on a File with PDFA Output
/// Processes the input file via CDR to produce a secured PDF/A output file.  Input content is parsed, disarmed, and then reconstructed into a new PDF/A output file.
///  @param inputFile Input document, or photos of a document, to extract data from (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) fileToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cdr/sanitization/file/to/pdf"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Advanced Content Disarm and Reconstruction on a File with PDFA Output
/// Processes the input file via CDR to produce a secured PDF/A output file with advanced scan options and response headers containing scan metadata.
///  @param allowExecutables Set to false to block executable files (EXE, DLL, etc.) (optional)
///
///  @param allowInvalidFiles Set to false to block files that are not valid for their detected type (optional)
///
///  @param allowScripts Set to false to block script files. PDF and Office macro sanitization still runs regardless. (optional)
///
///  @param allowPasswordProtectedFiles Set to false to block password-protected files (optional)
///
///  @param allowMacros Set to false to block files containing macros. Office macro removal still runs regardless. (optional)
///
///  @param allowXmlExternalEntities Set to false to block XML files with external entity references (XXE) (optional)
///
///  @param allowInsecureDeserialization Set to false to block files with insecure deserialization patterns (optional)
///
///  @param allowHtml Set to false to block HTML files (optional)
///
///  @param allowUnsafeArchives Set to false to block archive files flagged as unsafe (e.g., zip bombs) (optional)
///
///  @param allowOleEmbeddedObject Set to false to block files with embedded OLE objects (optional)
///
///  @param allowUnwantedAction Set to false to block files with unwanted actions (optional)
///
///  @param restrictFileTypes Comma-separated list of allowed file extensions (e.g., \".pdf,.docx,.xlsx\"). Files not matching will be blocked. (optional)
///
///  @param inputFile Input document to CDR process (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) fileToPdfAdvancedWithAllowExecutables: (NSNumber*) allowExecutables
    allowInvalidFiles: (NSNumber*) allowInvalidFiles
    allowScripts: (NSNumber*) allowScripts
    allowPasswordProtectedFiles: (NSNumber*) allowPasswordProtectedFiles
    allowMacros: (NSNumber*) allowMacros
    allowXmlExternalEntities: (NSNumber*) allowXmlExternalEntities
    allowInsecureDeserialization: (NSNumber*) allowInsecureDeserialization
    allowHtml: (NSNumber*) allowHtml
    allowUnsafeArchives: (NSNumber*) allowUnsafeArchives
    allowOleEmbeddedObject: (NSNumber*) allowOleEmbeddedObject
    allowUnwantedAction: (NSNumber*) allowUnwantedAction
    restrictFileTypes: (NSString*) restrictFileTypes
    inputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cdr/sanitization/file/to/pdf/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (allowExecutables != nil) {
        headerParams[@"allowExecutables"] = allowExecutables;
    }
    if (allowInvalidFiles != nil) {
        headerParams[@"allowInvalidFiles"] = allowInvalidFiles;
    }
    if (allowScripts != nil) {
        headerParams[@"allowScripts"] = allowScripts;
    }
    if (allowPasswordProtectedFiles != nil) {
        headerParams[@"allowPasswordProtectedFiles"] = allowPasswordProtectedFiles;
    }
    if (allowMacros != nil) {
        headerParams[@"allowMacros"] = allowMacros;
    }
    if (allowXmlExternalEntities != nil) {
        headerParams[@"allowXmlExternalEntities"] = allowXmlExternalEntities;
    }
    if (allowInsecureDeserialization != nil) {
        headerParams[@"allowInsecureDeserialization"] = allowInsecureDeserialization;
    }
    if (allowHtml != nil) {
        headerParams[@"allowHtml"] = allowHtml;
    }
    if (allowUnsafeArchives != nil) {
        headerParams[@"allowUnsafeArchives"] = allowUnsafeArchives;
    }
    if (allowOleEmbeddedObject != nil) {
        headerParams[@"allowOleEmbeddedObject"] = allowOleEmbeddedObject;
    }
    if (allowUnwantedAction != nil) {
        headerParams[@"allowUnwantedAction"] = allowUnwantedAction;
    }
    if (restrictFileTypes != nil) {
        headerParams[@"restrictFileTypes"] = restrictFileTypes;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}



@end

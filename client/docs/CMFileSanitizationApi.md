# CMFileSanitizationApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**file**](CMFileSanitizationApi.md#file) | **POST** /cdr/sanitization/file | Content Disarm and Reconstruction on a File
[**fileAdvanced**](CMFileSanitizationApi.md#fileadvanced) | **POST** /cdr/sanitization/file/advanced | Advanced Content Disarm and Reconstruction on a File
[**fileToPdf**](CMFileSanitizationApi.md#filetopdf) | **POST** /cdr/sanitization/file/to/pdf | Content Disarm and Reconstruction on a File with PDFA Output
[**fileToPdfAdvanced**](CMFileSanitizationApi.md#filetopdfadvanced) | **POST** /cdr/sanitization/file/to/pdf/advanced | Advanced Content Disarm and Reconstruction on a File with PDFA Output


# **file**
```objc
-(NSURLSessionTask*) fileWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Content Disarm and Reconstruction on a File

Processes the input file via CDR to produce a secured output file.  Input content is parsed, disarmed, and then reconstructed into a new output file with the same file format as the input.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input document, or photos of a document, to extract data from (optional)

CMFileSanitizationApi*apiInstance = [[CMFileSanitizationApi alloc] init];

// Content Disarm and Reconstruction on a File
[apiInstance fileWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFileSanitizationApi->file: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input document, or photos of a document, to extract data from | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileAdvanced**
```objc
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
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Advanced Content Disarm and Reconstruction on a File

Processes the input file via CDR to produce a secured output file with advanced scan options and response headers containing scan metadata.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSNumber* allowExecutables = @true; // Set to false to block executable files (EXE, DLL, etc.) (optional)
NSNumber* allowInvalidFiles = @true; // Set to false to block files that are not valid for their detected type (optional)
NSNumber* allowScripts = @true; // Set to false to block script files. PDF and Office macro sanitization still runs regardless. (optional)
NSNumber* allowPasswordProtectedFiles = @true; // Set to false to block password-protected files (optional)
NSNumber* allowMacros = @true; // Set to false to block files containing macros. Office macro removal still runs regardless. (optional)
NSNumber* allowXmlExternalEntities = @true; // Set to false to block XML files with external entity references (XXE) (optional)
NSNumber* allowInsecureDeserialization = @true; // Set to false to block files with insecure deserialization patterns (optional)
NSNumber* allowHtml = @true; // Set to false to block HTML files (optional)
NSNumber* allowUnsafeArchives = @true; // Set to false to block archive files flagged as unsafe (e.g., zip bombs) (optional)
NSNumber* allowOleEmbeddedObject = @true; // Set to false to block files with embedded OLE objects (optional)
NSNumber* allowUnwantedAction = @true; // Set to false to block files with unwanted actions (optional)
NSString* restrictFileTypes = @"restrictFileTypes_example"; // Comma-separated list of allowed file extensions (e.g., \".pdf,.docx,.xlsx\"). Files not matching will be blocked. (optional)
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input document to CDR process (optional)

CMFileSanitizationApi*apiInstance = [[CMFileSanitizationApi alloc] init];

// Advanced Content Disarm and Reconstruction on a File
[apiInstance fileAdvancedWithAllowExecutables:allowExecutables
              allowInvalidFiles:allowInvalidFiles
              allowScripts:allowScripts
              allowPasswordProtectedFiles:allowPasswordProtectedFiles
              allowMacros:allowMacros
              allowXmlExternalEntities:allowXmlExternalEntities
              allowInsecureDeserialization:allowInsecureDeserialization
              allowHtml:allowHtml
              allowUnsafeArchives:allowUnsafeArchives
              allowOleEmbeddedObject:allowOleEmbeddedObject
              allowUnwantedAction:allowUnwantedAction
              restrictFileTypes:restrictFileTypes
              inputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFileSanitizationApi->fileAdvanced: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowExecutables** | **NSNumber***| Set to false to block executable files (EXE, DLL, etc.) | [optional] 
 **allowInvalidFiles** | **NSNumber***| Set to false to block files that are not valid for their detected type | [optional] 
 **allowScripts** | **NSNumber***| Set to false to block script files. PDF and Office macro sanitization still runs regardless. | [optional] 
 **allowPasswordProtectedFiles** | **NSNumber***| Set to false to block password-protected files | [optional] 
 **allowMacros** | **NSNumber***| Set to false to block files containing macros. Office macro removal still runs regardless. | [optional] 
 **allowXmlExternalEntities** | **NSNumber***| Set to false to block XML files with external entity references (XXE) | [optional] 
 **allowInsecureDeserialization** | **NSNumber***| Set to false to block files with insecure deserialization patterns | [optional] 
 **allowHtml** | **NSNumber***| Set to false to block HTML files | [optional] 
 **allowUnsafeArchives** | **NSNumber***| Set to false to block archive files flagged as unsafe (e.g., zip bombs) | [optional] 
 **allowOleEmbeddedObject** | **NSNumber***| Set to false to block files with embedded OLE objects | [optional] 
 **allowUnwantedAction** | **NSNumber***| Set to false to block files with unwanted actions | [optional] 
 **restrictFileTypes** | **NSString***| Comma-separated list of allowed file extensions (e.g., \&quot;.pdf,.docx,.xlsx\&quot;). Files not matching will be blocked. | [optional] 
 **inputFile** | **NSURL***| Input document to CDR process | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileToPdf**
```objc
-(NSURLSessionTask*) fileToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Content Disarm and Reconstruction on a File with PDFA Output

Processes the input file via CDR to produce a secured PDF/A output file.  Input content is parsed, disarmed, and then reconstructed into a new PDF/A output file.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input document, or photos of a document, to extract data from (optional)

CMFileSanitizationApi*apiInstance = [[CMFileSanitizationApi alloc] init];

// Content Disarm and Reconstruction on a File with PDFA Output
[apiInstance fileToPdfWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFileSanitizationApi->fileToPdf: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input document, or photos of a document, to extract data from | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileToPdfAdvanced**
```objc
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
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Advanced Content Disarm and Reconstruction on a File with PDFA Output

Processes the input file via CDR to produce a secured PDF/A output file with advanced scan options and response headers containing scan metadata.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSNumber* allowExecutables = @true; // Set to false to block executable files (EXE, DLL, etc.) (optional)
NSNumber* allowInvalidFiles = @true; // Set to false to block files that are not valid for their detected type (optional)
NSNumber* allowScripts = @true; // Set to false to block script files. PDF and Office macro sanitization still runs regardless. (optional)
NSNumber* allowPasswordProtectedFiles = @true; // Set to false to block password-protected files (optional)
NSNumber* allowMacros = @true; // Set to false to block files containing macros. Office macro removal still runs regardless. (optional)
NSNumber* allowXmlExternalEntities = @true; // Set to false to block XML files with external entity references (XXE) (optional)
NSNumber* allowInsecureDeserialization = @true; // Set to false to block files with insecure deserialization patterns (optional)
NSNumber* allowHtml = @true; // Set to false to block HTML files (optional)
NSNumber* allowUnsafeArchives = @true; // Set to false to block archive files flagged as unsafe (e.g., zip bombs) (optional)
NSNumber* allowOleEmbeddedObject = @true; // Set to false to block files with embedded OLE objects (optional)
NSNumber* allowUnwantedAction = @true; // Set to false to block files with unwanted actions (optional)
NSString* restrictFileTypes = @"restrictFileTypes_example"; // Comma-separated list of allowed file extensions (e.g., \".pdf,.docx,.xlsx\"). Files not matching will be blocked. (optional)
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input document to CDR process (optional)

CMFileSanitizationApi*apiInstance = [[CMFileSanitizationApi alloc] init];

// Advanced Content Disarm and Reconstruction on a File with PDFA Output
[apiInstance fileToPdfAdvancedWithAllowExecutables:allowExecutables
              allowInvalidFiles:allowInvalidFiles
              allowScripts:allowScripts
              allowPasswordProtectedFiles:allowPasswordProtectedFiles
              allowMacros:allowMacros
              allowXmlExternalEntities:allowXmlExternalEntities
              allowInsecureDeserialization:allowInsecureDeserialization
              allowHtml:allowHtml
              allowUnsafeArchives:allowUnsafeArchives
              allowOleEmbeddedObject:allowOleEmbeddedObject
              allowUnwantedAction:allowUnwantedAction
              restrictFileTypes:restrictFileTypes
              inputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFileSanitizationApi->fileToPdfAdvanced: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allowExecutables** | **NSNumber***| Set to false to block executable files (EXE, DLL, etc.) | [optional] 
 **allowInvalidFiles** | **NSNumber***| Set to false to block files that are not valid for their detected type | [optional] 
 **allowScripts** | **NSNumber***| Set to false to block script files. PDF and Office macro sanitization still runs regardless. | [optional] 
 **allowPasswordProtectedFiles** | **NSNumber***| Set to false to block password-protected files | [optional] 
 **allowMacros** | **NSNumber***| Set to false to block files containing macros. Office macro removal still runs regardless. | [optional] 
 **allowXmlExternalEntities** | **NSNumber***| Set to false to block XML files with external entity references (XXE) | [optional] 
 **allowInsecureDeserialization** | **NSNumber***| Set to false to block files with insecure deserialization patterns | [optional] 
 **allowHtml** | **NSNumber***| Set to false to block HTML files | [optional] 
 **allowUnsafeArchives** | **NSNumber***| Set to false to block archive files flagged as unsafe (e.g., zip bombs) | [optional] 
 **allowOleEmbeddedObject** | **NSNumber***| Set to false to block files with embedded OLE objects | [optional] 
 **allowUnwantedAction** | **NSNumber***| Set to false to block files with unwanted actions | [optional] 
 **restrictFileTypes** | **NSString***| Comma-separated list of allowed file extensions (e.g., \&quot;.pdf,.docx,.xlsx\&quot;). Files not matching will be blocked. | [optional] 
 **inputFile** | **NSURL***| Input document to CDR process | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


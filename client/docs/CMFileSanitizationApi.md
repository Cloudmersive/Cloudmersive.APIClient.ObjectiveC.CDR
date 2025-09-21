# CMFileSanitizationApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**file**](CMFileSanitizationApi.md#file) | **POST** /cdr/sanitization/file | Complete Content Disarm and Reconstruction on an Input File, and output in same file format
[**fileToPdf**](CMFileSanitizationApi.md#filetopdf) | **POST** /cdr/sanitization/file/to/pdf | Complete Content Disarm and Reconstruction on an Input File with PDF/A Output


# **file**
```objc
-(NSURLSessionTask*) fileWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSError* error)) handler;
```

Complete Content Disarm and Reconstruction on an Input File, and output in same file format

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

// Complete Content Disarm and Reconstruction on an Input File, and output in same file format
[apiInstance fileWithInputFile:inputFile
          completionHandler: ^(NSError* error) {
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

void (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileToPdf**
```objc
-(NSURLSessionTask*) fileToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSError* error)) handler;
```

Complete Content Disarm and Reconstruction on an Input File with PDF/A Output

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

// Complete Content Disarm and Reconstruction on an Input File with PDF/A Output
[apiInstance fileToPdfWithInputFile:inputFile
          completionHandler: ^(NSError* error) {
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

void (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


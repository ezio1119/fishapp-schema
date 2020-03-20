# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [auth.proto](#auth.proto)
    - [CreateUserReq](#auth_grpc.CreateUserReq)
    - [CreateUserRes](#auth_grpc.CreateUserRes)
    - [DeleteUserReq](#auth_grpc.DeleteUserReq)
    - [GetUserReq](#auth_grpc.GetUserReq)
    - [LoginReq](#auth_grpc.LoginReq)
    - [LoginRes](#auth_grpc.LoginRes)
    - [LogoutReq](#auth_grpc.LogoutReq)
    - [RefreshIDTokenReq](#auth_grpc.RefreshIDTokenReq)
    - [RefreshIDTokenRes](#auth_grpc.RefreshIDTokenRes)
    - [TokenPair](#auth_grpc.TokenPair)
    - [UpdateUserReq](#auth_grpc.UpdateUserReq)
    - [User](#auth_grpc.User)
  
  
  
    - [AuthService](#auth_grpc.AuthService)
  

- [Scalar Value Types](#scalar-value-types)



<a name="auth.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## auth.proto



<a name="auth_grpc.CreateUserReq"></a>

### CreateUserReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |
| password | [string](#string) |  | 6文字以上72文字以下の英数字 |






<a name="auth_grpc.CreateUserRes"></a>

### CreateUserRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#auth_grpc.User) |  |  |
| token_pair | [TokenPair](#auth_grpc.TokenPair) |  |  |






<a name="auth_grpc.DeleteUserReq"></a>

### DeleteUserReq







<a name="auth_grpc.GetUserReq"></a>

### GetUserReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |






<a name="auth_grpc.LoginReq"></a>

### LoginReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |
| password | [string](#string) |  | 6文字以上72文字以下の英数字 |






<a name="auth_grpc.LoginRes"></a>

### LoginRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user | [User](#auth_grpc.User) |  |  |
| token_pair | [TokenPair](#auth_grpc.TokenPair) |  |  |






<a name="auth_grpc.LogoutReq"></a>

### LogoutReq







<a name="auth_grpc.RefreshIDTokenReq"></a>

### RefreshIDTokenReq







<a name="auth_grpc.RefreshIDTokenRes"></a>

### RefreshIDTokenRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token_pair | [TokenPair](#auth_grpc.TokenPair) |  |  |






<a name="auth_grpc.TokenPair"></a>

### TokenPair



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id_token | [string](#string) |  |  |
| refresh_token | [string](#string) |  |  |






<a name="auth_grpc.UpdateUserReq"></a>

### UpdateUserReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |
| old_password | [string](#string) |  | 6文字以上72文字以下の英数字 |
| password | [string](#string) |  | 6文字以上72文字以下の英数字 |






<a name="auth_grpc.User"></a>

### User



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| email | [string](#string) |  |  |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |





 

 

 


<a name="auth_grpc.AuthService"></a>

### AuthService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetUser | [GetUserReq](#auth_grpc.GetUserReq) | [User](#auth_grpc.User) |  |
| CreateUser | [CreateUserReq](#auth_grpc.CreateUserReq) | [CreateUserRes](#auth_grpc.CreateUserRes) |  |
| UpdateUser | [UpdateUserReq](#auth_grpc.UpdateUserReq) | [User](#auth_grpc.User) |  |
| DeleteUser | [DeleteUserReq](#auth_grpc.DeleteUserReq) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| Login | [LoginReq](#auth_grpc.LoginReq) | [LoginRes](#auth_grpc.LoginRes) |  |
| Logout | [LogoutReq](#auth_grpc.LogoutReq) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| RefreshIDToken | [RefreshIDTokenReq](#auth_grpc.RefreshIDTokenReq) | [RefreshIDTokenRes](#auth_grpc.RefreshIDTokenRes) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ Type | Java Type | Python Type |
| ----------- | ----- | -------- | --------- | ----------- |
| <a name="double" /> double |  | double | double | float |
| <a name="float" /> float |  | float | float | float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long |
| <a name="bool" /> bool |  | bool | boolean | boolean |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str |


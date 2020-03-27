# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [post.proto](#post.proto)
    - [ApplyPost](#post_grpc.ApplyPost)
    - [CreateApplyPostReq](#post_grpc.CreateApplyPostReq)
    - [CreatePostReq](#post_grpc.CreatePostReq)
    - [DeleteApplyPostReq](#post_grpc.DeleteApplyPostReq)
    - [DeletePostReq](#post_grpc.DeletePostReq)
    - [DeletePostRes](#post_grpc.DeletePostRes)
    - [GetApplyPostReq](#post_grpc.GetApplyPostReq)
    - [GetPostReq](#post_grpc.GetPostReq)
    - [ListApplyPostsReq](#post_grpc.ListApplyPostsReq)
    - [ListApplyPostsReq.Filter](#post_grpc.ListApplyPostsReq.Filter)
    - [ListApplyPostsRes](#post_grpc.ListApplyPostsRes)
    - [ListPostsReq](#post_grpc.ListPostsReq)
    - [ListPostsReq.Filter](#post_grpc.ListPostsReq.Filter)
    - [ListPostsRes](#post_grpc.ListPostsRes)
    - [Post](#post_grpc.Post)
    - [UpdatePostReq](#post_grpc.UpdatePostReq)
  
    - [ListPostsReq.Filter.OrderBy](#post_grpc.ListPostsReq.Filter.OrderBy)
    - [ListPostsReq.Filter.SortBy](#post_grpc.ListPostsReq.Filter.SortBy)
  
  
    - [PostService](#post_grpc.PostService)
  

- [Scalar Value Types](#scalar-value-types)



<a name="post.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## post.proto



<a name="post_grpc.ApplyPost"></a>

### ApplyPost



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| post_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |






<a name="post_grpc.CreateApplyPostReq"></a>

### CreateApplyPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| post_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="post_grpc.CreatePostReq"></a>

### CreatePostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | 20文字以下 |
| content | [string](#string) |  | 2000文字以下 |
| fishing_spot_type_id | [int64](#int64) |  | 1~4 |
| fish_type_ids | [int64](#int64) | repeated | 1~95 一個以上 ユニーク |
| prefecture_id | [int64](#int64) |  | 1~47 |
| meeting_place_id | [string](#string) |  | google place ID, いまはサーバー側では叩かず保存して返すだけ。後々API叩く。 |
| meeting_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| max_apply | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="post_grpc.DeleteApplyPostReq"></a>

### DeleteApplyPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| post_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="post_grpc.DeletePostReq"></a>

### DeletePostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |






<a name="post_grpc.DeletePostRes"></a>

### DeletePostRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="post_grpc.GetApplyPostReq"></a>

### GetApplyPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| post_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="post_grpc.GetPostReq"></a>

### GetPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| with_children | [bool](#bool) |  | apply_postsやfish_type_idsを含めるか |






<a name="post_grpc.ListApplyPostsReq"></a>

### ListApplyPostsReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [ListApplyPostsReq.Filter](#post_grpc.ListApplyPostsReq.Filter) |  |  |






<a name="post_grpc.ListApplyPostsReq.Filter"></a>

### ListApplyPostsReq.Filter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [int64](#int64) |  |  |
| post_id | [int64](#int64) |  |  |






<a name="post_grpc.ListApplyPostsRes"></a>

### ListApplyPostsRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply_posts | [ApplyPost](#post_grpc.ApplyPost) | repeated |  |






<a name="post_grpc.ListPostsReq"></a>

### ListPostsReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [ListPostsReq.Filter](#post_grpc.ListPostsReq.Filter) |  |  |
| page_size | [int64](#int64) |  | 30件以下。ゼロ値の場合、デフォルト設定で10件 |
| page_token | [string](#string) |  |  |






<a name="post_grpc.ListPostsReq.Filter"></a>

### ListPostsReq.Filter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prefecture_id | [int64](#int64) |  | フロントでenum管理 都道府県コード |
| fishing_spot_type_id | [int64](#int64) |  | フロントでenum管理 1: 陸っぱり, 2: 渓流釣り, 3: 釣り船, 4: 釣り堀 |
| fish_type_ids | [int64](#int64) | repeated | フロントでenum管理 |
| meeting_at_from | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | fromとtoはセットで必要 エラーは出ないけどクエリは無効になる |
| meeting_at_to | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| can_apply | [bool](#bool) |  | trueにすると、応募可能な投稿のみを絞り込める。 |
| order_by | [ListPostsReq.Filter.OrderBy](#post_grpc.ListPostsReq.Filter.OrderBy) |  |  |
| sort_by | [ListPostsReq.Filter.SortBy](#post_grpc.ListPostsReq.Filter.SortBy) |  |  |
| user_id | [int64](#int64) |  | ここに値が入っているとユーザーの投稿を絞り込める |






<a name="post_grpc.ListPostsRes"></a>

### ListPostsRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| posts | [Post](#post_grpc.Post) | repeated |  |
| next_page_token | [string](#string) |  |  |






<a name="post_grpc.Post"></a>

### Post



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| title | [string](#string) |  |  |
| content | [string](#string) |  |  |
| fishing_spot_type_id | [int64](#int64) |  |  |
| fish_type_ids | [int64](#int64) | repeated |  |
| prefecture_id | [int64](#int64) |  |  |
| meeting_place_id | [string](#string) |  |  |
| meeting_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| user_id | [int64](#int64) |  |  |
| max_apply | [int64](#int64) |  |  |
| apply_posts | [ApplyPost](#post_grpc.ApplyPost) | repeated |  |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |






<a name="post_grpc.UpdatePostReq"></a>

### UpdatePostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| title | [string](#string) |  |  |
| content | [string](#string) |  |  |
| fishing_spot_type_id | [int64](#int64) |  |  |
| fish_type_ids | [int64](#int64) | repeated |  |
| prefecture_id | [int64](#int64) |  |  |
| meeting_place_id | [string](#string) |  |  |
| meeting_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| max_apply | [int64](#int64) |  |  |





 


<a name="post_grpc.ListPostsReq.Filter.OrderBy"></a>

### ListPostsReq.Filter.OrderBy


| Name | Number | Description |
| ---- | ------ | ----------- |
| DESC | 0 | デフォルト |
| ASC | 1 |  |



<a name="post_grpc.ListPostsReq.Filter.SortBy"></a>

### ListPostsReq.Filter.SortBy


| Name | Number | Description |
| ---- | ------ | ----------- |
| CREATED_AT | 0 | デフォルト |
| MEETING_AT | 1 |  |


 

 


<a name="post_grpc.PostService"></a>

### PostService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetPost | [GetPostReq](#post_grpc.GetPostReq) | [Post](#post_grpc.Post) | 投稿の詳細を取得 |
| ListPosts | [ListPostsReq](#post_grpc.ListPostsReq) | [ListPostsRes](#post_grpc.ListPostsRes) | 投稿の絞り込み検索 &amp; ページネーション |
| CreatePost | [CreatePostReq](#post_grpc.CreatePostReq) | [Post](#post_grpc.Post) | 投稿を作成 |
| UpdatePost | [UpdatePostReq](#post_grpc.UpdatePostReq) | [Post](#post_grpc.Post) | 投稿を更新 |
| DeletePost | [DeletePostReq](#post_grpc.DeletePostReq) | [.google.protobuf.Empty](#google.protobuf.Empty) | 投稿を削除 |
| GetApplyPost | [GetApplyPostReq](#post_grpc.GetApplyPostReq) | [ApplyPost](#post_grpc.ApplyPost) |  |
| ListApplyPosts | [ListApplyPostsReq](#post_grpc.ListApplyPostsReq) | [ListApplyPostsRes](#post_grpc.ListApplyPostsRes) | その投稿の応募情報のリストを取得, そのユーザーの応募した投稿リストを取得 |
| CreateApplyPost | [CreateApplyPostReq](#post_grpc.CreateApplyPostReq) | [ApplyPost](#post_grpc.ApplyPost) | ユーザーが投稿に応募する |
| DeleteApplyPost | [DeleteApplyPostReq](#post_grpc.DeleteApplyPostReq) | [.google.protobuf.Empty](#google.protobuf.Empty) | ユーザーがその投稿の応募を取り消す |

 



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


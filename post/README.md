# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [post.proto](#post.proto)
    - [ApplyPost](#.ApplyPost)
    - [BatchGetApplyPostsByPostIDsReq](#.BatchGetApplyPostsByPostIDsReq)
    - [BatchGetApplyPostsByPostIDsRes](#.BatchGetApplyPostsByPostIDsRes)
    - [CreateApplyPostReq](#.CreateApplyPostReq)
    - [CreatePostReq](#.CreatePostReq)
    - [DeleteApplyPostReq](#.DeleteApplyPostReq)
    - [DeletePostReq](#.DeletePostReq)
    - [DeletePostRes](#.DeletePostRes)
    - [GetApplyPostReq](#.GetApplyPostReq)
    - [GetPostReq](#.GetPostReq)
    - [ListApplyPostsReq](#.ListApplyPostsReq)
    - [ListApplyPostsReq.Filter](#.ListApplyPostsReq.Filter)
    - [ListApplyPostsRes](#.ListApplyPostsRes)
    - [ListPostsReq](#.ListPostsReq)
    - [ListPostsReq.Filter](#.ListPostsReq.Filter)
    - [ListPostsRes](#.ListPostsRes)
    - [Post](#.Post)
    - [UpdatePostReq](#.UpdatePostReq)
  
    - [ListPostsReq.Filter.OrderBy](#.ListPostsReq.Filter.OrderBy)
    - [ListPostsReq.Filter.SortBy](#.ListPostsReq.Filter.SortBy)
  
  
    - [PostService](#.PostService)
  

- [Scalar Value Types](#scalar-value-types)



<a name="post.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## post.proto



<a name=".ApplyPost"></a>

### ApplyPost



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| post_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |






<a name=".BatchGetApplyPostsByPostIDsReq"></a>

### BatchGetApplyPostsByPostIDsReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| post_ids | [int64](#int64) | repeated |  |






<a name=".BatchGetApplyPostsByPostIDsRes"></a>

### BatchGetApplyPostsByPostIDsRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply_posts | [ApplyPost](#ApplyPost) | repeated |  |






<a name=".CreateApplyPostReq"></a>

### CreateApplyPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| post_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name=".CreatePostReq"></a>

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






<a name=".DeleteApplyPostReq"></a>

### DeleteApplyPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |






<a name=".DeletePostReq"></a>

### DeletePostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |






<a name=".DeletePostRes"></a>

### DeletePostRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name=".GetApplyPostReq"></a>

### GetApplyPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |






<a name=".GetPostReq"></a>

### GetPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |






<a name=".ListApplyPostsReq"></a>

### ListApplyPostsReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [ListApplyPostsReq.Filter](#ListApplyPostsReq.Filter) |  |  |






<a name=".ListApplyPostsReq.Filter"></a>

### ListApplyPostsReq.Filter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [int64](#int64) |  |  |
| post_id | [int64](#int64) |  |  |






<a name=".ListApplyPostsRes"></a>

### ListApplyPostsRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply_posts | [ApplyPost](#ApplyPost) | repeated |  |






<a name=".ListPostsReq"></a>

### ListPostsReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [ListPostsReq.Filter](#ListPostsReq.Filter) |  |  |
| page_size | [int64](#int64) |  | 30件以下。ゼロ値の場合、デフォルト設定で10件 |
| page_token | [string](#string) |  |  |






<a name=".ListPostsReq.Filter"></a>

### ListPostsReq.Filter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prefecture_id | [int64](#int64) |  | フロントでenum管理 都道府県コード |
| fishing_spot_type_id | [int64](#int64) |  | フロントでenum管理 1: 陸っぱり, 2: 渓流釣り, 3: 釣り船, 4: 釣り堀 |
| fish_type_ids | [int64](#int64) | repeated | フロントでenum管理 |
| meeting_at_from | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  | fromとtoはセットで必要 エラーは出ないけどクエリは無効になる |
| meeting_at_to | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| can_apply | [bool](#bool) |  | trueにすると、応募可能な投稿のみを絞り込める。 |
| order_by | [ListPostsReq.Filter.OrderBy](#ListPostsReq.Filter.OrderBy) |  |  |
| sort_by | [ListPostsReq.Filter.SortBy](#ListPostsReq.Filter.SortBy) |  |  |
| user_id | [int64](#int64) |  | ここに値が入っているとユーザーの投稿を絞り込める |






<a name=".ListPostsRes"></a>

### ListPostsRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| posts | [Post](#Post) | repeated |  |
| next_page_token | [string](#string) |  |  |






<a name=".Post"></a>

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
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |






<a name=".UpdatePostReq"></a>

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





 


<a name=".ListPostsReq.Filter.OrderBy"></a>

### ListPostsReq.Filter.OrderBy


| Name | Number | Description |
| ---- | ------ | ----------- |
| DESC | 0 | デフォルト |
| ASC | 1 |  |



<a name=".ListPostsReq.Filter.SortBy"></a>

### ListPostsReq.Filter.SortBy


| Name | Number | Description |
| ---- | ------ | ----------- |
| CREATED_AT | 0 | デフォルト |
| MEETING_AT | 1 |  |


 

 


<a name=".PostService"></a>

### PostService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetPost | [.GetPostReq](#GetPostReq) | [.Post](#Post) | 投稿の詳細を取得 |
| ListPosts | [.ListPostsReq](#ListPostsReq) | [.ListPostsRes](#ListPostsRes) | 投稿の絞り込み検索 &amp; ページネーション |
| CreatePost | [.CreatePostReq](#CreatePostReq) | [.Post](#Post) | 投稿を作成 |
| UpdatePost | [.UpdatePostReq](#UpdatePostReq) | [.Post](#Post) | 投稿を更新 |
| DeletePost | [.DeletePostReq](#DeletePostReq) | [.google.protobuf.Empty](#google.protobuf.Empty) | 投稿を削除 |
| GetApplyPost | [.GetApplyPostReq](#GetApplyPostReq) | [.ApplyPost](#ApplyPost) |  |
| ListApplyPosts | [.ListApplyPostsReq](#ListApplyPostsReq) | [.ListApplyPostsRes](#ListApplyPostsRes) | その投稿の応募情報のリストを取得, そのユーザーの応募した投稿リストを取得 |
| BatchGetApplyPostsByPostIDs | [.BatchGetApplyPostsByPostIDsReq](#BatchGetApplyPostsByPostIDsReq) | [.BatchGetApplyPostsByPostIDsRes](#BatchGetApplyPostsByPostIDsRes) |  |
| CreateApplyPost | [.CreateApplyPostReq](#CreateApplyPostReq) | [.ApplyPost](#ApplyPost) | ユーザーが投稿に応募する |
| DeleteApplyPost | [.DeleteApplyPostReq](#DeleteApplyPostReq) | [.google.protobuf.Empty](#google.protobuf.Empty) | ユーザーがその投稿の応募を取り消す |

 



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


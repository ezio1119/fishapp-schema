# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [chat/chat.proto](#chat/chat.proto)
    - [CreateMemberReq](#chat_grpc.CreateMemberReq)
    - [CreateMessageReq](#chat_grpc.CreateMessageReq)
    - [CreateRoomReq](#chat_grpc.CreateRoomReq)
    - [DeleteMemberReq](#chat_grpc.DeleteMemberReq)
    - [GetMemberReq](#chat_grpc.GetMemberReq)
    - [GetRoomReq](#chat_grpc.GetRoomReq)
    - [ListMembersReq](#chat_grpc.ListMembersReq)
    - [ListMembersRes](#chat_grpc.ListMembersRes)
    - [ListMessagesReq](#chat_grpc.ListMessagesReq)
    - [ListMessagesRes](#chat_grpc.ListMessagesRes)
    - [Member](#chat_grpc.Member)
    - [Message](#chat_grpc.Message)
    - [Room](#chat_grpc.Room)
    - [StreamMessageReq](#chat_grpc.StreamMessageReq)
  
    - [ChatService](#chat_grpc.ChatService)
  
- [event/event.proto](#event/event.proto)
    - [Event](#event.Event)
    - [RoomCreated](#event.RoomCreated)
  
- [auth/auth.proto](#auth/auth.proto)
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
  
- [post/post.proto](#post/post.proto)
    - [ApplyPost](#post_grpc.ApplyPost)
    - [BatchGetApplyPostsByPostIDsReq](#post_grpc.BatchGetApplyPostsByPostIDsReq)
    - [BatchGetApplyPostsByPostIDsRes](#post_grpc.BatchGetApplyPostsByPostIDsRes)
    - [CreateApplyPostReq](#post_grpc.CreateApplyPostReq)
    - [CreatePostReq](#post_grpc.CreatePostReq)
    - [CreatePostRes](#post_grpc.CreatePostRes)
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
  
- [profile/profile.proto](#profile/profile.proto)
    - [BatchGetProfilesReq](#profile_grpc.BatchGetProfilesReq)
    - [BatchGetProfilesRes](#profile_grpc.BatchGetProfilesRes)
    - [CreateProfileReq](#profile_grpc.CreateProfileReq)
    - [DeleteProfileReq](#profile_grpc.DeleteProfileReq)
    - [GetProfileReq](#profile_grpc.GetProfileReq)
    - [Profile](#profile_grpc.Profile)
    - [UpdateProfileReq](#profile_grpc.UpdateProfileReq)
  
    - [Sex](#profile_grpc.Sex)
  
    - [ProfileService](#profile_grpc.ProfileService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="chat/chat.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## chat/chat.proto



<a name="chat_grpc.CreateMemberReq"></a>

### CreateMemberReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="chat_grpc.CreateMessageReq"></a>

### CreateMessageReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| body | [string](#string) |  |  |
| room_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="chat_grpc.CreateRoomReq"></a>

### CreateRoomReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| post_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="chat_grpc.DeleteMemberReq"></a>

### DeleteMemberReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="chat_grpc.GetMemberReq"></a>

### GetMemberReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="chat_grpc.GetRoomReq"></a>

### GetRoomReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| post_id | [int64](#int64) |  |  |






<a name="chat_grpc.ListMembersReq"></a>

### ListMembersReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [int64](#int64) |  |  |






<a name="chat_grpc.ListMembersRes"></a>

### ListMembersRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| members | [Member](#chat_grpc.Member) | repeated |  |






<a name="chat_grpc.ListMessagesReq"></a>

### ListMessagesReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [int64](#int64) |  |  |






<a name="chat_grpc.ListMessagesRes"></a>

### ListMessagesRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| messages | [Message](#chat_grpc.Message) | repeated |  |






<a name="chat_grpc.Member"></a>

### Member



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| room_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |






<a name="chat_grpc.Message"></a>

### Message



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| body | [string](#string) |  |  |
| room_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |






<a name="chat_grpc.Room"></a>

### Room



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| post_id | [int64](#int64) |  |  |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |






<a name="chat_grpc.StreamMessageReq"></a>

### StreamMessageReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |





 

 

 


<a name="chat_grpc.ChatService"></a>

### ChatService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetRoom | [GetRoomReq](#chat_grpc.GetRoomReq) | [Room](#chat_grpc.Room) |  |
| CreateRoom | [CreateRoomReq](#chat_grpc.CreateRoomReq) | [Room](#chat_grpc.Room) | user_idでcreateMemberもする |
| GetMember | [GetMemberReq](#chat_grpc.GetMemberReq) | [Member](#chat_grpc.Member) |  |
| ListMembers | [ListMembersReq](#chat_grpc.ListMembersReq) | [ListMembersRes](#chat_grpc.ListMembersRes) |  |
| CreateMember | [CreateMemberReq](#chat_grpc.CreateMemberReq) | [Member](#chat_grpc.Member) |  |
| DeleteMember | [DeleteMemberReq](#chat_grpc.DeleteMemberReq) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |
| ListMessages | [ListMessagesReq](#chat_grpc.ListMessagesReq) | [ListMessagesRes](#chat_grpc.ListMessagesRes) |  |
| CreateMessage | [CreateMessageReq](#chat_grpc.CreateMessageReq) | [Message](#chat_grpc.Message) |  |
| StreamMessage | [StreamMessageReq](#chat_grpc.StreamMessageReq) | [Message](#chat_grpc.Message) stream |  |

 



<a name="event/event.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## event/event.proto



<a name="event.Event"></a>

### Event



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| event_type | [string](#string) |  |  |
| aggregate_id | [string](#string) |  |  |
| aggregate_type | [string](#string) |  |  |
| event_data | [bytes](#bytes) |  |  |






<a name="event.RoomCreated"></a>

### RoomCreated



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room | [chat_grpc.Room](#chat_grpc.Room) |  |  |
| saga_id | [string](#string) |  |  |





 

 

 

 



<a name="auth/auth.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## auth/auth.proto



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

 



<a name="post/post.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## post/post.proto



<a name="post_grpc.ApplyPost"></a>

### ApplyPost



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| post_id | [int64](#int64) |  |  |
| user_id | [int64](#int64) |  |  |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |






<a name="post_grpc.BatchGetApplyPostsByPostIDsReq"></a>

### BatchGetApplyPostsByPostIDsReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| post_ids | [int64](#int64) | repeated |  |






<a name="post_grpc.BatchGetApplyPostsByPostIDsRes"></a>

### BatchGetApplyPostsByPostIDsRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apply_posts | [ApplyPost](#post_grpc.ApplyPost) | repeated |  |






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






<a name="post_grpc.CreatePostRes"></a>

### CreatePostRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| post | [Post](#post_grpc.Post) |  |  |
| saga_id | [string](#string) |  |  |






<a name="post_grpc.DeleteApplyPostReq"></a>

### DeleteApplyPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |






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
| id | [int64](#int64) |  |  |






<a name="post_grpc.GetPostReq"></a>

### GetPostReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |






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
| CreatePost | [CreatePostReq](#post_grpc.CreatePostReq) | [CreatePostRes](#post_grpc.CreatePostRes) | 投稿を作成 |
| UpdatePost | [UpdatePostReq](#post_grpc.UpdatePostReq) | [Post](#post_grpc.Post) | 投稿を更新 |
| DeletePost | [DeletePostReq](#post_grpc.DeletePostReq) | [.google.protobuf.Empty](#google.protobuf.Empty) | 投稿を削除 |
| GetApplyPost | [GetApplyPostReq](#post_grpc.GetApplyPostReq) | [ApplyPost](#post_grpc.ApplyPost) |  |
| ListApplyPosts | [ListApplyPostsReq](#post_grpc.ListApplyPostsReq) | [ListApplyPostsRes](#post_grpc.ListApplyPostsRes) | その投稿の応募情報のリストを取得, そのユーザーの応募した投稿リストを取得 |
| BatchGetApplyPostsByPostIDs | [BatchGetApplyPostsByPostIDsReq](#post_grpc.BatchGetApplyPostsByPostIDsReq) | [BatchGetApplyPostsByPostIDsRes](#post_grpc.BatchGetApplyPostsByPostIDsRes) |  |
| CreateApplyPost | [CreateApplyPostReq](#post_grpc.CreateApplyPostReq) | [ApplyPost](#post_grpc.ApplyPost) | ユーザーが投稿に応募する |
| DeleteApplyPost | [DeleteApplyPostReq](#post_grpc.DeleteApplyPostReq) | [.google.protobuf.Empty](#google.protobuf.Empty) | ユーザーがその投稿の応募を取り消す |

 



<a name="profile/profile.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## profile/profile.proto



<a name="profile_grpc.BatchGetProfilesReq"></a>

### BatchGetProfilesReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_ids | [int64](#int64) | repeated |  |






<a name="profile_grpc.BatchGetProfilesRes"></a>

### BatchGetProfilesRes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| profiles | [Profile](#profile_grpc.Profile) | repeated |  |






<a name="profile_grpc.CreateProfileReq"></a>

### CreateProfileReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| introduction | [string](#string) |  |  |
| sex | [Sex](#profile_grpc.Sex) |  |  |
| user_id | [int64](#int64) |  |  |






<a name="profile_grpc.DeleteProfileReq"></a>

### DeleteProfileReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [int64](#int64) |  |  |






<a name="profile_grpc.GetProfileReq"></a>

### GetProfileReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| user_id | [int64](#int64) |  |  |






<a name="profile_grpc.Profile"></a>

### Profile



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| name | [string](#string) |  |  |
| introduction | [string](#string) |  |  |
| sex | [Sex](#profile_grpc.Sex) |  |  |
| user_id | [int64](#int64) |  |  |
| created_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |






<a name="profile_grpc.UpdateProfileReq"></a>

### UpdateProfileReq



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| introduction | [string](#string) |  |  |
| user_id | [int64](#int64) |  |  |





 


<a name="profile_grpc.Sex"></a>

### Sex


| Name | Number | Description |
| ---- | ------ | ----------- |
| SEX_UNSPECIFIED | 0 |  |
| MALE | 1 |  |
| FEMALE | 2 |  |


 

 


<a name="profile_grpc.ProfileService"></a>

### ProfileService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateProfile | [CreateProfileReq](#profile_grpc.CreateProfileReq) | [Profile](#profile_grpc.Profile) |  |
| GetProfile | [GetProfileReq](#profile_grpc.GetProfileReq) | [Profile](#profile_grpc.Profile) |  |
| BatchGetProfiles | [BatchGetProfilesReq](#profile_grpc.BatchGetProfilesReq) | [BatchGetProfilesRes](#profile_grpc.BatchGetProfilesRes) | もらったIDの配列の順番でprofileの配列を返す |
| UpdateProfile | [UpdateProfileReq](#profile_grpc.UpdateProfileReq) | [Profile](#profile_grpc.Profile) |  |
| DeleteProfile | [DeleteProfileReq](#profile_grpc.DeleteProfileReq) | [.google.protobuf.Empty](#google.protobuf.Empty) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |


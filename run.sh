#!/usr/bin/env bash

HOST=http://localhost:8080

curl -X POST -d 'json={"Identifier":"test","Nick":"test","FaceUrl":"http://www.qq.com"}' ${HOST}/v4/im_open_login_svc/account_import

curl -X POST -d 'json={"Accounts":["test1","test2","test3","test4","test5"]}' ${HOST}/v4/im_open_login_svc/multiaccount_import

curl -X POST -d 'json={"Identifier":"test","IdentifierType":3,"Password":"passwd123"}' ${HOST}/v4/registration_service/register_account_v1

curl -X POST -d 'json={"Identifier":"test"}' ${HOST}/v4/im_open_login_svc/kick

curl -X POST -d 'json={"SyncOtherMachine":2,"To_Account":"test","MsgLifeTime":60,"MsgRandom":1287657,"MsgTimeStamp":5454457,"MsgBody":[{"MsgType":"TIMTextElem","MsgContent":{"Text":"hi, beauty"}}]}' ${HOST}/v4/openim/sendmsg

curl -X POST -d 'json={"SyncOtherMachine":2,"To_Account":["test1","test2"],"MsgRandom":19901224,"MsgBody":[{"MsgType":"TIMTextElem","MsgContent":{"Text":"hi, beauty"}}]}' ${HOST}/v4/openim/batchsendmsg

curl -X POST -d 'json={"SyncFromOldSystem":1,"From_Account":"test","To_Account":"test1","MsgRandom":1287657,"MsgTimeStamp":5454457,"MsgBody":[{"MsgType":"TIMTextElem","MsgContent":{"Text":"hi, beauty"}}]}' ${HOST}/v4/openim/importmsg

curl -X POST -d 'json={"MsgRandom":20160201,"MsgBody":[{"MsgType":"TIMTextElem","MsgContent":{"Text":"hi, beauty"}}]}' ${HOST}/v4/openim/im_push

curl -X POST -d 'json={"TaskIds":["144115197002484901_2016053001_2016053001","144115197002484901_2016053001_2016053002"]}' ${HOST}/v4/openim/im_get_push_report

curl -X POST -d 'json={"AttrNames":{"0":"sex","1":"city","2":"country"}}' ${HOST}/v4/openim/im_set_attr_name

curl -X POST -d 'json={}' ${HOST}/v4/openim/im_get_attr_name

curl -X POST -d 'json={"UserAttrs":[{"To_Account":"test1","Attrs":{"sex":"attr1","city":"attr2"}},{"To_Account":"test2","Attrs":{"city":"attr3","sex":"attr4"}}]}' ${HOST}/v4/openim/im_set_attr

curl -X POST -d 'json={"UserAttrs":[{"To_Account":"test1","Attrs":["sex","city"]},{"To_Account":"test2","Attrs":["sex","city"]}]}' ${HOST}/v4/openim/im_remove_attr

curl -X POST -d 'json={"To_Account":["张小红","陈小明","abc"]}' ${HOST}/v4/openim/im_get_attr

curl -X POST -d 'json={"UserTags":[{"To_Account":"test1","Tags":["a","b"]},{"To_Account":"test2","Tags":["a","b"]}]}' ${HOST}/v4/openim/im_add_tag

curl -X POST -d 'json={"UserTags":[{"To_Account":"test1","Tags":["a","b"]},{"To_Account":"test2","Tags":["a","b"]}]}' ${HOST}/v4/openim/im_remove_tag

curl -X POST -d 'json={"To_Account":["test1","test2"]}' ${HOST}/v4/openim/im_remove_all_tags

curl -X POST -d 'json={}' ${HOST}/v4/group_open_http_svc/get_appid_group_list

curl -X POST -d 'json={"Owner_Account":"test","Type":"Public","Name":"TestGroup","Introduction":"This is group Introduction","Notification":"This is group Notification","FaceUrl":"http://this.is.face.url","MaxMemberCount":500,"ApplyJoinOption":"FreeAccess"}' ${HOST}/v4/group_open_http_svc/create_group

curl -X POST -d 'json={"GroupIdList":["@TGS#1NVTZEAE4","@TGS#1CXTZEAET"]}' ${HOST}/v4/group_open_http_svc/get_group_info

curl -X POST -d 'json={"GroupId":"@TGS#1NVTZEAE4"}' ${HOST}/v4/group_open_http_svc/get_group_member_info

curl -X POST -d 'json={"GroupId":"@TGS#1NVTZEAE4","Name":"NewName","Introduction":"NewIntroduction","Notification":"NewNotification","FaceUrl":"http://this.is.new.face.url","MaxMemberNum":500,"ApplyJoinOption":"NeedPermission","ShutUpAllMember":"On"}' ${HOST}/v4/group_open_http_svc/modify_group_base_info

curl -X POST -d 'json={"GroupId":"@TGS#2J4SZEAEL","MemberList":[{"Member_Account":"tommy"},{"Member_Account":"jared"},{"Member_Account":"bob"}]}' ${HOST}/v4/group_open_http_svc/add_group_member

curl -X POST -d 'json={"GroupId":"@TGS#2J4SZEAEL","MemberToDel_Account":["tommy","jared"]}' ${HOST}/v4/group_open_http_svc/delete_group_member

curl -X POST -d 'json={"GroupId":"@TGS#2CLUZEAEJ","Member_Account":"bob","Role":"Admin"}' ${HOST}/v4/group_open_http_svc/modify_group_member_info

curl -X POST -d 'json={"GroupId":"@TGS#2J4SZEAEL"}' ${HOST}/v4/group_open_http_svc/destroy_group

curl -X POST -d 'json={"Member_Account":"bob"}' ${HOST}/v4/group_open_http_svc/get_joined_group_list

curl -X POST -d 'json={"GroupId":"@TGS#2C5SZEAEF","User_Account":["leckie","peter","wesley"]}' ${HOST}/v4/group_open_http_svc/get_role_in_group

curl -X POST -d 'json={"GroupId":"@TGS#2C5SZEAEF","Members_Account":["peter","leckie"],"ShutUpTime":60}' ${HOST}/v4/group_open_http_svc/forbid_send_msg

curl -X POST -d 'json={"GroupId":"@TGS#1KGZ2RAEU"}' ${HOST}/v4/group_open_http_svc/get_group_shutted_uin

curl -X POST -d 'json={"GroupId":"@TGS#2C5SZEAEF","Random":8912345,"MsgBody":[{"MsgType":"TIMTextElem","MsgContent":{"Text":"red packet"}},{"MsgType":"TIMFaceElem","MsgContent":{"Index":6,"Data":"abc\\u0000\\u0001"}}],"OfflinePushInfo":{"PushFlag":0,"Desc":"离线推送内容","Ext":"这是透传的内容","AndroidInfo":{"Sound":"android.mp3"},"ApnsInfo":{"Sound":"apns.mp3","BadgeMode":1,"Title":"apns title","SubTitle":"apns subtitle","Image":"www.image.com"}}}' ${HOST}/v4/group_open_http_svc/send_group_msg

curl -X POST -d 'json={"GroupId":"@TGS#2C5SZEAEF","Content":"Hello World"}' ${HOST}/v4/group_open_http_svc/send_group_system_notification

curl -X POST -d 'json={"GroupId":"@TGS#1NVTZEAE4","NewOwner_Account":"peter"}' ${HOST}/v4/group_open_http_svc/change_group_owner

curl -X POST -d 'json={"Owner_Account":"leckie","Type":"Public","Name":"TestGroup","CreateTime":1448357837}' ${HOST}/v4/group_open_http_svc/import_group

curl -X POST -d 'json={"GroupId":"@TGS#2C5SZEAEF","MsgList":[{"From_Account":"leckie","SendTime":1448357837,"Random":8912345,"MsgBody":[{"MsgType":"TIMTextElem","MsgContent":{"Text":"red packet"}},{"MsgType":"TIMFaceElem","MsgContent":{"Index":6,"Data":"abc\\u0000\\u0001"}}]},{"From_Account":"peter","SendTime":1448357837,"MsgBody":[{"MsgType":"TIMTextElem","MsgContent":{"Text":"red packet"}}]}]}' ${HOST}/v4/group_open_http_svc/import_group_msg

curl -X POST -d 'json={"GroupId":"@TGS#2J4SZEAEL","MemberList":[{"Member_Account":"tommy","Role":"Admin","JoinTime":1448357837,"UnreadMsgNum":5},{"Member_Account":"jared","JoinTime":1448357857,"UnreadMsgNum":2}]}' ${HOST}/v4/group_open_http_svc/import_group_member

curl -X POST -d 'json={"GroupId":"@TGS#2CLUZEAEJ","Member_Account":"bob","UnreadMsgNum":5}' ${HOST}/v4/group_open_http_svc/set_unread_msg_num

curl -X POST -d 'json={"GroupId":"@TGS#2C5SZEAEF","Sender_Account":"leckie"}' ${HOST}/v4/group_open_http_svc/delete_group_msg_by_sender

curl -X POST -d 'json={"GroupId":"@TGS#15ERQPAER","ReqMsgNumber":2}' ${HOST}/v4/group_open_http_svc/group_msg_get_simple

curl -X POST -d 'json={"To_Account":["id1"],"TagList":["Tag_Profile_IM_Nick"]}' ${HOST}/v4/profile/portrait_get

curl -X POST -d 'json={"From_Account":"id","ProfileItem":[{"Tag":"Tag_Profile_IM_Nick","Value":"MyNickName"}]}' ${HOST}/v4/profile/portrait_set

curl -X POST -d 'json={"From_Account":"id","AddFriendItem":[{"To_Account":"id1","AddSource":"AddSource_Type_XXXXXXXX"}]}' ${HOST}/v4/sns/friend_add

curl -X POST -d 'json={"From_Account":"id","AddFriendItem":[{"To_Account":"id1","Remark":"remark1","RemarkTime":1420000001,"GroupName":["朋友"],"AddSource":"AddSource_Type_XXXXXXXX","AddWording":"I am Test1","AddTime":1420000001,"CustomItem":[{"Tag":"Tag_SNS_1300000000_XXXX","Value":"Test"},{"Tag":"Tag_SNS_1300000000_YYYY","Value":0}]}]}' ${HOST}/v4/sns/friend_import

curl -X POST -d 'json={"From_Account":"id","To_Account":["id1","id2","id3"],"DeleteType":"Delete_Type_Single"}' ${HOST}/v4/sns/friend_delete

curl -X POST -d 'json={"From_Account":"id"}' ${HOST}/v4/sns/friend_delete_all

curl -X POST -d 'json={"From_Account":"id","To_Account":["id1","id2","id3","id4"],"CheckType":"CheckResult_Type_Singal"}' ${HOST}/v4/sns/friend_check

curl -X POST -d 'json={"From_Account":"id","TimeStamp":0,"StartIndex":0,"TagList":["Tag_Profile_IM_Nick","Tag_SNS_IM_Group","Tag_SNS_IM_Remark"],"LastStandardSequence":0,"GetCount":100}' ${HOST}/v4/sns/friend_get_all

curl -X POST -d 'json={"From_Account":"id","To_Account":["id1"]}' ${HOST}/v4/sns/friend_get_list

curl -X POST -d 'json={"From_Account":"id","To_Account":["id1","id2","id3"]}' ${HOST}/v4/sns/black_list_add

curl -X POST -d 'json={"From_Account":"id","To_Account":["id1","id2","id3"]}' ${HOST}/v4/sns/black_list_delete

curl -X POST -d 'json={"From_Account":"id","StartIndex":0,"MaxLimited":30,"LastSequence":1431000000}' ${HOST}/v4/sns/black_list_get

curl -X POST -d 'json={"From_Account":"id","To_Account":["id1","id2","id3","id4"],"CheckType":"BlackCheckResult_Type_Both"}' ${HOST}/v4/sns/black_list_check

curl -X POST -d 'json={"From_Account":"id","GroupName":["group1","group2","group3"],"To_Account":["id1","id2","id3","id4"]}' ${HOST}/v4/sns/group_add

curl -X POST -d 'json={"From_Account":"id","GroupName":["group1","group2","group3"]}' ${HOST}/v4/sns/group_delete

curl -X POST -d 'json={}' ${HOST}/v4/openim_dirty_words/get

curl -X POST -d 'json={"DirtyWordsList":["韩国代购","发票"]}' ${HOST}/v4/openim_dirty_words/add

curl -X POST -d 'json={"DirtyWordsList":["韩国代购","发票"]}' ${HOST}/v4/openim_dirty_words/delete

curl -X POST -d 'json={"ChatType":"C2C","MsgTime":"2015120121"}' ${HOST}/v4/open_msg_svc/get_history

curl -X POST -d 'json={"To_Account":["test1","test2","test3"]}' ${HOST}/v4/openim/querystate

curl -X POST -d 'json={"Set_Account":"test","C2CmsgNospeakingTime":4294967295,"GroupmsgNospeakingTime":7200}' ${HOST}/v4/openconfigsvr/setnospeaking

curl -X POST -d 'json={"Get_Account":"test"}' ${HOST}/v4/openconfigsvr/getnospeaking

.class Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;
.super Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$JsonCallback;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->parseDeepLink(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

.field final synthetic val$requestDeepLinkStartTime:J


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->val$requestDeepLinkStartTime:J

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$JsonCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAfter()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->val$requestDeepLinkStartTime:J

    .line 6
    .line 7
    sub-long v9, v0, v2

    .line 8
    .line 9
    new-instance v1, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$200(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string v0, "$deeplink_options"

    .line 27
    .line 28
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$200(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$000(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    const-string v0, "$deeplink_match_fail_reason"

    .line 54
    .line 55
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$000(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$300(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    const-string v0, "$ad_slink_id"

    .line 77
    .line 78
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$300(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    :cond_2
    const-string v0, "$deeplink_url"

    .line 88
    .line 89
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/AbsDeepLink;->getDeepLinkUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string v0, "$event_duration"

    .line 99
    .line 100
    long-to-float v2, v9

    .line 101
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->duration(F)Ljava/lang/Float;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$400(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_3

    .line 119
    .line 120
    const-string v0, "$ad_slink_template_id"

    .line 121
    .line 122
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$400(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    :cond_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$500(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_4

    .line 142
    .line 143
    const-string v0, "$ad_slink_type"

    .line 144
    .line 145
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 146
    .line 147
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$500(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    :cond_4
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$600(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$600(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-lez v0, :cond_5

    .line 173
    .line 174
    const-string v0, "$sat_slink_custom_params"

    .line 175
    .line 176
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 177
    .line 178
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$600(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :goto_1
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    :goto_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getUtmProperties()Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 201
    .line 202
    iget-object v4, v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/AbsDeepLink;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;

    .line 203
    .line 204
    if-eqz v4, :cond_6

    .line 205
    .line 206
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$DeepLinkType;->SENSORSDATA:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$DeepLinkType;

    .line 207
    .line 208
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$200(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 213
    .line 214
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$600(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Lorg/json/JSONObject;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 219
    .line 220
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$100(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    invoke-interface/range {v4 .. v10}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;->onFinish(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$DeepLinkType;Ljava/lang/String;Lorg/json/JSONObject;ZJ)V

    .line 225
    .line 226
    .line 227
    :cond_6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1$1;

    .line 232
    .line 233
    invoke-direct {v2, p0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;Lorg/json/JSONObject;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$002(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$102(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Z)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$102(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Z)Z

    .line 3
    const-string v1, "channel_params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->json2Map(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->parseParams(Ljava/util/Map;)V

    .line 6
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    const-string v2, "page_params"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$202(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    const-string v2, "errorMsg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$002(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$000(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    const-string v2, "error_msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$002(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    const-string v2, "ad_slink_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$302(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    const-string v2, "slink_template_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$402(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    const-string v2, "slink_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$502(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    const-string v2, "custom_params"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$602(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 14
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$000(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$102(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Z)Z

    :cond_1
    return-void

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;->access$102(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;Z)Z

    return-void
.end method

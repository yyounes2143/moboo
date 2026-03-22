.class public final Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;",
        "",
        "<init>",
        "()V",
        "Lcom/changdu/mobovideo/localpush/LocalPushConfig;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcom/changdu/mobovideo/localpush/LocalPushConfig;",
        "config",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)V",
        "",
        "raw",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;)Lcom/changdu/mobovideo/localpush/LocalPushConfig;",
        "",
        "value",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(I)I",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLocalPushConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPushConfig.kt\ncom/changdu/mobovideo/localpush/LocalPushConfigProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,224:1\n1#2:225\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)V
    .locals 4
    .param p1    # Lcom/changdu/mobovideo/localpush/LocalPushConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "userZoneId"

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwww()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "frequencyGapSeconds"

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "signInCountDownSeconds"

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwww()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v1, "signInTriggerSecondOfDay"

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwww()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v1, "signInIntervalSeconds"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwww()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v1, "recallTriggerAtMs"

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwww()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v1, "recallIntervalSeconds"

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwww()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "promotionDelaySeconds"

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string v1, "promotionIntervalSeconds"

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwww()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v1, "dndStartSecondOfDay"

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    const-string v1, "dndEndSecondOfDay"

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string v1, "dndSignInStartSecondOfDay"

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    const-string v1, "dndSignInEndSecondOfDay"

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    const-string v1, "dndRecallStartSecondOfDay"

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string v1, "dndRecallEndSecondOfDay"

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    const-string v1, "dndPromotionStartSecondOfDay"

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string v1, "dndPromotionEndSecondOfDay"

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    const-string v1, "signInCollapsedRightImageUrl"

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwww()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    const-string v1, "recallCollapsedRightImageUrl"

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    const-string v1, "recallExpandedBgImageUrl"

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    const-string v1, "signInContentRule"

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwww()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    const-string v1, "recallContentRule"

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwww()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    .line 203
    .line 204
    const-string v1, "promotionContentRule"

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    const-string v1, "signInContentsJson"

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwww()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    const-string v1, "recallContentsJson"

    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    .line 230
    .line 231
    const-string v1, "promotionContentsJson"

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    .line 239
    .line 240
    sget-object p1, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStorage;

    .line 241
    .line 242
    const-string v1, "local_push_config_all_json"

    .line 243
    .line 244
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p1, v1, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .line 250
    .line 251
    :catchall_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/changdu/mobovideo/localpush/LocalPushConfig;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 4
    .line 5
    move-object/from16 v3, p1

    .line 6
    .line 7
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "dndStartSecondOfDay"

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const-string v5, "dndEndSecondOfDay"

    .line 22
    .line 23
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {v0, v5}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const-string v6, "frequencyGapSeconds"

    .line 32
    .line 33
    const-wide/16 v7, 0x708

    .line 34
    .line 35
    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    const-string v6, "signInCountDownSeconds"

    .line 40
    .line 41
    const-wide/16 v11, 0x3840

    .line 42
    .line 43
    invoke-virtual {v2, v6, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v13

    .line 47
    const-string v6, "userZoneId"

    .line 48
    .line 49
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v15

    .line 57
    if-eqz v15, :cond_0

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    :cond_0
    const-wide/16 v7, 0x0

    .line 61
    .line 62
    cmp-long v17, v9, v7

    .line 63
    .line 64
    if-ltz v17, :cond_1

    .line 65
    .line 66
    move-wide v15, v9

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-wide/16 v15, 0x708

    .line 69
    .line 70
    :goto_0
    cmp-long v9, v13, v7

    .line 71
    .line 72
    if-ltz v9, :cond_2

    .line 73
    .line 74
    move-wide v9, v13

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-wide v9, v11

    .line 77
    :goto_1
    sget-object v11, Lcom/changdu/mobovideo/localpush/LocalPushTime;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushTime;

    .line 78
    .line 79
    const-string v12, "signInTriggerSecondOfDay"

    .line 80
    .line 81
    invoke-virtual {v2, v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v11, v4}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    const-string v4, "signInIntervalSeconds"

    .line 90
    .line 91
    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v12

    .line 95
    const-string v4, "recallTriggerAtMs"

    .line 96
    .line 97
    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v17

    .line 101
    const-string v4, "recallIntervalSeconds"

    .line 102
    .line 103
    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v19

    .line 107
    const-string v4, "promotionDelaySeconds"

    .line 108
    .line 109
    const-wide/16 v7, 0x1e

    .line 110
    .line 111
    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    const-string v4, "promotionIntervalSeconds"

    .line 116
    .line 117
    move-object/from16 p1, v6

    .line 118
    .line 119
    move-wide/from16 v23, v7

    .line 120
    .line 121
    const-wide/16 v6, 0x0

    .line 122
    .line 123
    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    const-string v4, "dndSignInStartSecondOfDay"

    .line 128
    .line 129
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {v0, v4}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    const-string v8, "dndSignInEndSecondOfDay"

    .line 138
    .line 139
    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    invoke-virtual {v0, v8}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 144
    .line 145
    .line 146
    move-result v25

    .line 147
    const-string v8, "dndRecallStartSecondOfDay"

    .line 148
    .line 149
    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    invoke-virtual {v0, v8}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 154
    .line 155
    .line 156
    move-result v26

    .line 157
    const-string v8, "dndRecallEndSecondOfDay"

    .line 158
    .line 159
    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    invoke-virtual {v0, v8}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 164
    .line 165
    .line 166
    move-result v27

    .line 167
    const-string v8, "dndPromotionStartSecondOfDay"

    .line 168
    .line 169
    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    invoke-virtual {v0, v8}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 174
    .line 175
    .line 176
    move-result v28

    .line 177
    const-string v8, "dndPromotionEndSecondOfDay"

    .line 178
    .line 179
    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    invoke-virtual {v0, v8}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 184
    .line 185
    .line 186
    move-result v29

    .line 187
    const-string v8, "signInCollapsedRightImageUrl"

    .line 188
    .line 189
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    if-eqz v14, :cond_3

    .line 198
    .line 199
    const/16 v30, 0x0

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_3
    move-object/from16 v30, v8

    .line 203
    .line 204
    :goto_2
    const-string v8, "recallCollapsedRightImageUrl"

    .line 205
    .line 206
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    if-eqz v14, :cond_4

    .line 215
    .line 216
    const/16 v31, 0x0

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_4
    move-object/from16 v31, v8

    .line 220
    .line 221
    :goto_3
    const-string v8, "recallExpandedBgImageUrl"

    .line 222
    .line 223
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    if-eqz v14, :cond_5

    .line 232
    .line 233
    const/16 v32, 0x0

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_5
    move-object/from16 v32, v8

    .line 237
    .line 238
    :goto_4
    sget-object v8, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushContentRule;

    .line 239
    .line 240
    const-string v14, "signInContentRule"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .line 242
    const/16 v39, 0x0

    .line 243
    .line 244
    const/4 v1, 0x2

    .line 245
    :try_start_1
    invoke-virtual {v2, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    invoke-virtual {v8, v14}, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 250
    .line 251
    .line 252
    move-result v33

    .line 253
    const-string v14, "recallContentRule"

    .line 254
    .line 255
    invoke-virtual {v2, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    invoke-virtual {v8, v14}, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 260
    .line 261
    .line 262
    move-result v34

    .line 263
    const-string v14, "promotionContentRule"

    .line 264
    .line 265
    invoke-virtual {v2, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-virtual {v8, v1}, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 270
    .line 271
    .line 272
    move-result v35

    .line 273
    const-string v1, "signInContentsJson"

    .line 274
    .line 275
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-eqz v8, :cond_6

    .line 284
    .line 285
    move-object/from16 v36, v39

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_6
    move-object/from16 v36, v1

    .line 289
    .line 290
    :goto_5
    const-string v1, "recallContentsJson"

    .line 291
    .line 292
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    if-eqz v8, :cond_7

    .line 301
    .line 302
    move-object/from16 v37, v39

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_7
    move-object/from16 v37, v1

    .line 306
    .line 307
    :goto_6
    const-string v1, "promotionContentsJson"

    .line 308
    .line 309
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_8

    .line 318
    .line 319
    move-object/from16 v38, v39

    .line 320
    .line 321
    :goto_7
    move-wide/from16 v40, v19

    .line 322
    .line 323
    move-wide/from16 v20, v6

    .line 324
    .line 325
    move-wide v7, v15

    .line 326
    move-wide/from16 v14, v17

    .line 327
    .line 328
    move-wide/from16 v16, v40

    .line 329
    .line 330
    move-wide/from16 v18, v23

    .line 331
    .line 332
    move/from16 v23, v5

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_8
    move-object/from16 v38, v1

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :goto_8
    new-instance v5, Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 339
    .line 340
    move-object/from16 v6, p1

    .line 341
    .line 342
    move/from16 v22, v3

    .line 343
    .line 344
    move/from16 v24, v4

    .line 345
    .line 346
    invoke-direct/range {v5 .. v38}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;-><init>(Ljava/lang/String;JJIJJJJJIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 347
    .line 348
    .line 349
    return-object v5

    .line 350
    :catchall_0
    const/16 v39, 0x0

    .line 351
    .line 352
    :catchall_1
    return-object v39
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const v0, 0x15180

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :cond_1
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStorage;

    .line 2
    .line 3
    const-string v1, "local_push_config_all_json"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_2

    .line 11
    .line 12
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v3}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;
    .locals 34

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 2
    .line 3
    const/16 v32, 0x0

    .line 4
    .line 5
    const/16 v33, 0x0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x708

    .line 9
    .line 10
    const-wide/16 v4, 0x3840

    .line 11
    .line 12
    const/4 v6, -0x1

    .line 13
    const-wide/16 v7, 0x0

    .line 14
    .line 15
    const-wide/16 v9, 0x0

    .line 16
    .line 17
    const-wide/16 v11, 0x0

    .line 18
    .line 19
    const-wide/16 v13, 0x1e

    .line 20
    .line 21
    const-wide/16 v15, 0x0

    .line 22
    .line 23
    const/16 v17, -0x1

    .line 24
    .line 25
    const/16 v18, -0x1

    .line 26
    .line 27
    const/16 v19, -0x1

    .line 28
    .line 29
    const/16 v20, -0x1

    .line 30
    .line 31
    const/16 v21, -0x1

    .line 32
    .line 33
    const/16 v22, -0x1

    .line 34
    .line 35
    const/16 v23, -0x1

    .line 36
    .line 37
    const/16 v24, -0x1

    .line 38
    .line 39
    const/16 v25, 0x0

    .line 40
    .line 41
    const/16 v26, 0x0

    .line 42
    .line 43
    const/16 v27, 0x0

    .line 44
    .line 45
    const/16 v28, 0x2

    .line 46
    .line 47
    const/16 v29, 0x2

    .line 48
    .line 49
    const/16 v30, 0x2

    .line 50
    .line 51
    const/16 v31, 0x0

    .line 52
    .line 53
    invoke-direct/range {v0 .. v33}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;-><init>(Ljava/lang/String;JJIJJJJJIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

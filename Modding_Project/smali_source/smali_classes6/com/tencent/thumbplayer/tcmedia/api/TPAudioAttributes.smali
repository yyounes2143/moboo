.class public Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeStreamType;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeFlag;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeUsage;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeContentType;,
        Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$Builder;
    }
.end annotation


# static fields
.field public static final TP_CONTENT_MOVIE:I = 0x3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeContentType;
        value = 0x3
    .end annotation
.end field

.field public static final TP_CONTENT_MUSIC:I = 0x2
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeContentType;
        value = 0x2
    .end annotation
.end field

.field public static final TP_CONTENT_SONIFICATION:I = 0x4
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeContentType;
        value = 0x4
    .end annotation
.end field

.field public static final TP_CONTENT_SPEECH:I = 0x1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeContentType;
        value = 0x1
    .end annotation
.end field

.field public static final TP_CONTENT_UNKNOWN:I = 0x0
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeContentType;
        value = 0x0
    .end annotation
.end field

.field public static final TP_FLAG_AUDIBILITY_ENFORCED:I = 0x1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeFlag;
        value = 0x1
    .end annotation
.end field

.field public static final TP_FLAG_HW_AV_SYNC:I = 0x10
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeFlag;
        value = 0x10
    .end annotation
.end field

.field public static final TP_FLAG_LOW_LATENCY:I = 0x100
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeFlag;
        value = 0x100
    .end annotation
.end field

.field private static final TP_FLAG_PUBLIC:I = 0x111

.field public static final TP_FLAG_UNKNOWN:I = 0x0
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeFlag;
        value = 0x0
    .end annotation
.end field

.field public static final TP_STREAM_ALARM:I = 0x4
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeStreamType;
        value = 0x4
    .end annotation
.end field

.field public static final TP_STREAM_DTMF:I = 0x8
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeStreamType;
        value = 0x8
    .end annotation
.end field

.field public static final TP_STREAM_MUSIC:I = 0x3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeStreamType;
        value = 0x3
    .end annotation
.end field

.field public static final TP_STREAM_NOTIFICATION:I = 0x5
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeStreamType;
        value = 0x5
    .end annotation
.end field

.field public static final TP_STREAM_RING:I = 0x2
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeStreamType;
        value = 0x2
    .end annotation
.end field

.field public static final TP_STREAM_SYSTEM:I = 0x1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeStreamType;
        value = 0x1
    .end annotation
.end field

.field public static final TP_STREAM_UNKNOWN:I = -0x1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeStreamType;
        value = -0x1
    .end annotation
.end field

.field public static final TP_STREAM_VOICE_CALL:I = 0x0
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeStreamType;
        value = 0x0
    .end annotation
.end field

.field public static final TP_USAGE_ALARM:I = 0x4
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x4
    .end annotation
.end field

.field public static final TP_USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0xb
    .end annotation
.end field

.field public static final TP_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0xc
    .end annotation
.end field

.field public static final TP_USAGE_ASSISTANCE_SONIFICATION:I = 0xd
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0xd
    .end annotation
.end field

.field public static final TP_USAGE_ASSISTANT:I = 0x10
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x10
    .end annotation
.end field

.field public static final TP_USAGE_GAME:I = 0xe
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0xe
    .end annotation
.end field

.field public static final TP_USAGE_MEDIA:I = 0x1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x1
    .end annotation
.end field

.field public static final TP_USAGE_NOTIFICATION:I = 0x5
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x5
    .end annotation
.end field

.field public static final TP_USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x9
    .end annotation
.end field

.field public static final TP_USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x8
    .end annotation
.end field

.field public static final TP_USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x7
    .end annotation
.end field

.field public static final TP_USAGE_NOTIFICATION_EVENT:I = 0xa
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0xa
    .end annotation
.end field

.field public static final TP_USAGE_NOTIFICATION_RINGTONE:I = 0x6
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x6
    .end annotation
.end field

.field public static final TP_USAGE_UNKNOWN:I = 0x0
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x0
    .end annotation
.end field

.field public static final TP_USAGE_VOICE_COMMUNICATION:I = 0x2
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x2
    .end annotation
.end field

.field public static final TP_USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapTPAudioAttributeUsage;
        value = 0x3
    .end annotation
.end field

.field private static final mMapContentTypeToAndroidMediaContentType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMapContentTypeToString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMapUsageToAndroidMediaStreamType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMapUsageToAndroidMediaUsage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMapUsageToString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapContentTypeToString:Ljava/util/HashMap;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "TP_CONTENT_UNKNOWN"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "TP_CONTENT_SPEECH"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "TP_CONTENT_MUSIC"

    .line 34
    .line 35
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "TP_CONTENT_MOVIE"

    .line 44
    .line 45
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 v5, 0x4

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v6, "TP_CONTENT_SONIFICATION"

    .line 54
    .line 55
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapContentTypeToAndroidMediaContentType:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance v0, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapUsageToString:Ljava/util/HashMap;

    .line 86
    .line 87
    const-string v6, "TP_USAGE_UNKNOWN"

    .line 88
    .line 89
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v6, "TP_USAGE_MEDIA"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string v6, "TP_USAGE_VOICE_COMMUNICATION"

    .line 98
    .line 99
    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string v6, "TP_USAGE_VOICE_COMMUNICATION_SIGNALLING"

    .line 103
    .line 104
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const-string v6, "TP_USAGE_ALARM"

    .line 108
    .line 109
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const/4 v6, 0x5

    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const-string v7, "TP_USAGE_NOTIFICATION"

    .line 118
    .line 119
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const/4 v7, 0x6

    .line 123
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    const-string v8, "TP_USAGE_NOTIFICATION_RINGTONE"

    .line 128
    .line 129
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const/4 v8, 0x7

    .line 133
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    const-string v9, "TP_USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    .line 138
    .line 139
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    const/16 v9, 0x8

    .line 143
    .line 144
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    const-string v10, "TP_USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    .line 149
    .line 150
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const/16 v10, 0x9

    .line 154
    .line 155
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    const-string v11, "TP_USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    .line 160
    .line 161
    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    const/16 v11, 0xa

    .line 165
    .line 166
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    const-string v12, "TP_USAGE_NOTIFICATION_EVENT"

    .line 171
    .line 172
    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const/16 v12, 0xb

    .line 176
    .line 177
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    const-string v14, "TP_USAGE_ASSISTANCE_ACCESSIBILITY"

    .line 182
    .line 183
    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const/16 v13, 0xc

    .line 187
    .line 188
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    const-string v14, "TP_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    .line 193
    .line 194
    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const/16 v14, 0xd

    .line 198
    .line 199
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    const-string v15, "TP_USAGE_ASSISTANCE_SONIFICATION"

    .line 204
    .line 205
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const/16 v15, 0xe

    .line 209
    .line 210
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    move/from16 v16, v12

    .line 215
    .line 216
    const-string v12, "TP_USAGE_GAME"

    .line 217
    .line 218
    invoke-virtual {v0, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    const/16 v12, 0x10

    .line 222
    .line 223
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    move-object/from16 v17, v15

    .line 228
    .line 229
    const-string v15, "TP_USAGE_ASSISTANT"

    .line 230
    .line 231
    invoke-virtual {v0, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    new-instance v0, Ljava/util/HashMap;

    .line 235
    .line 236
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .line 238
    .line 239
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapUsageToAndroidMediaUsage:Ljava/util/HashMap;

    .line 240
    .line 241
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v10, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    move-object/from16 v18, v11

    .line 279
    .line 280
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    invoke-virtual {v0, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v13, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v14, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-object/from16 v11, v17

    .line 294
    .line 295
    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v12, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    new-instance v0, Ljava/util/HashMap;

    .line 302
    .line 303
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    .line 305
    .line 306
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapUsageToAndroidMediaStreamType:Ljava/util/HashMap;

    .line 307
    .line 308
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-object/from16 v1, v18

    .line 339
    .line 340
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mUsage:I

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mContentType:I

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mContentType:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$202(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mUsage:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$302(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mFlags:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapUsageToString:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapContentTypeToString:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method private static contentTypeToAndroidMediaContentType(I)I
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeContentType;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapContentTypeToAndroidMediaContentType:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public static contentTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeContentType;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapContentTypeToString:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string v0, "unknown content type"

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private static flagsToAndroidMediaFlags(I)I
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    and-int/lit8 v1, p0, 0x10

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    or-int/lit8 v0, v0, 0x10

    .line 13
    .line 14
    :cond_1
    and-int/lit16 p0, p0, 0x100

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    or-int/lit16 p0, v0, 0x100

    .line 19
    .line 20
    return p0

    .line 21
    :cond_2
    return v0
.end method

.method public static usageToAndroidMediaStreamType(I)I
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeUsage;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapUsageToAndroidMediaStreamType:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x3

    .line 29
    return p0
.end method

.method private static usageToAndroidMediaUsage(I)I
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeUsage;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapUsageToAndroidMediaUsage:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public static usageToString(I)Ljava/lang/String;
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeUsage;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mMapUsageToString:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string v0, "unknown usage "

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public getContentType()I
    .locals 1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeContentType;
    .end annotation

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mContentType:I

    .line 2
    .line 3
    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x111

    .line 4
    .line 5
    return v0
.end method

.method public getUsage()I
    .locals 1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes$TPAudioAttributeUsage;
    .end annotation

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mUsage:I

    .line 2
    .line 3
    return v0
.end method

.method public toAndroidMediaAudioAttributes()Landroid/media/AudioAttributes;
    .locals 4

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mUsage:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->usageToAndroidMediaUsage(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mContentType:I

    .line 8
    .line 9
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->contentTypeToAndroidMediaContentType(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mFlags:I

    .line 14
    .line 15
    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->flagsToAndroidMediaFlags(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AudioAttributes: usage="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mUsage:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->usageToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " content="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mContentType:I

    .line 23
    .line 24
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->contentTypeToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " flags=0x"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioAttributes;->mFlags:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

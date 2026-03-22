.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeStreamType;,
        Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeFlag;,
        Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeUsage;,
        Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeContentType;,
        Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$Builder;
    }
.end annotation


# static fields
.field public static final TP_NATIVE_CONTENT_MOVIE:I = 0x3

.field public static final TP_NATIVE_CONTENT_MUSIC:I = 0x2

.field public static final TP_NATIVE_CONTENT_SONIFICATION:I = 0x4

.field public static final TP_NATIVE_CONTENT_SPEECH:I = 0x1

.field public static final TP_NATIVE_CONTENT_UNKNOWN:I = 0x0

.field public static final TP_NATIVE_FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final TP_NATIVE_FLAG_HW_AV_SYNC:I = 0x10

.field public static final TP_NATIVE_FLAG_LOW_LATENCY:I = 0x100

.field private static final TP_NATIVE_FLAG_PUBLIC:I = 0x111

.field public static final TP_NATIVE_FLAG_UNKNOWN:I = 0x0

.field public static final TP_NATIVE_STREAM_ALARM:I = 0x4

.field public static final TP_NATIVE_STREAM_DTMF:I = 0x8

.field public static final TP_NATIVE_STREAM_MUSIC:I = 0x3

.field public static final TP_NATIVE_STREAM_NOTIFICATION:I = 0x5

.field public static final TP_NATIVE_STREAM_RING:I = 0x2

.field public static final TP_NATIVE_STREAM_SYSTEM:I = 0x1

.field public static final TP_NATIVE_STREAM_UNKNOWN:I = -0x1

.field public static final TP_NATIVE_STREAM_VOICE_CALL:I = 0x0

.field public static final TP_NATIVE_USAGE_ALARM:I = 0x4

.field public static final TP_NATIVE_USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final TP_NATIVE_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final TP_NATIVE_USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final TP_NATIVE_USAGE_ASSISTANT:I = 0x10

.field public static final TP_NATIVE_USAGE_GAME:I = 0xe

.field public static final TP_NATIVE_USAGE_MEDIA:I = 0x1

.field public static final TP_NATIVE_USAGE_NOTIFICATION:I = 0x5

.field public static final TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final TP_NATIVE_USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final TP_NATIVE_USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final TP_NATIVE_USAGE_UNKNOWN:I = 0x0

.field public static final TP_NATIVE_USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final TP_NATIVE_USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

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
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mMapContentTypeToString:Ljava/util/HashMap;

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
    const-string v2, "TP_NATIVE_CONTENT_UNKNOWN"

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
    const-string v3, "TP_NATIVE_CONTENT_SPEECH"

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
    const-string v4, "TP_NATIVE_CONTENT_MUSIC"

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
    const-string v5, "TP_NATIVE_CONTENT_MOVIE"

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
    const-string v6, "TP_NATIVE_CONTENT_SONIFICATION"

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
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mMapUsageToString:Ljava/util/HashMap;

    .line 64
    .line 65
    const-string v6, "TP_NATIVE_USAGE_UNKNOWN"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string v1, "TP_NATIVE_USAGE_MEDIA"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const-string v1, "TP_NATIVE_USAGE_VOICE_COMMUNICATION"

    .line 76
    .line 77
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const-string v1, "TP_NATIVE_USAGE_VOICE_COMMUNICATION_SIGNALLING"

    .line 81
    .line 82
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v1, "TP_NATIVE_USAGE_ALARM"

    .line 86
    .line 87
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const/4 v1, 0x5

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "TP_NATIVE_USAGE_NOTIFICATION"

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const/4 v1, 0x6

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "TP_NATIVE_USAGE_NOTIFICATION_RINGTONE"

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const/4 v1, 0x7

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x8

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    const/16 v1, 0x9

    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v2, "TP_NATIVE_USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    const/16 v1, 0xa

    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-string v2, "TP_NATIVE_USAGE_NOTIFICATION_EVENT"

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const/16 v1, 0xb

    .line 154
    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "TP_NATIVE_USAGE_ASSISTANCE_ACCESSIBILITY"

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    const/16 v1, 0xc

    .line 165
    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v2, "TP_NATIVE_USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    .line 171
    .line 172
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const/16 v1, 0xd

    .line 176
    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const-string v2, "TP_NATIVE_USAGE_ASSISTANCE_SONIFICATION"

    .line 182
    .line 183
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const/16 v1, 0xe

    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string v2, "TP_NATIVE_USAGE_GAME"

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const/16 v1, 0x10

    .line 198
    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const-string v2, "TP_NATIVE_USAGE_ASSISTANT"

    .line 204
    .line 205
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mUsage:I

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mContentType:I

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mContentType:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$202(Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mUsage:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$302(Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mFlags:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mMapUsageToString:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mMapContentTypeToString:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static contentTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeContentType;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mMapContentTypeToString:Ljava/util/HashMap;

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

.method public static usageToString(I)Ljava/lang/String;
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeUsage;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mMapUsageToString:Ljava/util/HashMap;

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
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeContentType;
    .end annotation

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mContentType:I

    .line 2
    .line 3
    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x111

    .line 4
    .line 5
    return v0
.end method

.method public getUsage()I
    .locals 1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes$TPNativeAudioAttributeUsage;
    .end annotation

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mUsage:I

    .line 2
    .line 3
    return v0
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
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mUsage:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->usageToString(I)Ljava/lang/String;

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
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mContentType:I

    .line 23
    .line 24
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->contentTypeToString(I)Ljava/lang/String;

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
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeAudioAttributes;->mFlags:I

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

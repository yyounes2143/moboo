.class public final Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_BITRATE:I = 0xea600

.field private static final DEFAULT_MAX_CHANNELNUM:I = 0x2

.field private static final DEFAULT_MAX_HEIGHT:I = 0x2d0

.field private static final DEFAULT_MAX_SAMPLERATE:I = 0xbb80

.field private static final DEFAULT_MAX_WIDTH:I = 0x500

.field private static final DEFAULT_MIN_BITRATE:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "TPCodecUtils"

.field private static final mAudioDecoderWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVideoSoftwareDecoderWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adaptiveDec:Z

.field private colorFormats:[I

.field private decMimeType:Ljava/lang/String;

.field private decName:Ljava/lang/String;

.field private maxBitRate:I

.field private maxChannels:I

.field private maxFrameRate:I

.field private maxHeight:I

.field private maxLumaFrameRate:I

.field private maxLumaHeight:I

.field private maxLumaWidth:I

.field private maxSampleRate:I

.field private maxSupportedInstances:I

.field private maxWidth:I

.field private profileLevels:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

.field private secureDec:Z

.field private softwareAudioDec:Z

.field private softwareVideoDec:Z

.field private tunnelingDec:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->mVideoSoftwareDecoderWhiteList:Ljava/util/ArrayList;

    .line 7
    .line 8
    const-string v1, "c2.android.vp9.decoder"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    const-string v1, "OMX.google.vp9.decoder"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const-string v1, "c2.android.vp8.decoder"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const-string v1, "OMX.google.vp8.decoder"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-string v1, "c2.android.av1.decoder"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->mAudioDecoderWhiteList:Ljava/util/ArrayList;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->reset()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decMimeType:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isVideo()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isVideoSoftwareOnly(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v2

    .line 28
    :goto_0
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->softwareVideoDec:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isAudio()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isAudioSoftwareOnly(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    move p2, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move p2, v2

    .line 45
    :goto_1
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->softwareAudioDec:Z

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, p3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    move p2, v1

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move p2, v2

    .line 58
    :goto_2
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->adaptiveDec:Z

    .line 59
    .line 60
    if-eqz p3, :cond_3

    .line 61
    .line 62
    invoke-direct {p0, p3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    move p2, v1

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move p2, v2

    .line 71
    :goto_3
    iput-boolean p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->tunnelingDec:Z

    .line 72
    .line 73
    if-eqz p3, :cond_4

    .line 74
    .line 75
    invoke-direct {p0, p3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move v1, v2

    .line 83
    :goto_4
    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->secureDec:Z

    .line 84
    .line 85
    if-eqz p3, :cond_6

    .line 86
    .line 87
    iget-object p2, p3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 88
    .line 89
    if-eqz p2, :cond_6

    .line 90
    .line 91
    array-length p2, p2

    .line 92
    if-lez p2, :cond_6

    .line 93
    .line 94
    new-instance p2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v0, p3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 100
    .line 101
    array-length v1, v0

    .line 102
    move v3, v2

    .line 103
    :goto_5
    if-ge v3, v1, :cond_5

    .line 104
    .line 105
    aget-object v4, v0, v3

    .line 106
    .line 107
    new-instance v5, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 108
    .line 109
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 110
    .line 111
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 112
    .line 113
    invoke-direct {v5, p0, v6, v4}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    new-array v0, v0, [Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 127
    .line 128
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, [Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 133
    .line 134
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->profileLevels:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_6
    new-array p2, v2, [Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 138
    .line 139
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->profileLevels:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 140
    .line 141
    :goto_6
    if-eqz p3, :cond_7

    .line 142
    .line 143
    iget-object p2, p3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 144
    .line 145
    if-eqz p2, :cond_7

    .line 146
    .line 147
    array-length v0, p2

    .line 148
    if-lez v0, :cond_7

    .line 149
    .line 150
    array-length v0, p2

    .line 151
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->colorFormats:[I

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_7
    new-array p2, v2, [I

    .line 159
    .line 160
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->colorFormats:[I

    .line 161
    .line 162
    :goto_7
    invoke-direct {p0, p3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->getMaxSupportedInstances(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxSupportedInstances:I

    .line 167
    .line 168
    const-string p2, "video"

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_8

    .line 175
    .line 176
    if-eqz p3, :cond_8

    .line 177
    .line 178
    invoke-virtual {p3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_9

    .line 183
    .line 184
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->getMaxWidth(Landroid/media/MediaCodecInfo$VideoCapabilities;)I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxWidth:I

    .line 189
    .line 190
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->getMaxHeight(Landroid/media/MediaCodecInfo$VideoCapabilities;)I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxHeight:I

    .line 195
    .line 196
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->getMaxSupportedFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;)I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxLumaFrameRate:I

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRates()Landroid/util/Range;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxFrameRate:I

    .line 217
    .line 218
    return-void

    .line 219
    :cond_8
    const-string p2, "audio"

    .line 220
    .line 221
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_9

    .line 226
    .line 227
    if-eqz p3, :cond_9

    .line 228
    .line 229
    invoke-virtual {p3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    if-eqz p1, :cond_9

    .line 234
    .line 235
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->getMaxSampleRate(Landroid/media/MediaCodecInfo$AudioCapabilities;)I

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxSampleRate:I

    .line 240
    .line 241
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->getMaxBitRate(Landroid/media/MediaCodecInfo$AudioCapabilities;)I

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxBitRate:I

    .line 246
    .line 247
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->getMaxChannels(Landroid/media/MediaCodecInfo$AudioCapabilities;)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxChannels:I

    .line 252
    .line 253
    :cond_9
    return-void
.end method

.method private getMaxBitRate(Landroid/media/MediaCodecInfo$AudioCapabilities;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getBitrateRange()Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Landroid/util/Range;

    .line 9
    .line 10
    const/16 v0, 0x1f40

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0xea600

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p1, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method private getMaxChannels(Landroid/media/MediaCodecInfo$AudioCapabilities;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, 0x2

    .line 9
    return p1
.end method

.method private getMaxHeight(Landroid/media/MediaCodecInfo$VideoCapabilities;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Landroid/util/Range;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x2d0

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p1, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method private getMaxSampleRate(Landroid/media/MediaCodecInfo$AudioCapabilities;)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getSupportedSampleRateRanges()[Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    array-length v0, p1

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    aget-object p1, p1, v0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    const p1, 0xbb80

    .line 31
    .line 32
    .line 33
    return p1
.end method

.method private final getMaxSupportedFrameRate(Landroid/media/MediaCodecInfo$VideoCapabilities;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x1e

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxHeight:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidthsFor(I)Landroid/util/Range;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxLumaWidth:I

    .line 23
    .line 24
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxWidth:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeightsFor(I)Landroid/util/Range;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxLumaHeight:I

    .line 41
    .line 42
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxWidth:I

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/Double;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method private getMaxSupportedInstances(Landroid/media/MediaCodecInfo$CodecCapabilities;)I
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private getMaxWidth(Landroid/media/MediaCodecInfo$VideoCapabilities;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Landroid/util/Range;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x500

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p1, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method private isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 1
    const-string v0, "adaptive-playback"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method private isAudioSoftwareOnly(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    const-string v0, "omx.google."

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    const-string v0, "c2.android."

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, "c2.google."

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method private isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 1
    const-string v0, "secure-playback"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method private isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 1
    const-string v0, "tunneled-playback"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method private isVideoSoftwareOnly(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    const-string v0, "omx.google."

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_4

    .line 17
    .line 18
    const-string v0, "omx.ffmpeg."

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    const-string v0, "omx.sec."

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, ".sw."

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    :cond_1
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    const-string v0, "omx.qti.video.decoder"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    const-string v0, "sw"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    :cond_2
    const-string v0, "c2.android."

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    const-string v0, "c2.google."

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 p1, 0x0

    .line 84
    return p1

    .line 85
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 86
    return p1
.end method

.method private reset()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decMimeType:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->softwareVideoDec:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->adaptiveDec:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->tunnelingDec:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->secureDec:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->profileLevels:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->colorFormats:[I

    .line 20
    .line 21
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxSupportedInstances:I

    .line 22
    .line 23
    const/16 v0, 0x1e

    .line 24
    .line 25
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxLumaFrameRate:I

    .line 26
    .line 27
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxFrameRate:I

    .line 28
    .line 29
    const/16 v0, 0x500

    .line 30
    .line 31
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxWidth:I

    .line 32
    .line 33
    const/16 v1, 0x2d0

    .line 34
    .line 35
    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxHeight:I

    .line 36
    .line 37
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxLumaWidth:I

    .line 38
    .line 39
    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxLumaHeight:I

    .line 40
    .line 41
    const v0, 0xbb80

    .line 42
    .line 43
    .line 44
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxSampleRate:I

    .line 45
    .line 46
    const v0, 0xea600

    .line 47
    .line 48
    .line 49
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxBitRate:I

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxChannels:I

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final getColorFormats()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->colorFormats:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDecoderLumaHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxLumaHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDecoderLumaWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxLumaWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDecoderMaxFrameRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxFrameRate:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDecoderMaxFrameRateForMaxLuma()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxLumaFrameRate:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDecoderMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDecoderMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDecoderMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decMimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDecoderName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxAudioBitRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxBitRate:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxAudioChannels()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxChannels:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxAudioSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxSampleRate:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxProfileLevel()Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;
    .locals 7

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;II)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->profileLevels:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    move v4, v1

    .line 11
    :goto_0
    if-ge v1, v3, :cond_1

    .line 12
    .line 13
    aget-object v5, v2, v1

    .line 14
    .line 15
    iget v6, v5, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;->level:I

    .line 16
    .line 17
    if-lt v6, v4, :cond_0

    .line 18
    .line 19
    move-object v0, v5

    .line 20
    move v4, v6

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v0
.end method

.method public final getMaxSupportedInstances()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->maxSupportedInstances:I

    return v0
.end method

.method public final getProfileLevels()[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->profileLevels:[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo$DecoderProfileLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isAudio()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decMimeType:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const-string v1, "audio/"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isAudioSofwareDecoder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->softwareAudioDec:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSecureDecoder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->secureDec:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isValidDecoder()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isVideo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->softwareVideoDec:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->mVideoSoftwareDecoderWhiteList:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v2

    .line 25
    :cond_1
    :goto_0
    return v1

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->isAudio()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->softwareAudioDec:Z

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->mAudioDecoderWhiteList:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    return v2

    .line 48
    :cond_4
    :goto_1
    return v1

    .line 49
    :cond_5
    return v2
.end method

.method public final isVideo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->decMimeType:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const-string v1, "video/"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final isVideoSofwareDecoder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaDecoderInfo;->softwareVideoDec:Z

    .line 2
    .line 3
    return v0
.end method

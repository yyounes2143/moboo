.class public Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;
.super Ljava/lang/Object;


# static fields
.field public static final BOOL_ENABLE_ACCURATE_DURATION:I = 0x83

.field public static final BOOL_ENABLE_ASYNC_MEDIA_CODEC:I = 0xce

.field public static final BOOL_ENABLE_AUDIO_FRAME_CALLBACK:I = 0x192

.field public static final BOOL_ENABLE_AUDIO_PASSTHROUGH:I = 0xd2

.field public static final BOOL_ENABLE_AUDIO_RENDERER_LATENCY_COMPENSATION:I = 0x191

.field public static final BOOL_ENABLE_AV_SYNC:I = 0x190

.field public static final BOOL_ENABLE_COLOR_MANAGEMENT:I = 0x197

.field public static final BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE:I = 0x196

.field public static final BOOL_ENABLE_FFMPEG_LIVE_HLS_FIRST_SEGMENT_DISCONTINUITY_FIX:I = 0x8f

.field public static final BOOL_ENABLE_HEVC_OPTIMIZATION:I = 0x73

.field public static final BOOL_ENABLE_HLS_AV_SEPARATE_TIMESTAMP_CALCULATOR_FIX_LOGIC:I = 0x88

.field public static final BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS:I = 0x85

.field public static final BOOL_ENABLE_MEDIACODEC_OUTPUT_DATA:I = 0xb7

.field public static final BOOL_ENABLE_MEDIA_CODEC_REUSE:I = 0xd5

.field public static final BOOL_ENABLE_MEDIA_CODEC_SET_OPERATE_RATE:I = 0xd4

.field public static final BOOL_ENABLE_MULTI_RECEIVE_FRAMES:I = 0xd1

.field public static final BOOL_ENABLE_NATIVE_MEDIA_CODEC:I = 0xcc

.field public static final BOOL_ENABLE_NEW_DRM_CLIENT:I = 0x84

.field public static final BOOL_ENABLE_ORIGINAL_VIDEO_INFO_CALLBACK_FROM_SURFACE_LISTENER:I = 0x82

.field public static final BOOL_ENABLE_PREMIUM:I = 0xb6

.field public static final BOOL_ENABLE_REFACTOR_RENDER:I = 0x1bc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOOL_ENABLE_SET_OUTPUT_SURFACE_API:I = 0xcd

.field public static final BOOL_ENABLE_VIDEO_DROP_NON_REFERENCE:I = 0xd8

.field public static final BOOL_ENABLE_VIDEO_FRAME_CALLBACK:I = 0x193

.field public static final BOOL_HLS_HTTP_KEEP_ALIVE:I = 0x6e

.field public static final BOOL_HLS_SWITCH_BY_SEGMENT:I = 0x6f

.field public static final BOOL_KEEP_ORIGINAL_PTS:I = 0x70

.field public static final BOOL_RELEASE_MEDIA_CODEC_WHEN_SET_SURFACE:I = 0xd3

.field public static final BOOL_RESET_DECODER_ON_PARAMETER_CHANGE:I = 0xc9

.field public static final BOOL_START_PLAYING_TIME_ACCURATE_SEEK:I = 0x65

.field public static final BOOL_VIDEO_DISABLE_MEDIA_CODEC_DOLBY_VISION_COMPONENT:I = 0xdb

.field public static final BOOL_VIDEO_KEEP_MEDIA_CODEC_PTS:I = 0xd7

.field public static final FLOAT_REDUCE_LATENCY_SPEED_UP_RATE:I = 0x78

.field public static final FLOAT_VIDEO_DROP_FRAME_DETECT_MIN_RATE:I = 0xd0

.field public static final INT_AUDIO_AVSYNC_STRATEGY:I = 0x1a3

.field public static final INT_AUDIO_DECODE_THREAD_PRIORITY:I = 0xda

.field public static final INT_AUDIO_RENDERER_TYPE:I = 0x194

.field public static final INT_AUDIO_RENDER_THREAD_PRIORITY:I = 0x19d

.field public static final INT_BUFFER_STRATEGY:I = 0x7d

.field public static final INT_DECODER_MAX_TOLERATED_ERROR_COUNT:I = 0xc8

.field public static final INT_DEMUX_THREAD_PRIORITY:I = 0x7f

.field public static final INT_DEMXUER_TYPE:I = 0x72

.field public static final INT_HLS_PROGRAM_DEFAULT_PLAY_INDEX:I = 0x7a

.field public static final INT_HLS_PROGRAM_PREFER_LUMASAMPLES:I = 0x7b

.field public static final INT_OUT_AUDIO_FRAME_SIZE_BYTE:I = 0x12f

.field public static final INT_OUT_AUDIO_SAMPLE_FORMAT:I = 0x12c

.field public static final INT_OUT_AUDIO_SAMPLE_RATE_HZ:I = 0x12e

.field public static final INT_OUT_VIDEO_HEIGHT:I = 0x138

.field public static final INT_OUT_VIDEO_PIXEL_FORMAT:I = 0x136

.field public static final INT_OUT_VIDEO_ROTATION:I = 0x139

.field public static final INT_OUT_VIDEO_WIDTH:I = 0x137

.field public static final INT_PLAYER_SCHEDULING_THREAD_PRIORITY:I = 0x50

.field public static final INT_REDUCE_LIVE_LATENCY_ACTION:I = 0x77

.field public static final INT_STREAM_DEMUXER_FORMAT:I = 0x74

.field public static final INT_SUBTITLE_OUTPUT_TYPE:I = 0x1c2

.field public static final INT_TCP_RETRY_COUNT:I = 0x6d

.field public static final INT_VIDEO_DECODE_THREAD_PRIORITY:I = 0xd9

.field public static final INT_VIDEO_RENDERER_TYPE:I = 0x195

.field public static final LONG_AUDIO_BLUETOOTH_MAX_LIMIT_LATENCY_MS:I = 0x1a2

.field public static final LONG_AUDIO_NON_BLUETOOTH_MAX_LIMIT_LATENCY_MS:I = 0x199

.field public static final LONG_BUFFERING_TIMEOUT_MS:I = 0x6b

.field public static final LONG_BUFFER_PACKET_MAX_TOTAL_DURATION_MS:I = 0x75

.field public static final LONG_BUFFER_PACKET_MIN_TOTAL_DURATION_MS:I = 0x66

.field public static final LONG_HLS_PROGRAM_PREFER_BANDWIDTH:I = 0x7c

.field public static final LONG_MAX_ANALYZE_DURATION_MS:I = 0x79

.field public static final LONG_MAX_BUFFERING_TIME_MS:I = 0x6a

.field public static final LONG_MIN_BUFFERING_PACKET_DURATION_MS:I = 0x68

.field public static final LONG_MIN_BUFFERING_TIME_MS:I = 0x69

.field public static final LONG_OUT_AUDIO_CHANNEL_LAYOUT:I = 0x12d

.field public static final LONG_PRELOAD_PACKET_TOTAL_DURATION_MS:I = 0x67

.field public static final LONG_PREPARE_TIMEOUT_MS:I = 0x76

.field public static final LONG_SEEK_AV_PTS_ALIGN_MAX_THRESHOLD_MS:I = 0x81

.field public static final LONG_START_PLAYING_TIME_MS:I = 0x64

.field public static final LONG_TCP_TIMEOUT_MS:I = 0x6c

.field public static final LONG_VIDEO_DROP_FRAME_TIME_UNIT_MS:I = 0xcf

.field public static final OBJECT_AUDIO_ATTRIBUTES:I = 0x19e

.field public static final OBJECT_JITTER_BUFFER_CONFIG:I = 0x7e

.field public static final QUEUE_INT_AUDIO_DECODER_TYPE:I = 0xca

.field public static final QUEUE_INT_AUDIO_RENDERER_TYPE:I = 0x19b

.field public static final QUEUE_INT_SPECIAL_SEI_TYPES_CALLBACK:I = 0x80

.field public static final QUEUE_INT_VIDEO_DECODER_TYPE:I = 0xcb

.field public static final QUEUE_INT_VIDEO_RENDERER_TYPE:I = 0x19c

.field public static final QUEUE_STRING_HLS_TAG_CALLBACK:I = 0x71

.field public static final STRING_HLS_OVERLAY_IV:I = 0xb5

.field public static final STRING_HLS_OVERLAY_KEY:I = 0xb4

.field public static final STRING_MP4_OVERLAY_IV:I = 0xb9

.field public static final STRING_MP4_OVERLAY_KEY:I = 0xb8


# instance fields
.field private mBoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLongMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQueueStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mIntMap:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mLongMap:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mFloatMap:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mBoolMap:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mQueueIntMap:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mQueueStringMap:Ljava/util/HashMap;

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mObjectMap:Ljava/util/HashMap;

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mStringMap:Ljava/util/HashMap;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public addQueueInt(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mQueueIntMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Vector;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/Vector;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mQueueIntMap:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public addQueueString(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mQueueStringMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Vector;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/util/Vector;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mQueueStringMap:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public getBoolMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mBoolMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFloatMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mFloatMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mIntMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLongMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mLongMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getObjectMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mObjectMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQueueIntMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mQueueIntMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQueueStringMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mQueueStringMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mStringMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBool(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mBoolMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setFloat(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mFloatMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setInt(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mIntMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setLong(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mLongMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mObjectMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerInitConfig;->mStringMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

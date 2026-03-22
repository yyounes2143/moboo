.class public Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;
.super Ljava/lang/Object;


# static fields
.field public static final TP_SUBTITLE_OUTPUT_RGBA:I = 0x1

.field public static final TP_SUBTITLE_OUTPUT_TEXT:I


# instance fields
.field private mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

.field private mHttpHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInited:Z

.field private mIsLibLoaded:Z

.field private mNativeContext:J

.field private mOutputType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mHttpHeader:Ljava/util/Map;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mOutputType:I

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mNativeContext:J

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->loadLibrary()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mHttpHeader:Ljava/util/Map;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mOutputType:I

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mNativeContext:J

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->loadLibrary()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mOutputType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mHttpHeader:Ljava/util/Map;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mOutputType:I

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mNativeContext:J

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->loadLibrary()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mHttpHeader:Ljava/util/Map;

    iput-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;",
            "I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mHttpHeader:Ljava/util/Map;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mOutputType:I

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mNativeContext:J

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->loadLibrary()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mHttpHeader:Ljava/util/Map;

    iput-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    iput p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mOutputType:I

    return-void
.end method

.method private native _subtitleCreate(Ljava/lang/String;Ljava/lang/Object;I)I
.end method

.method private native _subtitleCreateWithUrlHttpHeader(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;I)I
.end method

.method private native _subtitleDelete()V
.end method

.method private native _subtitleGetFrame(J)Lcom/tencent/thumbplayer/tcmedia/core/common/TPSubtitleFrameWrapper;
.end method

.method private native _subtitleGetText(JI)Ljava/lang/String;
.end method

.method private native _subtitleGetTrackCount()I
.end method

.method private native _subtitleGetTrackName(I)Ljava/lang/String;
.end method

.method private native _subtitleLoadAsync()V
.end method

.method private native _subtitlePauseAsync()V
.end method

.method private native _subtitleSelectTrackAsync(IJ)I
.end method

.method private native _subtitleSetRenderParams(Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPNativeSubtitleRenderParams;)V
.end method

.method private native _subtitleStartAsync()V
.end method

.method private native _subtitleStop()V
.end method

.method private loadLibrary()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->loadLibIfNeeded(Landroid/content/Context;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getSubtitleFrame(J)Lcom/tencent/thumbplayer/tcmedia/core/common/TPSubtitleFrameWrapper;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleGetFrame(J)Lcom/tencent/thumbplayer/tcmedia/core/common/TPSubtitleFrameWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "Failed to getSubtitleFrame due to invalid state."

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string p2, "Failed to load native library"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public getSubtitleText(JI)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleGetText(JI)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "Failed to getSubtitleText due to invalid state."

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string p2, "Failed to load native library"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public getTrackInfo()[Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleGetTrackCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    new-array v1, v0, [Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    new-instance v3, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;

    .line 21
    .line 22
    invoke-direct {v3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x3

    .line 26
    iput v4, v3, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;->trackType:I

    .line 27
    .line 28
    invoke-direct {p0, v2}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleGetTrackName(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iput-object v4, v3, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;->trackName:Ljava/lang/String;

    .line 33
    .line 34
    aput-object v3, v1, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    return-object v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "Failed to getTrackInfo due to invalid state."

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 51
    .line 52
    const-string v1, "Failed to load native library"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public init()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mUrl:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mHttpHeader:Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerUtils;->tpMapStringToStringArray(Ljava/util/Map;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;

    .line 27
    .line 28
    iget v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mOutputType:I

    .line 29
    .line 30
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleCreateWithUrlHttpHeader(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;I)I

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "Failed to init due to invalid state."

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 43
    .line 44
    const-string v1, "Failed to load native library"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public loadAsync()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleLoadAsync()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Failed to loadAsync due to invalid state."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string v1, "Failed to load native library"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public pauseAsync()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitlePauseAsync()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Failed to pauseAsync due to invalid state."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string v1, "Failed to load native library"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public selectTrackAsync(IJ)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleSelectTrackAsync(IJ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "Failed to selectTrackAsync due to invalid state."

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string p2, "Failed to load native library"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public selectTracksAsync([IJ)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public setRenderParams(Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPNativeSubtitleRenderParams;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleSetRenderParams(Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPNativeSubtitleRenderParams;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "Failed to setRenderParams due to invalid state."

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string v0, "Failed to load native library"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public startAsync()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleStartAsync()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Failed to startAsync due to invalid state."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string v1, "Failed to load native library"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleStop()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Failed to stop due to invalid state."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string v1, "Failed to load native library"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public unInit()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->mInited:Z

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/subtitle/TPSubtitleParser;->_subtitleDelete()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string v1, "Failed to load native library"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

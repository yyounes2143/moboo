.class public Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;
.super Ljava/lang/Object;


# instance fields
.field private mCallback:Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;

.field private mFd:I

.field private mFdLength:J

.field private mFdOffset:J

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

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJJLcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mHttpHeader:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mFd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mNativeContext:J

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->loadLibrary()V

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mFd:I

    iput-wide p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mFdOffset:J

    iput-wide p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mFdLength:J

    iput-object p6, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mHttpHeader:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mFd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mNativeContext:J

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->loadLibrary()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mHttpHeader:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mFd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mNativeContext:J

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->loadLibrary()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mHttpHeader:Ljava/util/Map;

    iput-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;

    return-void
.end method

.method private native _cancelAllImageGenerations()V
.end method

.method private native _createWithFd(IJJLjava/lang/Object;)I
.end method

.method private native _createWithUrl(Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method private native _generateImageAsyncAtTime(JJLjava/lang/Object;)V
.end method

.method private native _generateImagesAsyncForTimes([JJLjava/lang/Object;)V
.end method

.method private native _release()V
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
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z
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
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public cancelAllImageGenerations()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->_cancelAllImageGenerations()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string v1, "Failed to load native library"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public generateImageAsyncAtTime(JJLcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGeneratorParams;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->_generateImageAsyncAtTime(JJLjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance p4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p5, "Failed to generate image at time "

    .line 18
    .line 19
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " due to invalid state."

    .line 26
    .line 27
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p3

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 39
    .line 40
    const-string p2, "Failed to load native library"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public generateImagesAsyncForTimes([JJLcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGeneratorParams;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->_generateImagesAsyncForTimes([JJLjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string p2, "Failed to generate images due to invalid state."

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string p2, "Failed to load native library"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public init()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mUrl:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mHttpHeader:Ljava/util/Map;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;

    .line 25
    .line 26
    invoke-direct {p0, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->_createWithUrl(Ljava/lang/String;Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mFd:I

    .line 31
    .line 32
    iget-wide v4, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mFdOffset:J

    .line 33
    .line 34
    iget-wide v6, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mFdLength:J

    .line 35
    .line 36
    iget-object v8, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mCallback:Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/ITPImageGeneratorCallback;

    .line 37
    .line 38
    move-object v2, p0

    .line 39
    invoke-direct/range {v2 .. v8}, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->_createWithFd(IJJLjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "Failed to init due to invalid state."

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 52
    .line 53
    const-string v1, "Failed to load native library"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public unInit()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mIsLibLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

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
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->mInited:Z

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/imagegenerator/TPImageGenerator;->_release()V

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

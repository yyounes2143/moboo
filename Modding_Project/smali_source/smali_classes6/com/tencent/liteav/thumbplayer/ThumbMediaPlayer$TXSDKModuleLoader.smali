.class Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXSDKModuleLoader;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TXSDKModuleLoader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXSDKModuleLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tencent/liteav/base/util/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

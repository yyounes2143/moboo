.class final synthetic Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$$Lambda$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$$Lambda$1;->arg$1:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    .line 5
    .line 6
    return-void
.end method

.method public static lambdaFactory$(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$$Lambda$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$$Lambda$1;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$$Lambda$1;->arg$1:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->lambda$checkSubtitle$0(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

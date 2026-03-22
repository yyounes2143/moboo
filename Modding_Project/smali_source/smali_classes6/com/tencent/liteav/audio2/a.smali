.class final synthetic Lcom/tencent/liteav/audio2/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/audio2/a;->a:Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/audio2/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio2/a;-><init>(Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio2/a;->a:Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->lambda$registerAudioRecordingCallback$0(Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

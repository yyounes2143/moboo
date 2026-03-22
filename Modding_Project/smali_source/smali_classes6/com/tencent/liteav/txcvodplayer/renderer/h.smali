.class public final synthetic Lcom/tencent/liteav/txcvodplayer/renderer/h;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/txcvodplayer/renderer/d;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/h;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/h;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/h;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lcom/tencent/liteav/txcvodplayer/renderer/d;II)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/renderer/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/renderer/h;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/d;II)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/h;->a:Lcom/tencent/liteav/txcvodplayer/renderer/d;

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/h;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/h;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/renderer/d;->a(Lcom/tencent/liteav/txcvodplayer/renderer/d;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

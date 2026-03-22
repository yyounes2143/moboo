.class final Lcom/tencent/liteav/txcvodplayer/b/c$1$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/txcvodplayer/b/c$1$1;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/b/c$1$1;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/b/c$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/c$1$1$1;->a:Lcom/tencent/liteav/txcvodplayer/b/c$1$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/c$1$1$1;->a:Lcom/tencent/liteav/txcvodplayer/b/c$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/b/c$1$1;->a:Lcom/tencent/liteav/txcvodplayer/b/c$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/tencent/liteav/txcvodplayer/b/c$1;->a:Lcom/tencent/liteav/txcvodplayer/b/c$a;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/b/c$1;->b:Lcom/tencent/liteav/txcvodplayer/b/c;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/b/c;->a(Lcom/tencent/liteav/txcvodplayer/b/c;)Lcom/tencent/rtmp/TXPlayInfoParams;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v1, v0, v2}, Lcom/tencent/liteav/txcvodplayer/b/c$a;->a(Lcom/tencent/liteav/txcvodplayer/b/c;Lcom/tencent/rtmp/TXPlayInfoParams;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

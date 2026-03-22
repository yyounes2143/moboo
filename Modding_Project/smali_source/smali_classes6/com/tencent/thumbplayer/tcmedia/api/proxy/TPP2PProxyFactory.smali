.class public Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPP2PProxyFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createPreloadManager(Landroid/content/Context;I)Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPreloadProxy;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/g;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

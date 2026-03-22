.class final Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDLProxyNativeLibLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->setLibLoader(Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$5;->val$loader:Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final loadLib(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$5;->val$loader:Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/api/ITPModuleLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    const-string p2, "TPThumbPlayer[TPPlayerMgr.java]"

    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

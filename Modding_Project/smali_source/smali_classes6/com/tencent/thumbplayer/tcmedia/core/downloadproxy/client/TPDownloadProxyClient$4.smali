.class Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient$4;
.super Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/aidl/ITPPreLoadListenerAidl$Stub;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient;->startClipPreload(Ljava/lang/String;ILcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient;

.field final synthetic val$itpPreLoadListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient;Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient$4;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient$4;->val$itpPreLoadListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/aidl/ITPPreLoadListenerAidl$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPrepareDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient$4;->val$itpPreLoadListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-wide v3, p3

    .line 6
    move-wide v5, p5

    .line 7
    move-object v7, p7

    .line 8
    invoke-interface/range {v0 .. v7}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;->onPrepareDownloadProgressUpdate(IIJJLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPrepareError(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient$4;->val$itpPreLoadListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;->onPrepareError(IILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPrepareOK()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/client/TPDownloadProxyClient$4;->val$itpPreLoadListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;->onPrepareOK()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

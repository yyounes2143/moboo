.class Lcom/tencent/vod/flutter/FTXDownloadManager$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/FTXDownloadManager;->startPreLoad(Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/FTXDownloadManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$3;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$3;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/tencent/vod/flutter/FTXDownloadManager;->access$100(Lcom/tencent/vod/flutter/FTXDownloadManager;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(ILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$3;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    move v3, p1

    .line 6
    move-object v4, p2

    .line 7
    move v5, p3

    .line 8
    move-object v6, p4

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/tencent/vod/flutter/FTXDownloadManager;->access$200(Lcom/tencent/vod/flutter/FTXDownloadManager;JILjava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

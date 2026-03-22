.class Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;
.super Lcom/tencent/rtmp/downloader/ITXVodFilePreloadListener;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/FTXDownloadManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/vod/flutter/FTXDownloadManager$4;

.field final synthetic val$tmpTaskId:J


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/FTXDownloadManager$4;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;->this$1:Lcom/tencent/vod/flutter/FTXDownloadManager$4;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;->val$tmpTaskId:J

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/tencent/rtmp/downloader/ITXVodFilePreloadListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;->this$1:Lcom/tencent/vod/flutter/FTXDownloadManager$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/tencent/vod/flutter/FTXDownloadManager;->access$100(Lcom/tencent/vod/flutter/FTXDownloadManager;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onError(ILjava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;->this$1:Lcom/tencent/vod/flutter/FTXDownloadManager$4;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;->val$tmpTaskId:J

    .line 6
    .line 7
    move v4, p1

    .line 8
    move-object v5, p2

    .line 9
    move v6, p3

    .line 10
    move-object v7, p4

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/tencent/vod/flutter/FTXDownloadManager;->access$200(Lcom/tencent/vod/flutter/FTXDownloadManager;JILjava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onStart(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-wide v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;->val$tmpTaskId:J

    .line 2
    .line 3
    const-wide/16 v3, 0x0

    .line 4
    .line 5
    cmp-long v0, v1, v3

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$4$1;->this$1:Lcom/tencent/vod/flutter/FTXDownloadManager$4;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/tencent/vod/flutter/FTXDownloadManager$4;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 12
    .line 13
    move v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    move-object v6, p4

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/tencent/vod/flutter/FTXDownloadManager;->access$400(Lcom/tencent/vod/flutter/FTXDownloadManager;JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

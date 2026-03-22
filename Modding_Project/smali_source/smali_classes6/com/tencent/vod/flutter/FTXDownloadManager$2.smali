.class Lcom/tencent/vod/flutter/FTXDownloadManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/FTXDownloadManager;->onDownloadCallback(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

.field final synthetic val$eventArg:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/FTXDownloadManager;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$2;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$2;->val$eventArg:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$2;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/FTXDownloadManager;->access$000(Lcom/tencent/vod/flutter/FTXDownloadManager;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadFlutterAPI;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$2;->val$eventArg:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/tencent/vod/flutter/FTXDownloadManager$2;->this$0:Lcom/tencent/vod/flutter/FTXDownloadManager;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadFlutterAPI;->onDownloadEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

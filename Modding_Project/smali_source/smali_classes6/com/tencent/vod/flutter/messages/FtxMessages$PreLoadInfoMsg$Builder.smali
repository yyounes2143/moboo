.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private appId:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private httpHeader:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pSign:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private preferredResolution:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private preloadSizeMB:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tmpPreloadTaskId:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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


# virtual methods
.method public build()Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->appId:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->setAppId(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->fileId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->setFileId(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->pSign:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->setPSign(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->playUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->setPlayUrl(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->preloadSizeMB:Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->setPreloadSizeMB(Ljava/lang/Double;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->preferredResolution:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->setPreferredResolution(Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->tmpPreloadTaskId:Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->setTmpPreloadTaskId(Ljava/lang/Long;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->httpHeader:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;->setHttpHeader(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public setAppId(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->appId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->fileId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHttpHeader(Ljava/util/Map;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->httpHeader:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPSign(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->pSign:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayUrl(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->playUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPreferredResolution(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->preferredResolution:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPreloadSizeMB(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->preloadSizeMB:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTmpPreloadTaskId(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg$Builder;->tmpPreloadTaskId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

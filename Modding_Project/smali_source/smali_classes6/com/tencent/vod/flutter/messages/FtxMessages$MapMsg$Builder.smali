.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private map:Ljava/util/Map;
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
.method public build()Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg$Builder;->map:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;->setMap(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public setMap(Ljava/util/Map;)Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg$Builder;
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
            "Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg$Builder;->map:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

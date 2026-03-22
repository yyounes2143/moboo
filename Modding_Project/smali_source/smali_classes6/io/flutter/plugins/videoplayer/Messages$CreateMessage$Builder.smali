.class public final Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages$CreateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private asset:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private formatHint:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private httpHeaders:Ljava/util/Map;
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

.field private packageName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private uri:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private viewType:Lio/flutter/plugins/videoplayer/Messages$PlatformVideoViewType;
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
.method public build()Lio/flutter/plugins/videoplayer/Messages$CreateMessage;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->asset:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setAsset(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->uri:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setUri(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setPackageName(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->formatHint:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setFormatHint(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->httpHeaders:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setHttpHeaders(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->viewType:Lio/flutter/plugins/videoplayer/Messages$PlatformVideoViewType;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setViewType(Lio/flutter/plugins/videoplayer/Messages$PlatformVideoViewType;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public setAsset(Ljava/lang/String;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/videoplayer/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->asset:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFormatHint(Ljava/lang/String;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/videoplayer/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->formatHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHttpHeaders(Ljava/util/Map;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/videoplayer/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->httpHeaders:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/videoplayer/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/videoplayer/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->uri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setViewType(Lio/flutter/plugins/videoplayer/Messages$PlatformVideoViewType;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/videoplayer/Messages$PlatformVideoViewType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/videoplayer/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->viewType:Lio/flutter/plugins/videoplayer/Messages$PlatformVideoViewType;

    .line 2
    .line 3
    return-object p0
.end method

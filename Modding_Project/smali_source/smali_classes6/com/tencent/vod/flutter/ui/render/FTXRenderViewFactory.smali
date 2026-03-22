.class public Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "Proguard"


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXRenderViewFactory"


# instance fields
.field private final mBinaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final mRenderViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/vod/flutter/ui/render/FTXRenderView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1
    .param p1    # Lio/flutter/plugin/common/BinaryMessenger;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;->mRenderViewCache:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;->mBinaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p3, Ljava/util/Map;

    .line 2
    .line 3
    new-instance v0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;-><init>(Landroid/content/Context;ILjava/util/Map;Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;->mRenderViewCache:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "create renderView: "

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "FTXRenderViewFactory"

    .line 40
    .line 41
    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method public findViewById(I)Lcom/tencent/vod/flutter/ui/render/FTXRenderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;->mRenderViewCache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 22
    .line 23
    return-object p1
.end method

.method public removeByViewId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;->mRenderViewCache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

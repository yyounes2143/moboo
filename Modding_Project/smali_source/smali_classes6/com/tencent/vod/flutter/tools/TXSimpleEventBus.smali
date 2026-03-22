.class public Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;
    }
.end annotation


# static fields
.field private static instance:Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;


# instance fields
.field private final subscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->subscribers:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->instance:Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->instance:Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->instance:Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->subscribers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;

    .line 26
    .line 27
    invoke-interface {v1, p1, p2}, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;->onEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->subscribers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->subscribers:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public unregister(Ljava/lang/String;Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->subscribers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public unregisterAllType(Lcom/tencent/vod/flutter/tools/TXSimpleEventBus$EventSubscriber;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->subscribers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/tencent/vod/flutter/tools/TXSimpleEventBus;->subscribers:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/List;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

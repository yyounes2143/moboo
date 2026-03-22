.class final Lio/flutter/plugins/videoplayer/QueuingEventSink;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$EventSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;,
        Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;
    }
.end annotation


# instance fields
.field private delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private done:Z

.field private final eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->done:Z

    .line 13
    .line 14
    return-void
.end method

.method private enqueue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->done:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private maybeFlush()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    instance-of v4, v3, Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 26
    .line 27
    invoke-interface {v3}, Lio/flutter/plugin/common/EventChannel$EventSink;->endOfStream()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v4, v3, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    check-cast v3, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;

    .line 36
    .line 37
    iget-object v4, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 38
    .line 39
    iget-object v5, v3, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->code:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v6, v3, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->message:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v3, v3, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->details:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-interface {v4, v5, v6, v3}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object v4, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 50
    .line 51
    invoke-interface {v4, v3}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public endOfStream()V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->enqueue(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->done:Z

    .line 14
    .line 15
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->enqueue(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setDelegate(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->enqueue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

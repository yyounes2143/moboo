.class public final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0017\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010!\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lokio/AsyncTimeout$Companion;",
        "",
        "<init>",
        "()V",
        "Lokio/AsyncTimeout;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lokio/AsyncTimeout;",
        "node",
        "",
        "timeoutNanos",
        "",
        "hasDeadline",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/AsyncTimeout;JZ)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/AsyncTimeout;)Z",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/util/concurrent/locks/Condition;",
        "condition",
        "Ljava/util/concurrent/locks/Condition;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/util/concurrent/locks/Condition;",
        "IDLE_TIMEOUT_MILLIS",
        "J",
        "IDLE_TIMEOUT_NANOS",
        "",
        "TIMEOUT_WRITE_SIZE",
        "I",
        "head",
        "Lokio/AsyncTimeout;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,331:1\n1#2:332\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokio/AsyncTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/AsyncTimeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;JZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;JZ)V
    .locals 5

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/AsyncTimeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {p1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_7

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p1, v1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwww(Lokio/AsyncTimeout;Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lokio/AsyncTimeout;

    .line 27
    .line 28
    invoke-direct {v1}, Lokio/AsyncTimeout;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwww(Lokio/AsyncTimeout;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lokio/AsyncTimeout$Watchdog;

    .line 35
    .line 36
    invoke-direct {v1}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    cmp-long v3, p2, v3

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    if-eqz p4, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    sub-long/2addr v3, v1

    .line 63
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 64
    .line 65
    .line 66
    move-result-wide p2

    .line 67
    add-long/2addr p2, v1

    .line 68
    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->Wwwwwwwwwwww(Lokio/AsyncTimeout;J)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    if-eqz v3, :cond_2

    .line 73
    .line 74
    add-long/2addr p2, v1

    .line 75
    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->Wwwwwwwwwwww(Lokio/AsyncTimeout;J)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    if-eqz p4, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 82
    .line 83
    .line 84
    move-result-wide p2

    .line 85
    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->Wwwwwwwwwwww(Lokio/AsyncTimeout;J)V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-static {p1, v1, v2}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwww(Lokio/AsyncTimeout;J)J

    .line 89
    .line 90
    .line 91
    move-result-wide p2

    .line 92
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    :goto_2
    invoke-static {p4}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    invoke-static {p4}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3, v1, v2}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwww(Lokio/AsyncTimeout;J)J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    cmp-long v3, p2, v3

    .line 111
    .line 112
    if-gez v3, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    invoke-static {p4}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    :goto_3
    invoke-static {p4}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {p1, p2}, Lokio/AsyncTimeout;->Wwwwwwwwwwwww(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p4, p1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwww(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-ne p4, p1, :cond_5

    .line 135
    .line 136
    sget-object p1, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    .line 137
    .line 138
    invoke-virtual {p1}, Lokio/AsyncTimeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/Condition;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 143
    .line 144
    .line 145
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 152
    .line 153
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_7
    const-string p1, "Unbalanced enter/exit"

    .line 158
    .line 159
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    .line 167
    .line 168
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/Condition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/Condition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Z
    .locals 4

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/AsyncTimeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {p1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    :try_start_1
    invoke-static {p1, v2}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwww(Lokio/AsyncTimeout;Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-static {v1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-ne v3, p1, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v1, v3}, Lokio/AsyncTimeout;->Wwwwwwwwwwwww(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {p1, v1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwww(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_2
    invoke-static {v1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 54
    .line 55
    .line 56
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/Condition;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwww()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    sub-long/2addr v4, v2

    .line 44
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwww()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    cmp-long v0, v4, v2

    .line 49
    .line 50
    if-ltz v0, :cond_0

    .line 51
    .line 52
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :cond_0
    return-object v1

    .line 58
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-static {v0, v2, v3}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwww(Lokio/AsyncTimeout;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    const-wide/16 v4, 0x0

    .line 67
    .line 68
    cmp-long v4, v2, v4

    .line 69
    .line 70
    if-lez v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/Condition;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    .line 78
    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    :cond_2
    invoke-static {}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v0}, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Lokio/AsyncTimeout;->Wwwwwwwwwwwww(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Lokio/AsyncTimeout;->Wwwwwwwwwwwww(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

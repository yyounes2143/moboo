.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Companion;,
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000f\u0008\u0016\u0018\u0000 $2\u00020\u0001:\u0002$%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0015\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lokio/AsyncTimeout;",
        "Lokio/Timeout;",
        "<init>",
        "()V",
        "",
        "Wwwwwwwwwww",
        "",
        "Wwwwwwwwww",
        "()Z",
        "Wwwww",
        "Lokio/Sink;",
        "sink",
        "Wwwwwww",
        "(Lokio/Sink;)Lokio/Sink;",
        "Lokio/Source;",
        "source",
        "Wwwwww",
        "(Lokio/Source;)Lokio/Source;",
        "Ljava/io/IOException;",
        "cause",
        "Wwwwwwwwwwwwwwwww",
        "(Ljava/io/IOException;)Ljava/io/IOException;",
        "Wwwwwwwww",
        "",
        "now",
        "Wwwwwwww",
        "(J)J",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "inQueue",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/AsyncTimeout;",
        "next",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "J",
        "timeoutAt",
        "Companion",
        "Watchdog",
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


# static fields
.field public static final Companion:Lokio/AsyncTimeout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwwww:Lokio/AsyncTimeout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwww:J

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwww:J

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/Condition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/AsyncTimeout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lokio/AsyncTimeout$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokio/AsyncTimeout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/Condition;

    .line 21
    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    const-wide/16 v1, 0x3c

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    sput-wide v0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 31
    .line 32
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    .line 34
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    sput-wide v0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwww(Lokio/AsyncTimeout;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwww(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/AsyncTimeout;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwww(Lokio/AsyncTimeout;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwww(Lokio/AsyncTimeout;)V
    .locals 0

    .line 1
    sput-object p0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww:Lokio/AsyncTimeout;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwww(Lokio/AsyncTimeout;J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/AsyncTimeout;->Wwwwwwww(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/AsyncTimeout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    sget-wide v0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    sget-wide v0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwww()Lokio/AsyncTimeout;
    .locals 1

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwww:Lokio/AsyncTimeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/Condition;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public Wwwww()V
    .locals 0

    .line 1
    return-void
.end method

.method public final Wwwwww(Lokio/Source;)Lokio/Source;
    .locals 1
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/AsyncTimeout$source$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$source$1;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final Wwwwwww(Lokio/Sink;)Lokio/Sink;
    .locals 1
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/AsyncTimeout$sink$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$sink$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final Wwwwwwww(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/AsyncTimeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    sub-long/2addr v0, p1

    .line 4
    return-wide v0
.end method

.method public Wwwwwwwww(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 2
    .line 3
    const-string v1, "timeout"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final Wwwwwwwwww()Z
    .locals 1

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lokio/AsyncTimeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final Wwwwwwwwwww()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v3, v0, v3

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v3, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    .line 19
    .line 20
    invoke-static {v3, p0, v0, v1, v2}, Lokio/AsyncTimeout$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwww(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->Wwwwwwwww(Ljava/io/IOException;)Ljava/io/IOException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

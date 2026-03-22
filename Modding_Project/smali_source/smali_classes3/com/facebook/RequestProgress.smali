.class public final Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\r\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0013R$\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00088\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0013\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0013R$\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00088\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0013\u001a\u0004\u0008\u001c\u0010\u0017\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/RequestProgress;",
        "",
        "Landroid/os/Handler;",
        "callbackHandler",
        "Lcom/facebook/GraphRequest;",
        "request",
        "<init>",
        "(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V",
        "",
        "size",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(J)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/os/Handler;",
        "Lcom/facebook/GraphRequest;",
        "J",
        "threshold",
        "<set-?>",
        "getProgress",
        "()J",
        "progress",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "lastReportedProgress",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "getMaxProgress",
        "maxProgress",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/GraphRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest;

    .line 7
    .line 8
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwww()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 13
    .line 14
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphRequest$Callback;JJ)V
    .locals 0

    .line 1
    check-cast p0, Lcom/facebook/GraphRequest$OnProgressCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/GraphRequest$OnProgressCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphRequest$Callback;JJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphRequest$Callback;JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->Wwwwwwwwwwwwwwwwwwww()Lcom/facebook/GraphRequest$Callback;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-wide v5, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long v0, v5, v0

    .line 20
    .line 21
    if-lez v0, :cond_2

    .line 22
    .line 23
    instance-of v0, v2, Lcom/facebook/GraphRequest$OnProgressCallback;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-wide v3, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 28
    .line 29
    iget-object v0, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Lcom/facebook/Wwwwwwwwwwwwwwww;

    .line 36
    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/facebook/Wwwwwwwwwwwwwwww;-><init>(Lcom/facebook/GraphRequest$Callback;JJ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    if-nez v0, :cond_1

    .line 49
    .line 50
    check-cast v2, Lcom/facebook/GraphRequest$OnProgressCallback;

    .line 51
    .line 52
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/facebook/GraphRequest$OnProgressCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJ)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 56
    .line 57
    iput-wide v0, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 5
    .line 6
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 5
    .line 6
    iget-wide p1, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 9
    .line 10
    add-long/2addr p1, v2

    .line 11
    cmp-long p1, v0, p1

    .line 12
    .line 13
    if-gez p1, :cond_1

    .line 14
    .line 15
    iget-wide p1, p0, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 16
    .line 17
    cmp-long p1, v0, p1

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

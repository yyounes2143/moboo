.class public final Lcom/facebook/ProgressOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Proguard"

# interfaces
.implements Lcom/facebook/RequestOutputStream;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u001c\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\'\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u001dJ\u0017\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\"\u0010!R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u0014\u0010,\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010(R$\u00100\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000b8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008.\u0010(\u001a\u0004\u0008/\u0010*R\u0016\u00102\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010(R\u0018\u00105\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104\u00a8\u00066"
    }
    d2 = {
        "Lcom/facebook/ProgressOutputStream;",
        "Ljava/io/FilterOutputStream;",
        "Lcom/facebook/RequestOutputStream;",
        "Ljava/io/OutputStream;",
        "out",
        "Lcom/facebook/GraphRequestBatch;",
        "requests",
        "",
        "Lcom/facebook/GraphRequest;",
        "Lcom/facebook/RequestProgress;",
        "progressMap",
        "",
        "maxProgress",
        "<init>",
        "(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V",
        "size",
        "",
        "Wwwwwwwwwwwwww",
        "(J)V",
        "request",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/GraphRequest;)V",
        "",
        "buffer",
        "write",
        "([B)V",
        "",
        "offset",
        "length",
        "([BII)V",
        "oneByte",
        "(I)V",
        "close",
        "()V",
        "Kkkkkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/GraphRequestBatch;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/Map;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "J",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "()J",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "threshold",
        "<set-?>",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "batchProgress",
        "Wwwwwwwwwwwwwwwwwwww",
        "lastReportedProgress",
        "Wwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/RequestProgress;",
        "currentRequestProgress",
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
.field public Wwwwwwwwwwwwwwwwwww:Lcom/facebook/RequestProgress;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequestBatch;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V
    .locals 0
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/GraphRequestBatch;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/facebook/GraphRequestBatch;",
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequestBatch;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 9
    .line 10
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwww()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 15
    .line 16
    return-void
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkk(Lcom/facebook/GraphRequestBatch$Callback;Lcom/facebook/ProgressOutputStream;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequestBatch;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/facebook/ProgressOutputStream;->Kkkkkkkkkkkkkkkkkkkkkkk()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-virtual {p1}, Lcom/facebook/ProgressOutputStream;->Kkkkkkkkkkkkkkkkkkkkkk()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/facebook/GraphRequestBatch$OnProgressCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphRequestBatch;JJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final Wwwwwwwwwwwwww(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwww:Lcom/facebook/RequestProgress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 10
    .line 11
    add-long/2addr v0, p1

    .line 12
    iput-wide v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 13
    .line 14
    iget-wide p1, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwww:J

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 17
    .line 18
    add-long/2addr p1, v2

    .line 19
    cmp-long p1, v0, p1

    .line 20
    .line 21
    if-gez p1, :cond_2

    .line 22
    .line 23
    iget-wide p1, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 24
    .line 25
    cmp-long p1, v0, p1

    .line 26
    .line 27
    if-ltz p1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ProgressOutputStream;->Kkkkkkkkkkkkkkkkkkkkk()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphRequestBatch$Callback;Lcom/facebook/ProgressOutputStream;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/ProgressOutputStream;->Kkkkkkkkkkkkkkkkkkkk(Lcom/facebook/GraphRequestBatch$Callback;Lcom/facebook/ProgressOutputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkkkkkkk()V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequestBatch;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->Wwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/facebook/GraphRequestBatch$Callback;

    .line 30
    .line 31
    instance-of v2, v1, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequestBatch;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance v3, Lcom/facebook/Wwwwwwwwwwwwwwwww;

    .line 46
    .line 47
    invoke-direct {v3, v1, p0}, Lcom/facebook/Wwwwwwwwwwwwwwwww;-><init>(Lcom/facebook/GraphRequestBatch$Callback;Lcom/facebook/ProgressOutputStream;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_1
    if-nez v2, :cond_0

    .line 59
    .line 60
    move-object v3, v1

    .line 61
    check-cast v3, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequestBatch;

    .line 64
    .line 65
    iget-wide v5, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 66
    .line 67
    iget-wide v7, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 68
    .line 69
    invoke-interface/range {v3 .. v8}, Lcom/facebook/GraphRequestBatch$OnProgressCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphRequestBatch;JJ)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 74
    .line 75
    iput-wide v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwww:J

    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphRequest;)V
    .locals 1
    .param p1    # Lcom/facebook/GraphRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/facebook/RequestProgress;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-object p1, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwww:Lcom/facebook/RequestProgress;

    .line 14
    .line 15
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/facebook/RequestProgress;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/facebook/RequestProgress;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ProgressOutputStream;->Kkkkkkkkkkkkkkkkkkkkk()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwww(J)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    array-length p1, p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwww(J)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/facebook/ProgressOutputStream;->Wwwwwwwwwwwwww(J)V

    return-void
.end method

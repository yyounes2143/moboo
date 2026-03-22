.class public final Lokio/Throttler$sink$1;
.super Lokio/ForwardingSink;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "okio/Throttler$sink$1",
        "Lokio/ForwardingSink;",
        "Lokio/Buffer;",
        "source",
        "",
        "byteCount",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Buffer;J)V",
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


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Throttler;


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V
    .locals 2
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lokio/Throttler$sink$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Throttler;

    .line 8
    .line 9
    invoke-virtual {v0, p2, p3}, Lokio/Throttler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-super {p0, p1, v0, v1}, Lokio/ForwardingSink;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    sub-long/2addr p2, v0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 26
    .line 27
    const-string p2, "interrupted"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_0
    return-void
.end method

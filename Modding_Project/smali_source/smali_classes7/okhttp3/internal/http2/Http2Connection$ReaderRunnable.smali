.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReaderRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0010\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0011\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0003H\u0096\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J5\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000c2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010 \u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u001d\u0010\"\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\"\u0010!J\u000f\u0010#\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008#\u0010\tJ\'\u0010\'\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\'\u0010,\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u001f\u00100\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00080\u00101J/\u00105\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u00102\u001a\u00020\u000c2\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00085\u00106J-\u00109\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u00107\u001a\u00020\u000c2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016\u00a2\u0006\u0004\u00089\u0010:R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u0010;\u001a\u0004\u0008<\u0010=\u00a8\u0006>"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "Lkotlin/Function0;",
        "",
        "Lokhttp3/internal/http2/Http2Reader;",
        "reader",
        "<init>",
        "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "",
        "inFinished",
        "",
        "streamId",
        "Lokio/BufferedSource;",
        "source",
        "length",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ZILokio/BufferedSource;I)V",
        "associatedStreamId",
        "",
        "Lokhttp3/internal/http2/Header;",
        "headerBlock",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ZIILjava/util/List;)V",
        "Lokhttp3/internal/http2/ErrorCode;",
        "errorCode",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ILokhttp3/internal/http2/ErrorCode;)V",
        "clearPrevious",
        "Lokhttp3/internal/http2/Settings;",
        "settings",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ZLokhttp3/internal/http2/Settings;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "ack",
        "payload1",
        "payload2",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ZII)V",
        "lastGoodStreamId",
        "Lokio/ByteString;",
        "debugData",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V",
        "",
        "windowSizeIncrement",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(IJ)V",
        "streamDependency",
        "weight",
        "exclusive",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(IIIZ)V",
        "promisedStreamId",
        "requestHeaders",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(IILjava/util/List;)V",
        "Lokhttp3/internal/http2/Http2Reader;",
        "getReader$okhttp",
        "()Lokhttp3/internal/http2/Http2Reader;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Reader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 0
    .param p1    # Lokhttp3/internal/http2/Http2Connection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/Http2Reader;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Reader;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwww()V
    .locals 5

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Reader;

    .line 5
    .line 6
    invoke-virtual {v2, p0}, Lokhttp3/internal/http2/Http2Reader;->Wwwwwwwwwwwwww(Lokhttp3/internal/http2/Http2Reader$Handler;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Reader;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3, p0}, Lokhttp3/internal/http2/Http2Reader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    :try_start_1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 24
    .line 25
    invoke-virtual {v3, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkk(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Reader;

    .line 29
    .line 30
    invoke-static {v0}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v3

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception v1

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception v3

    .line 39
    move-object v2, v0

    .line 40
    goto :goto_2

    .line 41
    :catch_1
    move-exception v1

    .line 42
    move-object v2, v0

    .line 43
    :goto_1
    :try_start_2
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 46
    .line 47
    invoke-virtual {v2, v0, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkk(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Reader;

    .line 51
    .line 52
    invoke-static {v0}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_2
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 57
    .line 58
    invoke-virtual {v4, v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkk(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Reader;

    .line 62
    .line 63
    invoke-static {v0}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 64
    .line 65
    .line 66
    throw v3
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(ZLokhttp3/internal/http2/Settings;)V
    .locals 11
    .param p2    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 3
    .line 4
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 8
    .line 9
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllllllllllll()Lokhttp3/internal/http2/Http2Writer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllllllllllllllllll()Lokhttp3/internal/http2/Settings;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lokhttp3/internal/http2/Settings;

    .line 25
    .line 26
    invoke-direct {p1}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v4}, Lokhttp3/internal/http2/Settings;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Settings;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Settings;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Settings;)V

    .line 33
    .line 34
    .line 35
    move-object p2, p1

    .line 36
    :goto_0
    iput-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {p2}, Lokhttp3/internal/http2/Settings;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    int-to-long p1, p1

    .line 43
    invoke-virtual {v4}, Lokhttp3/internal/http2/Settings;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    int-to-long v4, v4

    .line 48
    sub-long/2addr p1, v4

    .line 49
    const-wide/16 v4, 0x0

    .line 50
    .line 51
    cmp-long v6, p1, v4

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllllllllllllllll()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllllllllllllllll()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    new-array v8, v7, [Lokhttp3/internal/http2/Http2Stream;

    .line 76
    .line 77
    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    check-cast v6, [Lokhttp3/internal/http2/Http2Stream;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_5

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 89
    .line 90
    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 91
    .line 92
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .line 97
    :goto_2
    iget-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v8, Lokhttp3/internal/http2/Settings;

    .line 100
    .line 101
    invoke-virtual {v3, v8}, Lokhttp3/internal/http2/Http2Connection;->Illllllll(Lokhttp3/internal/http2/Settings;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->Kkkkk()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    const-string v10, " onSettings"

    .line 113
    .line 114
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    new-instance v10, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$lambda-7$lambda-6$$inlined$execute$default$1;

    .line 119
    .line 120
    invoke-direct {v10, v9, v0, v3, v1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$applyAndAckSettings$lambda-7$lambda-6$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v10, v4, v5}, Lokhttp3/internal/concurrent/TaskQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/concurrent/Task;J)V

    .line 124
    .line 125
    .line 126
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    :try_start_3
    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllllllllllll()Lokhttp3/internal/http2/Http2Writer;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v1, Lokhttp3/internal/http2/Settings;

    .line 136
    .line 137
    invoke-virtual {v4, v1}, Lokhttp3/internal/http2/Http2Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Settings;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catchall_1
    move-exception p1

    .line 142
    goto :goto_6

    .line 143
    :catch_0
    move-exception v1

    .line 144
    :try_start_4
    invoke-static {v3, v1}, Lokhttp3/internal/http2/Http2Connection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    .line 145
    .line 146
    .line 147
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    .line 149
    monitor-exit v2

    .line 150
    if-eqz v6, :cond_4

    .line 151
    .line 152
    array-length v1, v6

    .line 153
    :goto_4
    if-ge v7, v1, :cond_4

    .line 154
    .line 155
    aget-object v2, v6, v7

    .line 156
    .line 157
    add-int/2addr v7, v0

    .line 158
    monitor-enter v2

    .line 159
    :try_start_5
    invoke-virtual {v2, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 160
    .line 161
    .line 162
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 163
    .line 164
    monitor-exit v2

    .line 165
    goto :goto_4

    .line 166
    :catchall_2
    move-exception p1

    .line 167
    monitor-exit v2

    .line 168
    throw p1

    .line 169
    :cond_4
    return-void

    .line 170
    :goto_5
    :try_start_6
    monitor-exit v3

    .line 171
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 172
    :goto_6
    monitor-exit v2

    .line 173
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 4
    .param p2    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 3
    .line 4
    .line 5
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 6
    .line 7
    monitor-enter p3

    .line 8
    :try_start_0
    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllllllllllllllll()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v2, v1, [Lokhttp3/internal/http2/Http2Stream;

    .line 18
    .line 19
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;Z)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit p3

    .line 31
    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    .line 32
    .line 33
    array-length p3, v0

    .line 34
    :cond_0
    :goto_0
    if-ge v1, p3, :cond_1

    .line 35
    .line 36
    aget-object v2, v0, v1

    .line 37
    .line 38
    add-int/2addr v1, p2

    .line 39
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-le v3, p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwww()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwww(Lokhttp3/internal/http2/ErrorCode;)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 57
    .line 58
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v3, v2}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllll(I)Lokhttp3/internal/http2/Http2Stream;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 70
    .line 71
    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_1
    monitor-exit p3

    .line 78
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p2    # Lokhttp3/internal/http2/ErrorCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllll(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllllll(ILokhttp3/internal/http2/ErrorCode;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllll(I)Lokhttp3/internal/http2/Http2Stream;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwww(Lokhttp3/internal/http2/ErrorCode;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(IIIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ZII)V
    .locals 8

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 p3, 0x1

    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    if-eq p2, p3, :cond_2

    .line 10
    .line 11
    const/4 p3, 0x2

    .line 12
    if-eq p2, p3, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x3

    .line 15
    if-eq p2, p3, :cond_0

    .line 16
    .line 17
    :goto_0
    :try_start_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    move-object p2, v0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Http2Connection;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    add-long/2addr p2, v0

    .line 28
    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkkkkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;)J

    .line 36
    .line 37
    .line 38
    move-result-wide p2

    .line 39
    add-long/2addr p2, v0

    .line 40
    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;)J

    .line 45
    .line 46
    .line 47
    move-result-wide p2

    .line 48
    add-long/2addr p2, v0

    .line 49
    invoke-static {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :goto_1
    monitor-exit p1

    .line 53
    return-void

    .line 54
    :goto_2
    monitor-exit p1

    .line 55
    throw p2

    .line 56
    :cond_3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 57
    .line 58
    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 63
    .line 64
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->Kkkkk()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, " ping"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 75
    .line 76
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    move v6, p2

    .line 80
    move v7, p3

    .line 81
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;II)V

    .line 82
    .line 83
    .line 84
    const-wide/16 p2, 0x0

    .line 85
    .line 86
    invoke-virtual {p1, v2, p2, p3}, Lokhttp3/internal/concurrent/TaskQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/concurrent/Task;J)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZILokio/BufferedSource;I)V
    .locals 2
    .param p3    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllll(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 10
    .line 11
    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllllllll(ILokio/BufferedSource;IZ)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllllllllllllllll(I)Lokhttp3/internal/http2/Http2Stream;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 24
    .line 25
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/http2/Http2Connection;->IIllllllll(ILokhttp3/internal/http2/ErrorCode;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 31
    .line 32
    int-to-long v0, p4

    .line 33
    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->Illll(J)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p3, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwww(Lokio/BufferedSource;I)V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    sget-object p1, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers;

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwww(Lokhttp3/Headers;Z)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 0

    .line 1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILjava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllllll(ILjava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IJ)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllllllllllllll()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    add-long/2addr v0, p2

    .line 11
    invoke-static {p1, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    .line 16
    .line 17
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p2

    .line 22
    monitor-exit p1

    .line 23
    throw p2

    .line 24
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllllllllllllllll(I)Lokhttp3/internal/http2/Http2Stream;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 34
    .line 35
    .line 36
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :catchall_1
    move-exception p2

    .line 41
    monitor-exit p1

    .line 42
    throw p2

    .line 43
    :cond_1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZIILjava/util/List;)V
    .locals 6
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllll(I)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 10
    .line 11
    invoke-virtual {p3, p2, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllllllll(ILjava/util/List;Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    invoke-virtual {v2, p2}, Lokhttp3/internal/http2/Http2Connection;->Illlllllllllllllllllllllll(I)Lokhttp3/internal/http2/Http2Stream;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    if-nez p3, :cond_4

    .line 23
    .line 24
    invoke-static {v2}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;)Z

    .line 25
    .line 26
    .line 27
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    monitor-exit v2

    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->Kkkk()I

    .line 33
    .line 34
    .line 35
    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-gt p2, p3, :cond_2

    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-void

    .line 40
    :cond_2
    :try_start_2
    rem-int/lit8 p3, p2, 0x2

    .line 41
    .line 42
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->Kk()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    rem-int/lit8 v0, v0, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    if-ne p3, v0, :cond_3

    .line 49
    .line 50
    monitor-exit v2

    .line 51
    return-void

    .line 52
    :cond_3
    :try_start_3
    invoke-static {p4}, Lokhttp3/internal/Util;->Kkkkkkkkkkkkkkkk(Ljava/util/List;)Lokhttp3/Headers;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    new-instance v0, Lokhttp3/internal/http2/Http2Stream;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    move v4, p1

    .line 60
    move v1, p2

    .line 61
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/Http2Connection;->Illllllllll(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllllllllllllllll()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskRunner;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lokhttp3/internal/concurrent/TaskRunner;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/concurrent/TaskQueue;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection;->Kkkkk()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const/16 p3, 0x5b

    .line 99
    .line 100
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p3, "] onStream"

    .line 107
    .line 108
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    new-instance p3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$lambda-2$$inlined$execute$default$1;

    .line 116
    .line 117
    const/4 p4, 0x1

    .line 118
    invoke-direct {p3, p2, p4, v2, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$lambda-2$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Stream;)V

    .line 119
    .line 120
    .line 121
    const-wide/16 v0, 0x0

    .line 122
    .line 123
    invoke-virtual {p1, p3, v0, v1}, Lokhttp3/internal/concurrent/TaskQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/concurrent/Task;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .line 125
    .line 126
    monitor-exit v2

    .line 127
    return-void

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    move-object p1, v0

    .line 130
    goto :goto_0

    .line 131
    :cond_4
    move v4, p1

    .line 132
    :try_start_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    .line 134
    monitor-exit v2

    .line 135
    invoke-static {p4}, Lokhttp3/internal/Util;->Kkkkkkkkkkkkkkkk(Ljava/util/List;)Lokhttp3/Headers;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p3, p1, v4}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwww(Lokhttp3/Headers;Z)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :goto_0
    monitor-exit v2

    .line 144
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZLokhttp3/internal/http2/Settings;)V
    .locals 9
    .param p2    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->Kkkkkkkkkkkkkkkk(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/concurrent/TaskQueue;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 8
    .line 9
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Connection;->Kkkkk()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, " applyAndAckSettings"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    move-object v6, p0

    .line 23
    move v7, p1

    .line 24
    move-object v8, p2

    .line 25
    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;-><init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;ZLokhttp3/internal/http2/Settings;)V

    .line 26
    .line 27
    .line 28
    const-wide/16 p1, 0x0

    .line 29
    .line 30
    invoke-virtual {v0, v3, p1, p2}, Lokhttp3/internal/concurrent/TaskQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/concurrent/Task;J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->Wwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method

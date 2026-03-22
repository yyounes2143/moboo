.class public final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/Source;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramingSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\"\u0010\u0005\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0017\u0010%\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u0017\u0010(\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\"\u001a\u0004\u0008\'\u0010$R$\u00100\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u00104\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u001c\u001a\u0004\u00082\u0010\u001e\"\u0004\u00083\u0010 \u00a8\u00065"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "Lokio/Source;",
        "",
        "maxByteCount",
        "",
        "finished",
        "<init>",
        "(Lokhttp3/internal/http2/Http2Stream;JZ)V",
        "Lokio/Buffer;",
        "sink",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "Lokio/BufferedSource;",
        "source",
        "",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "(Lokio/BufferedSource;J)V",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "close",
        "()V",
        "Kkkkkkkkkkkkkkkkkk",
        "(J)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "J",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "Kkkkkkkkkkkkkkkkkkkk",
        "(Z)V",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/Buffer;",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "()Lokio/Buffer;",
        "receiveBuffer",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwww",
        "readBuffer",
        "Lokhttp3/Headers;",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Lokhttp3/Headers;",
        "getTrailers",
        "()Lokhttp3/Headers;",
        "Kkkkkkkkkkkkkkkkkkk",
        "(Lokhttp3/Headers;)V",
        "trailers",
        "Wwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkkkk",
        "closed",
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
.field public final synthetic Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

.field public Wwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:J


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 9
    .line 10
    new-instance p1, Lokio/Buffer;

    .line 11
    .line 12
    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 16
    .line 17
    new-instance p1, Lokio/Buffer;

    .line 18
    .line 19
    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkkkk(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    sget-boolean v1, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "Thread "

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " MUST NOT hold lock on "

    .line 38
    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 54
    .line 55
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/Http2Connection;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->Illll(J)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkk(Lokhttp3/Headers;)V
    .locals 0
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/Headers;

    .line 2
    .line 3
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkk(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkk(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkk(Lokio/BufferedSource;J)V
    .locals 9
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    sget-boolean v1, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string p3, "Thread "

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p3, " MUST NOT hold lock on "

    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    cmp-long v2, p2, v0

    .line 56
    .line 57
    if-lez v2, :cond_9

    .line 58
    .line 59
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 60
    .line 61
    monitor-enter v2

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwww()Lokio/Buffer;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lokio/Buffer;->Kk()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    add-long/2addr v4, p2

    .line 75
    iget-wide v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 76
    .line 77
    cmp-long v4, v4, v6

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    const/4 v6, 0x1

    .line 81
    if-lez v4, :cond_2

    .line 82
    .line 83
    move v4, v6

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move v4, v5

    .line 86
    :goto_1
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .line 88
    monitor-exit v2

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 95
    .line 96
    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/ErrorCode;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    if-eqz v3, :cond_4

    .line 103
    .line 104
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 109
    .line 110
    invoke-interface {p1, v2, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    const-wide/16 v7, -0x1

    .line 115
    .line 116
    cmp-long v4, v2, v7

    .line 117
    .line 118
    if-eqz v4, :cond_8

    .line 119
    .line 120
    sub-long/2addr p2, v2

    .line 121
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 122
    .line 123
    monitor-enter v2

    .line 124
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Kkkkkkkkkkkkkkkkkkkkkkk()Lokio/Buffer;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lokio/Buffer;->Kk()J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Kkkkkkkkkkkkkkkkkkkkkkk()Lokio/Buffer;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v5}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkkkkkkkk()V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    goto :goto_3

    .line 148
    :cond_5
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwww()Lokio/Buffer;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lokio/Buffer;->Kk()J

    .line 153
    .line 154
    .line 155
    move-result-wide v3

    .line 156
    cmp-long v3, v3, v0

    .line 157
    .line 158
    if-nez v3, :cond_6

    .line 159
    .line 160
    move v5, v6

    .line 161
    :cond_6
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwww()Lokio/Buffer;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Kkkkkkkkkkkkkkkkkkkkkkk()Lokio/Buffer;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v3, v4}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)J

    .line 170
    .line 171
    .line 172
    if-eqz v5, :cond_7

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    :cond_7
    move-wide v3, v0

    .line 178
    :goto_2
    monitor-exit v2

    .line 179
    cmp-long v0, v3, v0

    .line 180
    .line 181
    if-lez v0, :cond_1

    .line 182
    .line 183
    invoke-virtual {p0, v3, v4}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Kkkkkkkkkkkkkkkkkk(J)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :goto_3
    monitor-exit v2

    .line 189
    throw p1

    .line 190
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    .line 191
    .line 192
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :catchall_1
    move-exception p1

    .line 197
    monitor-exit v2

    .line 198
    throw p1

    .line 199
    :cond_9
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwww()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Kkkkkkkkkkkkkkkkkkkkk(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwww()Lokio/Buffer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lokio/Buffer;->Kk()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwww()Lokio/Buffer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkkkkkkkk()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 24
    .line 25
    .line 26
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v0, v1, v3

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Kkkkkkkkkkkkkkkkkk(J)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 39
    .line 40
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0

    .line 46
    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 18
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p2

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v0, v2, v4

    .line 8
    .line 9
    if-ltz v0, :cond_9

    .line 10
    .line 11
    :goto_0
    iget-object v6, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 12
    .line 13
    monitor-enter v6

    .line 14
    :try_start_0
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lokio/AsyncTimeout;->Wwwwwwwwwww()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/ErrorCode;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/IOException;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    .line 40
    .line 41
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/ErrorCode;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-direct {v0, v7}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-nez v7, :cond_8

    .line 58
    .line 59
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwww()Lokio/Buffer;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7}, Lokio/Buffer;->Kk()J

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    cmp-long v7, v7, v4

    .line 68
    .line 69
    const-wide/16 v8, -0x1

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    if-lez v7, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwww()Lokio/Buffer;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwww()Lokio/Buffer;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    invoke-virtual {v11}, Lokio/Buffer;->Kk()J

    .line 83
    .line 84
    .line 85
    move-result-wide v11

    .line 86
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 87
    .line 88
    .line 89
    move-result-wide v11

    .line 90
    move-object/from16 v13, p1

    .line 91
    .line 92
    invoke-virtual {v7, v13, v11, v12}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v11

    .line 96
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 97
    .line 98
    .line 99
    move-result-wide v14

    .line 100
    add-long/2addr v14, v11

    .line 101
    invoke-virtual {v6, v14, v15}, Lokhttp3/internal/http2/Http2Stream;->Wwwwww(J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 105
    .line 106
    .line 107
    move-result-wide v14

    .line 108
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwww()J

    .line 109
    .line 110
    .line 111
    move-result-wide v16

    .line 112
    sub-long v14, v14, v16

    .line 113
    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/Http2Connection;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v7}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllllllllllllllllllll()Lokhttp3/internal/http2/Settings;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    div-int/lit8 v7, v7, 0x2

    .line 129
    .line 130
    int-to-long v4, v7

    .line 131
    cmp-long v4, v14, v4

    .line 132
    .line 133
    if-ltz v4, :cond_4

    .line 134
    .line 135
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/Http2Connection;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-virtual {v4, v5, v14, v15}, Lokhttp3/internal/http2/Http2Connection;->IIlllllll(IJ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    invoke-virtual {v6, v4, v5}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwww(J)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_2
    move-object/from16 v13, p1

    .line 155
    .line 156
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_3

    .line 161
    .line 162
    if-nez v0, :cond_3

    .line 163
    .line 164
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Www()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    const/4 v10, 0x1

    .line 168
    :cond_3
    move-wide v11, v8

    .line 169
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->Wwww()V

    .line 174
    .line 175
    .line 176
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    .line 178
    monitor-exit v6

    .line 179
    if-eqz v10, :cond_5

    .line 180
    .line 181
    const-wide/16 v4, 0x0

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_5
    cmp-long v2, v11, v8

    .line 186
    .line 187
    if-eqz v2, :cond_6

    .line 188
    .line 189
    invoke-virtual {v1, v11, v12}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Kkkkkkkkkkkkkkkkkk(J)V

    .line 190
    .line 191
    .line 192
    return-wide v11

    .line 193
    :cond_6
    if-nez v0, :cond_7

    .line 194
    .line 195
    return-wide v8

    .line 196
    :cond_7
    throw v0

    .line 197
    :catchall_1
    move-exception v0

    .line 198
    goto :goto_4

    .line 199
    :cond_8
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 200
    .line 201
    const-string v2, "stream closed"

    .line 202
    .line 203
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->Wwww()V

    .line 212
    .line 213
    .line 214
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 215
    :goto_4
    monitor-exit v6

    .line 216
    throw v0

    .line 217
    :cond_9
    const-string v0, "byteCount < 0: "

    .line 218
    .line 219
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->Wwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Stream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

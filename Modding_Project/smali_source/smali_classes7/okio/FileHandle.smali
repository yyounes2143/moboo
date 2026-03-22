.class public abstract Lokio/FileHandle;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileHandle$FileHandleSource;,
        Lokio/FileHandle$FileHandleSink;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u000289B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001c\u0010\u0015J/\u0010!\u001a\u00020\u001f2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\u001fH$\u00a2\u0006\u0004\u0008!\u0010\"J/\u0010#\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\u001fH$\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u000fH$\u00a2\u0006\u0004\u0008%\u0010\u0015J\u000f\u0010&\u001a\u00020\u0007H$\u00a2\u0006\u0004\u0008&\u0010\u0013J\u000f\u0010\'\u001a\u00020\u000fH$\u00a2\u0006\u0004\u0008\'\u0010\u0015R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+R\u0016\u0010-\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010)R\u0016\u00100\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u001b\u00107\u001a\u000601j\u0002`28\u0006\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\u00a8\u0006:"
    }
    d2 = {
        "Lokio/FileHandle;",
        "Ljava/io/Closeable;",
        "Lokio/Closeable;",
        "",
        "readWrite",
        "<init>",
        "(Z)V",
        "",
        "fileOffset",
        "Lokio/Buffer;",
        "sink",
        "byteCount",
        "Kkkkkkkkkkkkkkk",
        "(JLokio/Buffer;J)J",
        "source",
        "",
        "Kkkkkkkkkk",
        "(JLokio/Buffer;J)V",
        "Kkkkkkkkkkkk",
        "()J",
        "flush",
        "()V",
        "Lokio/Source;",
        "Kkkkkkkkkkk",
        "(J)Lokio/Source;",
        "Lokio/Sink;",
        "Kkkkkkkkkkkkkk",
        "(J)Lokio/Sink;",
        "close",
        "",
        "array",
        "",
        "arrayOffset",
        "Kkkkkkkkkkkkkkkkkk",
        "(J[BII)I",
        "Kkkkkkkkkkkkkkkk",
        "(J[BII)V",
        "Kkkkkkkkkkkkkkkkkkk",
        "Kkkkkkkkkkkkkkkkk",
        "Kkkkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "getReadWrite",
        "()Z",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "closed",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "openStreamCount",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lokio/Lock;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Kkkkkkkkkkkkkkkkkkkkk",
        "()Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "FileHandleSink",
        "FileHandleSource",
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
        "SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 5 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 6 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,444:1\n33#2:445\n33#2:447\n33#2:448\n33#2:449\n33#2:450\n33#2:451\n33#2:452\n33#2:453\n33#2:457\n33#2:459\n1#3:446\n62#4:454\n62#4:455\n62#4:456\n51#5:458\n86#6:460\n86#6:461\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n*L\n69#1:445\n81#1:447\n92#1:448\n105#1:449\n119#1:450\n129#1:451\n139#1:452\n151#1:453\n221#1:457\n287#1:459\n169#1:454\n195#1:455\n202#1:456\n248#1:458\n345#1:460\n374#1:461\n*E\n"
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    invoke-static {}, Lokio/_JvmPlatformKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic Kkkkkkkkkkkkk(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const-wide/16 p1, 0x0

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileHandle;->Kkkkkkkkkkkkkk(J)Lokio/Sink;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkkkk(Lokio/FileHandle;JLokio/Buffer;J)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->Kkkkkkkkkk(JLokio/Buffer;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/FileHandle;I)V
    .locals 0

    .line 1
    iput p1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwww(Lokio/FileHandle;JLokio/Buffer;J)J
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lokio/FileHandle;->Kkkkkkkkkkkkkkk(JLokio/Buffer;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileHandle;)I
    .locals 0

    .line 1
    iget p0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileHandle;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final Kkkkkkkkkk(JLokio/Buffer;J)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    move-wide v4, p4

    .line 8
    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJ)V

    .line 9
    .line 10
    .line 11
    add-long p4, p1, v4

    .line 12
    .line 13
    move-wide v1, p1

    .line 14
    :cond_0
    :goto_0
    cmp-long p1, v1, p4

    .line 15
    .line 16
    if-gez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p3, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 19
    .line 20
    sub-long v3, p4, v1

    .line 21
    .line 22
    iget p2, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    iget v0, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 25
    .line 26
    sub-int/2addr p2, v0

    .line 27
    int-to-long v5, p2

    .line 28
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    long-to-int v5, v3

    .line 33
    iget-object v3, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 34
    .line 35
    iget v4, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 36
    .line 37
    move-object v0, p0

    .line 38
    invoke-virtual/range {v0 .. v5}, Lokio/FileHandle;->Kkkkkkkkkkkkkkkk(J[BII)V

    .line 39
    .line 40
    .line 41
    iget p2, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 42
    .line 43
    add-int/2addr p2, v5

    .line 44
    iput p2, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 45
    .line 46
    int-to-long v3, v5

    .line 47
    add-long/2addr v1, v3

    .line 48
    invoke-virtual {p3}, Lokio/Buffer;->Kk()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    sub-long/2addr v5, v3

    .line 53
    invoke-virtual {p3, v5, v6}, Lokio/Buffer;->Kkk(J)V

    .line 54
    .line 55
    .line 56
    iget p2, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 57
    .line 58
    iget v0, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 59
    .line 60
    if-ne p2, v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {p1}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iput-object p2, p3, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 67
    .line 68
    invoke-static {p1}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public final Kkkkkkkkkkk(J)Lokio/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    iput v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwww:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lokio/FileHandle$FileHandleSource;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSource;-><init>(Lokio/FileHandle;J)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    const-string p1, "closed"

    .line 28
    .line 29
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final Kkkkkkkkkkkk()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/FileHandle;->Kkkkkkkkkkkkkkkkk()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    const-string v1, "closed"

    .line 23
    .line 24
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw v1
.end method

.method public final Kkkkkkkkkkkkkk(J)Lokio/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwww:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lokio/FileHandle$FileHandleSink;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSink;-><init>(Lokio/FileHandle;J)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_1
    const-string p1, "closed"

    .line 32
    .line 33
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "file handle is read-only"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final Kkkkkkkkkkkkkkk(JLokio/Buffer;J)J
    .locals 14

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-wide/from16 v1, p4

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v3, v1, v3

    .line 8
    .line 9
    if-ltz v3, :cond_3

    .line 10
    .line 11
    add-long/2addr v1, p1

    .line 12
    move-wide v4, p1

    .line 13
    :goto_0
    cmp-long v3, v4, v1

    .line 14
    .line 15
    if-gez v3, :cond_2

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v3}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    iget-object v6, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 23
    .line 24
    iget v7, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 25
    .line 26
    sub-long v10, v1, v4

    .line 27
    .line 28
    rsub-int v3, v7, 0x2000

    .line 29
    .line 30
    int-to-long v12, v3

    .line 31
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v10

    .line 35
    long-to-int v8, v10

    .line 36
    move-object v3, p0

    .line 37
    invoke-virtual/range {v3 .. v8}, Lokio/FileHandle;->Kkkkkkkkkkkkkkkkkk(J[BII)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const/4 v3, -0x1

    .line 42
    if-ne v6, v3, :cond_1

    .line 43
    .line 44
    iget v1, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 45
    .line 46
    iget v2, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    if-ne v1, v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v9}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 55
    .line 56
    invoke-static {v9}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    cmp-long v0, p1, v4

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    const-wide/16 v0, -0x1

    .line 64
    .line 65
    return-wide v0

    .line 66
    :cond_1
    iget v3, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 67
    .line 68
    add-int/2addr v3, v6

    .line 69
    iput v3, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 70
    .line 71
    int-to-long v6, v6

    .line 72
    add-long/2addr v4, v6

    .line 73
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 74
    .line 75
    .line 76
    move-result-wide v8

    .line 77
    add-long/2addr v8, v6

    .line 78
    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->Kkk(J)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    sub-long/2addr v4, p1

    .line 83
    return-wide v4

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v3, "byteCount < 0: "

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v1
.end method

.method public abstract Kkkkkkkkkkkkkkkk(J[BII)V
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Kkkkkkkkkkkkkkkkk()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Kkkkkkkkkkkkkkkkkk(J[BII)I
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Kkkkkkkkkkkkkkkkkkk()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Kkkkkkkkkkkkkkkkkkkk()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkk()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    :try_start_1
    iput-boolean v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 16
    .line 17
    iget v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwww:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :try_start_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lokio/FileHandle;->Kkkkkkkkkkkkkkkkkkkk()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method public final flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lokio/FileHandle;->Kkkkkkkkkkkkkkkkkkk()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_1
    const-string v1, "closed"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, "file handle is read-only"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

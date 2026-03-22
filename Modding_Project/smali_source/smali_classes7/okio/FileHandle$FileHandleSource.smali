.class final Lokio/FileHandle$FileHandleSource;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/Source;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/FileHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileHandleSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lokio/FileHandle$FileHandleSource;",
        "Lokio/Source;",
        "Lokio/FileHandle;",
        "fileHandle",
        "",
        "position",
        "<init>",
        "(Lokio/FileHandle;J)V",
        "Lokio/Buffer;",
        "sink",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "",
        "close",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/FileHandle;",
        "getFileHandle",
        "()Lokio/FileHandle;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "J",
        "getPosition",
        "()J",
        "setPosition",
        "(J)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "getClosed",
        "()Z",
        "setClosed",
        "(Z)V",
        "closed",
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
        "SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n33#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n*L\n436#1:446\n*E\n"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/FileHandle;J)V
    .locals 0
    .param p1    # Lokio/FileHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileHandle;

    .line 5
    .line 6
    iput-wide p2, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    iget-object v0, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileHandle;

    .line 10
    .line 11
    invoke-virtual {v0}, Lokio/FileHandle;->Kkkkkkkkkkkkkkkkkkkkk()Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileHandle;

    .line 19
    .line 20
    invoke-static {v1}, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileHandle;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    invoke-static {v1, v2}, Lokio/FileHandle;->Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/FileHandle;I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileHandle;

    .line 30
    .line 31
    invoke-static {v1}, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileHandle;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileHandle;

    .line 38
    .line 39
    invoke-static {v1}, Lokio/FileHandle;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileHandle;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileHandle;

    .line 52
    .line 53
    invoke-virtual {v0}, Lokio/FileHandle;->Kkkkkkkkkkkkkkkkkkkk()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileHandle;

    .line 6
    .line 7
    iget-wide v2, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    move-wide v5, p2

    .line 11
    invoke-static/range {v1 .. v6}, Lokio/FileHandle;->Wwwwwwwwwwwwww(Lokio/FileHandle;JLokio/Buffer;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    cmp-long p3, p1, v0

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    iget-wide v0, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 22
    .line 23
    add-long/2addr v0, p1

    .line 24
    iput-wide v0, p0, Lokio/FileHandle$FileHandleSource;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 25
    .line 26
    :cond_0
    return-wide p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string p2, "closed"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method

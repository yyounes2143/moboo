.class public final Lcoil/disk/DiskCache$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/disk/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0017R\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcoil/disk/DiskCache$Builder;",
        "",
        "<init>",
        "()V",
        "Ljava/io/File;",
        "directory",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/io/File;)Lcoil/disk/DiskCache$Builder;",
        "Lokio/Path;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Path;)Lcoil/disk/DiskCache$Builder;",
        "Lcoil/disk/DiskCache;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcoil/disk/DiskCache;",
        "Lokio/Path;",
        "Lokio/FileSystem;",
        "Lokio/FileSystem;",
        "fileSystem",
        "",
        "D",
        "maxSizePercent",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "J",
        "minimumMaxSizeBytes",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "maximumMaxSizeBytes",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "maxSizeBytes",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "cleanupDispatcher",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:D

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileSystem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileSystem;

    .line 5
    .line 6
    iput-object v0, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileSystem;

    .line 7
    .line 8
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:D

    .line 14
    .line 15
    const-wide/32 v0, 0xa00000

    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 19
    .line 20
    const-wide/32 v0, 0xfa00000

    .line 21
    .line 22
    .line 23
    iput-wide v0, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 24
    .line 25
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Lcoil/disk/DiskCache$Builder;
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 2
    .line 3
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Lcoil/disk/DiskCache$Builder;
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p1, v3, v1, v2}, Lokio/Path$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Lcoil/disk/DiskCache$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskCache;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v3, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 2
    .line 3
    if-eqz v3, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:D

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmpl-double v0, v0, v4

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 14
    .line 15
    invoke-virtual {v3}, Lokio/Path;->Wwwwwwwwwwwwwwwwwwwww()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:D

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    long-to-double v4, v4

    .line 33
    mul-double/2addr v1, v4

    .line 34
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    long-to-double v4, v4

    .line 39
    mul-double/2addr v1, v4

    .line 40
    double-to-long v4, v1

    .line 41
    iget-wide v6, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 42
    .line 43
    iget-wide v8, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 44
    .line 45
    invoke-static/range {v4 .. v9}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    iget-wide v0, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 51
    .line 52
    :goto_0
    move-wide v1, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-wide v0, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    new-instance v0, Lcoil/disk/RealDiskCache;

    .line 58
    .line 59
    iget-object v4, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileSystem;

    .line 60
    .line 61
    iget-object v5, p0, Lcoil/disk/DiskCache$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 62
    .line 63
    invoke-direct/range {v0 .. v5}, Lcoil/disk/RealDiskCache;-><init>(JLokio/Path;Lokio/FileSystem;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v1, "directory == null"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0
.end method

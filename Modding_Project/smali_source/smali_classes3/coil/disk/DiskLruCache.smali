.class public final Lcoil/disk/DiskLruCache;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/disk/DiskLruCache$Snapshot;,
        Lcoil/disk/DiskLruCache$Editor;,
        Lcoil/disk/DiskLruCache$Entry;,
        Lcoil/disk/DiskLruCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0008\u0008*\u0001`\u0008\u0000\u0018\u0000 c2\u00060\u0001j\u0002`\u00022\u00020\u0003:\u0004cdefB7\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0013J\u000f\u0010\u001c\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0013J#\u0010!\u001a\u00020\u00112\n\u0010\u001e\u001a\u00060\u001dR\u00020\u00002\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u001b\u0010\'\u001a\u00020\u001f2\n\u0010&\u001a\u00060%R\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0013J\u000f\u0010*\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0013J\u000f\u0010+\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008+\u0010$J\u000f\u0010,\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008,\u0010\u0013J\u000f\u0010-\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008-\u0010\u0013J\u0017\u0010/\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008/\u0010\u001aJ\r\u00100\u001a\u00020\u0011\u00a2\u0006\u0004\u00080\u0010\u0013J\u001e\u00102\u001a\u0008\u0018\u000101R\u00020\u00002\u0006\u0010.\u001a\u00020\u0017H\u0086\u0002\u00a2\u0006\u0004\u00082\u00103J\u001b\u00104\u001a\u0008\u0018\u00010\u001dR\u00020\u00002\u0006\u0010.\u001a\u00020\u0017\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00086\u0010\u0013J\u000f\u00107\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00087\u0010\u0013R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0014\u0010\u000e\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010=R\u0014\u0010@\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u00109R\u0014\u0010B\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u00109R\u0014\u0010D\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u00109R8\u0010I\u001a&\u0012\u0004\u0012\u00020\u0017\u0012\u0008\u0012\u00060%R\u00020\u00000Ej\u0012\u0012\u0004\u0012\u00020\u0017\u0012\u0008\u0012\u00060%R\u00020\u0000`F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0014\u0010M\u001a\u00020J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010O\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010;R\u0016\u0010Q\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010=R\u0018\u0010T\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010W\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010Y\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010VR\u0016\u0010[\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010VR\u0016\u0010]\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010VR\u0016\u0010_\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010VR\u0014\u0010\u0005\u001a\u00020`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010b\u00a8\u0006g"
    }
    d2 = {
        "Lcoil/disk/DiskLruCache;",
        "Ljava/io/Closeable;",
        "Lokio/Closeable;",
        "Ljava/io/Flushable;",
        "Lokio/FileSystem;",
        "fileSystem",
        "Lokio/Path;",
        "directory",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "cleanupDispatcher",
        "",
        "maxSize",
        "",
        "appVersion",
        "valueCount",
        "<init>",
        "(Lokio/FileSystem;Lokio/Path;Lkotlinx/coroutines/CoroutineDispatcher;JII)V",
        "",
        "Kk",
        "()V",
        "Lokio/BufferedSink;",
        "Kkkk",
        "()Lokio/BufferedSink;",
        "",
        "line",
        "Illllllllllllllllllllllllllll",
        "(Ljava/lang/String;)V",
        "Kkk",
        "Illlllllllllllllllllllll",
        "Lcoil/disk/DiskLruCache$Editor;",
        "editor",
        "",
        "success",
        "Kkkkkkkkkkk",
        "(Lcoil/disk/DiskLruCache$Editor;Z)V",
        "Kkkkkk",
        "()Z",
        "Lcoil/disk/DiskLruCache$Entry;",
        "entry",
        "Illlllllllllllllllllllllllll",
        "(Lcoil/disk/DiskLruCache$Entry;)Z",
        "Kkkkkkkkkkkk",
        "Illlllllllllllllllllllllll",
        "Illllllllllllllllllllllllll",
        "Kkkkkkkkkk",
        "Kkkkk",
        "key",
        "Illllllllllllllllllllllll",
        "Kkkkkkk",
        "Lcoil/disk/DiskLruCache$Snapshot;",
        "Kkkkkkkk",
        "(Ljava/lang/String;)Lcoil/disk/DiskLruCache$Snapshot;",
        "Kkkkkkkkk",
        "(Ljava/lang/String;)Lcoil/disk/DiskLruCache$Editor;",
        "close",
        "flush",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/Path;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "J",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwww",
        "journalFile",
        "Wwwwwwwwwwwwwwwwwwww",
        "journalFileTmp",
        "Wwwwwwwwwwwwwwwwwww",
        "journalFileBackup",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "Wwwwwwwwwwwwwwwwww",
        "Ljava/util/LinkedHashMap;",
        "lruEntries",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Wwwwwwwwwwwwwwwww",
        "Lkotlinx/coroutines/CoroutineScope;",
        "cleanupScope",
        "Wwwwwwwwwwwwwwww",
        "size",
        "Wwwwwwwwwwwwwww",
        "operationsSinceRewrite",
        "Wwwwwwwwwwwwww",
        "Lokio/BufferedSink;",
        "journalWriter",
        "Wwwwwwwwwwwww",
        "Z",
        "hasJournalErrors",
        "Wwwwwwwwwwww",
        "initialized",
        "Wwwwwwwwwww",
        "closed",
        "Wwwwwwwwww",
        "mostRecentTrimFailed",
        "Wwwwwwwww",
        "mostRecentRebuildFailed",
        "coil/disk/DiskLruCache$fileSystem$1",
        "Wwwwwwww",
        "Lcoil/disk/DiskLruCache$fileSystem$1;",
        "Companion",
        "Editor",
        "Entry",
        "Snapshot",
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


# static fields
.field public static final Companion:Lcoil/disk/DiskLruCache$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwww:Lkotlin/text/Regex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwww:Z

.field public Wwwwwwwwww:Z

.field public Wwwwwwwwwww:Z

.field public Wwwwwwwwwwww:Z

.field public Wwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwww:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcoil/disk/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwww:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwww:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil/disk/DiskLruCache$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil/disk/DiskLruCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil/disk/DiskLruCache;->Companion:Lcoil/disk/DiskLruCache$Companion;

    .line 8
    .line 9
    new-instance v0, Lkotlin/text/Regex;

    .line 10
    .line 11
    const-string v1, "[a-z0-9_-]{1,120}"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcoil/disk/DiskLruCache;->Wwwwwww:Lkotlin/text/Regex;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Lkotlinx/coroutines/CoroutineDispatcher;JII)V
    .locals 2
    .param p1    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 5
    .line 6
    iput-wide p4, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    iput p6, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    iput p7, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long p4, p4, v0

    .line 15
    .line 16
    if-lez p4, :cond_1

    .line 17
    .line 18
    if-lez p7, :cond_0

    .line 19
    .line 20
    const-string p4, "journal"

    .line 21
    .line 22
    invoke-virtual {p2, p4}, Lokio/Path;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/Path;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    iput-object p4, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 27
    .line 28
    const-string p4, "journal.tmp"

    .line 29
    .line 30
    invoke-virtual {p2, p4}, Lokio/Path;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/Path;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    iput-object p4, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 35
    .line 36
    const-string p4, "journal.bkp"

    .line 37
    .line 38
    invoke-virtual {p2, p4}, Lokio/Path;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/Path;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 43
    .line 44
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    const/4 p4, 0x0

    .line 47
    const/high16 p5, 0x3f400000    # 0.75f

    .line 48
    .line 49
    const/4 p6, 0x1

    .line 50
    invoke-direct {p2, p4, p5, p6}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    invoke-static {p2, p6, p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p3, p6}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism(I)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-interface {p2, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iput-object p2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineScope;

    .line 73
    .line 74
    new-instance p2, Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Lcoil/disk/DiskLruCache$fileSystem$1;-><init>(Lokio/FileSystem;)V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p2, "valueCount <= 0"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p2, "maxSize <= 0"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public static final synthetic Kkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Illlllllllllllllllllllll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Illlllllllllllllllllllllll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;Lokio/BufferedSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Entry;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcoil/disk/DiskLruCache;->Illlllllllllllllllllllllllll(Lcoil/disk/DiskLruCache$Entry;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkk()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;)I
    .locals 0

    .line 1
    iget p0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;)Lcoil/disk/DiskLruCache$fileSystem$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwww(Lcoil/disk/DiskLruCache;)Lokio/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskLruCache;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Editor;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcoil/disk/DiskLruCache;->Kkkkkkkkkkk(Lcoil/disk/DiskLruCache$Editor;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final declared-synchronized Illlllllllllllllllllllll()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 14
    .line 15
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lokio/FileSystem;->Wwwwwwwwwwwwwwww(Lokio/Path;Z)Lokio/Sink;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/16 v3, 0xa

    .line 33
    .line 34
    invoke-interface {v1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 35
    .line 36
    .line 37
    const-string v1, "1"

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    int-to-long v4, v1

    .line 49
    invoke-interface {v0, v4, v5}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwww(J)Lokio/BufferedSink;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 57
    .line 58
    int-to-long v4, v1

    .line 59
    invoke-interface {v0, v4, v5}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwww(J)Lokio/BufferedSink;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Lcoil/disk/DiskLruCache$Entry;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Editor;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const/16 v6, 0x20

    .line 96
    .line 97
    if-eqz v5, :cond_1

    .line 98
    .line 99
    const-string v5, "DIRTY"

    .line 100
    .line 101
    invoke-interface {v0, v5}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-interface {v0, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception v1

    .line 119
    goto :goto_2

    .line 120
    :cond_1
    const-string v5, "CLEAN"

    .line 121
    .line 122
    invoke-interface {v0, v5}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-interface {v0, v5}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwww(Lokio/BufferedSink;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    :goto_2
    if-eqz v0, :cond_4

    .line 146
    .line 147
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catchall_2
    move-exception v0

    .line 152
    if-nez v1, :cond_3

    .line 153
    .line 154
    move-object v1, v0

    .line 155
    goto :goto_3

    .line 156
    :cond_3
    :try_start_3
    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_3
    if-nez v1, :cond_6

    .line 160
    .line 161
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 162
    .line 163
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 172
    .line 173
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 174
    .line 175
    iget-object v3, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 176
    .line 177
    invoke-virtual {v0, v1, v3}, Lokio/ForwardingFileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Lokio/Path;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 181
    .line 182
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 183
    .line 184
    iget-object v3, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 185
    .line 186
    invoke-virtual {v0, v1, v3}, Lokio/ForwardingFileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Lokio/Path;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 190
    .line 191
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_5
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 198
    .line 199
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 200
    .line 201
    iget-object v3, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 202
    .line 203
    invoke-virtual {v0, v1, v3}, Lokio/ForwardingFileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Lokio/Path;)V

    .line 204
    .line 205
    .line 206
    :goto_4
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkk()Lokio/BufferedSink;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iput-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 211
    .line 212
    iput v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwww:I

    .line 213
    .line 214
    iput-boolean v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwww:Z

    .line 215
    .line 216
    iput-boolean v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwww:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    .line 218
    monitor-exit p0

    .line 219
    return-void

    .line 220
    :cond_6
    :try_start_4
    throw v1

    .line 221
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    throw v0
.end method

.method public final Illllllllllllllllllllllll(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcoil/disk/DiskLruCache;->Wwwwwww:Lkotlin/text/Regex;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x22

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public final Illlllllllllllllllllllllll()V
    .locals 4

    .line 1
    :cond_0
    iget-wide v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Illllllllllllllllllllllllll()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwww:Z

    .line 18
    .line 19
    return-void
.end method

.method public final Illllllllllllllllllllllllll()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcoil/disk/DiskLruCache$Entry;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcoil/disk/DiskLruCache;->Illlllllllllllllllllllllllll(Lcoil/disk/DiskLruCache$Entry;)Z

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public final Illlllllllllllllllllllllllll(Lcoil/disk/DiskLruCache$Entry;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v3, "DIRTY"

    .line 16
    .line 17
    invoke-interface {v0, v3}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v0, v3}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v3, 0x1

    .line 41
    if-gtz v0, :cond_5

    .line 42
    .line 43
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    :goto_0
    if-ge v4, v0, :cond_2

    .line 54
    .line 55
    iget-object v5, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lokio/Path;

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V

    .line 68
    .line 69
    .line 70
    iget-wide v5, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwww:J

    .line 71
    .line 72
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    aget-wide v8, v7, v4

    .line 77
    .line 78
    sub-long/2addr v5, v8

    .line 79
    iput-wide v5, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwww:J

    .line 80
    .line 81
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-wide/16 v6, 0x0

    .line 86
    .line 87
    aput-wide v6, v5, v4

    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwww:I

    .line 93
    .line 94
    add-int/2addr v0, v3

    .line 95
    iput v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwww:I

    .line 96
    .line 97
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    const-string v4, "REMOVE"

    .line 102
    .line 103
    invoke-interface {v0, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v0, v2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkk()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkk()V

    .line 135
    .line 136
    .line 137
    :cond_4
    return v3

    .line 138
    :cond_5
    :goto_1
    invoke-virtual {p1, v3}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 139
    .line 140
    .line 141
    return v3
.end method

.method public final Illllllllllllllllllllllllllll(Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v8, 0x1

    .line 5
    const/4 v5, 0x6

    .line 6
    const/4 v6, 0x0

    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    const-string v10, "unexpected journal line: "

    .line 18
    .line 19
    const/4 v11, -0x1

    .line 20
    if-eq v9, v11, :cond_6

    .line 21
    .line 22
    add-int/lit8 v3, v9, 0x1

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const/16 v2, 0x20

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    move-object/from16 v1, p1

    .line 30
    .line 31
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x0

    .line 37
    if-ne v2, v11, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v6, 0x6

    .line 44
    if-ne v9, v6, :cond_1

    .line 45
    .line 46
    const-string v6, "REMOVE"

    .line 47
    .line 48
    invoke-static {v1, v6, v7, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    iget-object v1, v0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :cond_1
    iget-object v6, v0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    if-nez v12, :cond_2

    .line 71
    .line 72
    new-instance v12, Lcoil/disk/DiskLruCache$Entry;

    .line 73
    .line 74
    invoke-direct {v12, v0, v3}, Lcoil/disk/DiskLruCache$Entry;-><init>(Lcoil/disk/DiskLruCache;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v6, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_2
    check-cast v12, Lcoil/disk/DiskLruCache$Entry;

    .line 81
    .line 82
    const/4 v3, 0x5

    .line 83
    if-eq v2, v11, :cond_3

    .line 84
    .line 85
    if-ne v9, v3, :cond_3

    .line 86
    .line 87
    const-string v6, "CLEAN"

    .line 88
    .line 89
    invoke-static {v1, v6, v7, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    add-int/2addr v2, v8

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    new-array v14, v8, [C

    .line 101
    .line 102
    const/16 v1, 0x20

    .line 103
    .line 104
    aput-char v1, v14, v7

    .line 105
    .line 106
    const/16 v17, 0x6

    .line 107
    .line 108
    const/16 v18, 0x0

    .line 109
    .line 110
    const/4 v15, 0x0

    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v12, v8}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12, v5}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskLruCache$Editor;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12, v1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_3
    if-ne v2, v11, :cond_4

    .line 128
    .line 129
    if-ne v9, v3, :cond_4

    .line 130
    .line 131
    const-string v3, "DIRTY"

    .line 132
    .line 133
    invoke-static {v1, v3, v7, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_4

    .line 138
    .line 139
    new-instance v1, Lcoil/disk/DiskLruCache$Editor;

    .line 140
    .line 141
    invoke-direct {v1, v0, v12}, Lcoil/disk/DiskLruCache$Editor;-><init>(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Entry;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12, v1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskLruCache$Editor;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_4
    if-ne v2, v11, :cond_5

    .line 149
    .line 150
    const/4 v2, 0x4

    .line 151
    if-ne v9, v2, :cond_5

    .line 152
    .line 153
    const-string v2, "READ"

    .line 154
    .line 155
    invoke-static {v1, v2, v7, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    return-void

    .line 162
    :cond_5
    new-instance v2, Ljava/io/IOException;

    .line 163
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v2

    .line 183
    :cond_6
    move-object/from16 v1, p1

    .line 184
    .line 185
    new-instance v2, Ljava/io/IOException;

    .line 186
    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v2
.end method

.method public final Kk()V
    .locals 10

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lokio/FileSystem;->Wwwwwwwwwwwwwww(Lokio/Path;)Lokio/Source;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :try_start_0
    invoke-interface {v1}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v1}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v1}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v1}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-interface {v1}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "libcore.io.DiskLruCache"

    .line 36
    .line 37
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    const-string v7, "1"

    .line 44
    .line 45
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    iget v7, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 52
    .line 53
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_1

    .line 62
    .line 63
    iget v7, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 64
    .line 65
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_1

    .line 74
    .line 75
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-gtz v7, :cond_1

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p0, v2}, Lcoil/disk/DiskLruCache;->Illllllllllllllllllllllllllll(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    sub-int/2addr v0, v2

    .line 101
    iput v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwww:I

    .line 102
    .line 103
    invoke-interface {v1}, Lokio/BufferedSource;->Wwwwwwwwwwww()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    .line 109
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Illlllllllllllllllllllll()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkk()Lokio/BufferedSink;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 118
    .line 119
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    goto :goto_2

    .line 123
    :cond_1
    new-instance v7, Ljava/io/IOException;

    .line 124
    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v9, "unexpected journal header: ["

    .line 131
    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const/16 v0, 0x5d

    .line 163
    .line 164
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :goto_2
    if-eqz v1, :cond_3

    .line 176
    .line 177
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :catchall_1
    move-exception v1

    .line 182
    if-nez v0, :cond_2

    .line 183
    .line 184
    move-object v0, v1

    .line 185
    goto :goto_3

    .line 186
    :cond_2
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    :cond_3
    :goto_3
    if-nez v0, :cond_4

    .line 190
    .line 191
    return-void

    .line 192
    :cond_4
    throw v0
.end method

.method public final Kkk()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcoil/disk/DiskLruCache$Entry;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    iget v4, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 33
    .line 34
    :goto_1
    if-ge v5, v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    aget-wide v7, v6, v5

    .line 41
    .line 42
    add-long/2addr v1, v7

    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v3, v4}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskLruCache$Editor;)V

    .line 48
    .line 49
    .line 50
    iget v4, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 51
    .line 52
    :goto_2
    if-ge v5, v4, :cond_2

    .line 53
    .line 54
    iget-object v6, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Lokio/Path;

    .line 65
    .line 66
    invoke-virtual {v6, v7}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Lokio/Path;

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iput-wide v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwww:J

    .line 92
    .line 93
    return-void
.end method

.method public final Kkkk()Lokio/BufferedSink;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Lokio/Sink;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcoil/disk/FaultHidingSink;

    .line 10
    .line 11
    new-instance v2, Lcoil/disk/DiskLruCache$newJournalWriter$faultHidingSink$1;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcoil/disk/DiskLruCache$newJournalWriter$faultHidingSink$1;-><init>(Lcoil/disk/DiskLruCache;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Lcoil/disk/FaultHidingSink;-><init>(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final Kkkkk()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    new-instance v3, Lcoil/disk/DiskLruCache$launchCleanup$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcoil/disk/DiskLruCache$launchCleanup$1;-><init>(Lcoil/disk/DiskLruCache;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Kkkkkk()Z
    .locals 2

    .line 1
    iget v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwww:I

    .line 2
    .line 3
    const/16 v1, 0x7d0

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final declared-synchronized Kkkkkkk()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 16
    .line 17
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 26
    .line 27
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 36
    .line 37
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 46
    .line 47
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 48
    .line 49
    iget-object v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lokio/ForwardingFileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Lokio/Path;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 55
    .line 56
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Z

    .line 59
    .line 60
    .line 61
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    const/4 v1, 0x1

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    :try_start_2
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kk()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkk()V

    .line 69
    .line 70
    .line 71
    iput-boolean v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwww:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catch_0
    const/4 v0, 0x0

    .line 76
    :try_start_3
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkkkkkk()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_4
    iput-boolean v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwww:Z

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception v1

    .line 83
    iput-boolean v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwww:Z

    .line 84
    .line 85
    throw v1

    .line 86
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Illlllllllllllllllllllll()V

    .line 87
    .line 88
    .line 89
    iput-boolean v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwww:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    throw v0
.end method

.method public final declared-synchronized Kkkkkkkk(Ljava/lang/String;)Lcoil/disk/DiskLruCache$Snapshot;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkkkkkkkk()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcoil/disk/DiskLruCache;->Illllllllllllllllllllllll(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkkk()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcoil/disk/DiskLruCache$Entry;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Snapshot;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwww:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    iput v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwww:I

    .line 33
    .line 34
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 35
    .line 36
    const-string v2, "READ"

    .line 37
    .line 38
    invoke-interface {v1, v2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 39
    .line 40
    .line 41
    const/16 v2, 0x20

    .line 42
    .line 43
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, p1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 47
    .line 48
    .line 49
    const/16 p1, 0xa

    .line 50
    .line 51
    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkk()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_0
    monitor-exit p0

    .line 67
    return-object v0

    .line 68
    :cond_2
    :goto_1
    monitor-exit p0

    .line 69
    const/4 p1, 0x0

    .line 70
    return-object p1

    .line 71
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p1
.end method

.method public final declared-synchronized Kkkkkkkkk(Ljava/lang/String;)Lcoil/disk/DiskLruCache$Editor;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkkkkkkkk()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcoil/disk/DiskLruCache;->Illllllllllllllllllllllll(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkkk()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcoil/disk/DiskLruCache$Entry;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    move-object v2, v1

    .line 30
    :goto_0
    if-eqz v2, :cond_1

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    :cond_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    :try_start_1
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 37
    .line 38
    .line 39
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-object v1

    .line 44
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwww:Z

    .line 45
    .line 46
    if-nez v2, :cond_6

    .line 47
    .line 48
    iget-boolean v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwww:Z

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget-object v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 54
    .line 55
    const-string v3, "DIRTY"

    .line 56
    .line 57
    invoke-interface {v2, v3}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 58
    .line 59
    .line 60
    const/16 v3, 0x20

    .line 61
    .line 62
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, p1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 66
    .line 67
    .line 68
    const/16 v3, 0xa

    .line 69
    .line 70
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 71
    .line 72
    .line 73
    invoke-interface {v2}, Lokio/BufferedSink;->flush()V

    .line 74
    .line 75
    .line 76
    iget-boolean v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwww:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-object v1

    .line 82
    :cond_4
    if-nez v0, :cond_5

    .line 83
    .line 84
    :try_start_3
    new-instance v0, Lcoil/disk/DiskLruCache$Entry;

    .line 85
    .line 86
    invoke-direct {v0, p0, p1}, Lcoil/disk/DiskLruCache$Entry;-><init>(Lcoil/disk/DiskLruCache;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_5
    new-instance p1, Lcoil/disk/DiskLruCache$Editor;

    .line 95
    .line 96
    invoke-direct {p1, p0, v0}, Lcoil/disk/DiskLruCache$Editor;-><init>(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Entry;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskLruCache$Editor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .line 101
    .line 102
    monitor-exit p0

    .line 103
    return-object p1

    .line 104
    :cond_6
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkk()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    .line 106
    .line 107
    monitor-exit p0

    .line 108
    return-object v1

    .line 109
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    throw p1
.end method

.method public final Kkkkkkkkkk()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 5
    .line 6
    iget-object v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcoil/util/-FileSystems;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileSystem;Lokio/Path;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final declared-synchronized Kkkkkkkkkkk(Lcoil/disk/DiskLruCache$Editor;Z)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Entry;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_b

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_4

    .line 18
    .line 19
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_4

    .line 24
    .line 25
    iget v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()[Z

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    aget-boolean v4, v4, v3

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    iget-object v4, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Lokio/Path;

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto/16 :goto_7

    .line 63
    .line 64
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :try_start_1
    iget p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 68
    .line 69
    :goto_1
    if-ge v1, p1, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lokio/Path;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lokio/Path;

    .line 90
    .line 91
    iget-object v4, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 92
    .line 93
    invoke-virtual {v4, v2}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    iget-object v4, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 100
    .line 101
    invoke-virtual {v4, v2, v3}, Lokio/ForwardingFileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Lokio/Path;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Lokio/Path;

    .line 116
    .line 117
    invoke-static {v2, v4}, Lcoil/util/-FileSystems;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileSystem;Lokio/Path;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    aget-wide v4, v2, v1

    .line 125
    .line 126
    iget-object v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Lokio/FileMetadata;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lokio/FileMetadata;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    goto :goto_3

    .line 143
    :cond_3
    const-wide/16 v2, 0x0

    .line 144
    .line 145
    :goto_3
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    aput-wide v2, v6, v1

    .line 150
    .line 151
    iget-wide v6, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwww:J

    .line 152
    .line 153
    sub-long/2addr v6, v4

    .line 154
    add-long/2addr v6, v2

    .line 155
    iput-wide v6, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwww:J

    .line 156
    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    iget p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 161
    .line 162
    :goto_4
    if-ge v1, p1, :cond_5

    .line 163
    .line 164
    iget-object v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwww:Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Lokio/Path;

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_5
    const/4 p1, 0x0

    .line 183
    invoke-virtual {v0, p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskLruCache$Editor;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_6

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lcoil/disk/DiskLruCache;->Illlllllllllllllllllllllllll(Lcoil/disk/DiskLruCache$Entry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .line 194
    .line 195
    monitor-exit p0

    .line 196
    return-void

    .line 197
    :cond_6
    :try_start_2
    iget p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwww:I

    .line 198
    .line 199
    const/4 v1, 0x1

    .line 200
    add-int/2addr p1, v1

    .line 201
    iput p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwww:I

    .line 202
    .line 203
    iget-object p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 204
    .line 205
    const/16 v2, 0xa

    .line 206
    .line 207
    const/16 v3, 0x20

    .line 208
    .line 209
    if-nez p2, :cond_8

    .line 210
    .line 211
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-eqz p2, :cond_7

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_7
    iget-object p2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    const-string p2, "REMOVE"

    .line 228
    .line 229
    invoke-interface {p1, p2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 230
    .line 231
    .line 232
    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-interface {p1, p2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 243
    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_8
    :goto_5
    invoke-virtual {v0, v1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 247
    .line 248
    .line 249
    const-string p2, "CLEAN"

    .line 250
    .line 251
    invoke-interface {p1, p2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 252
    .line 253
    .line 254
    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-interface {p1, p2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, p1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwww(Lokio/BufferedSink;)V

    .line 265
    .line 266
    .line 267
    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 268
    .line 269
    .line 270
    :goto_6
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 271
    .line 272
    .line 273
    iget-wide p1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwww:J

    .line 274
    .line 275
    iget-wide v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 276
    .line 277
    cmp-long p1, p1, v0

    .line 278
    .line 279
    if-gtz p1, :cond_9

    .line 280
    .line 281
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkk()Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_a

    .line 286
    .line 287
    :cond_9
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkk()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    .line 289
    .line 290
    :cond_a
    monitor-exit p0

    .line 291
    return-void

    .line 292
    :cond_b
    :try_start_3
    const-string p1, "Check failed."

    .line 293
    .line 294
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 295
    .line 296
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p2

    .line 300
    :goto_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    throw p1
.end method

.method public final Kkkkkkkkkkkk()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "cache is closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwww:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwww:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    new-array v3, v2, [Lcoil/disk/DiskLruCache$Entry;

    .line 20
    .line 21
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, [Lcoil/disk/DiskLruCache$Entry;

    .line 26
    .line 27
    array-length v3, v0

    .line 28
    :goto_0
    if-ge v2, v3, :cond_2

    .line 29
    .line 30
    aget-object v4, v0, v2

    .line 31
    .line 32
    invoke-virtual {v4}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Editor;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v4}, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_3

    .line 44
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Illlllllllllllllllllllllll()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CoroutineScope;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 57
    .line 58
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 62
    .line 63
    iput-boolean v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :cond_3
    :goto_2
    :try_start_1
    iput-boolean v1, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwww:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Kkkkkkkkkkkk()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache;->Illlllllllllllllllllllllll()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 15
    .line 16
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    throw v0
.end method

.class public final Lokhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/DiskLruCache$Snapshot;,
        Lokhttp3/internal/cache/DiskLruCache$Editor;,
        Lokhttp3/internal/cache/DiskLruCache$Entry;,
        Lokhttp3/internal/cache/DiskLruCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000}\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\t*\u0001v\u0018\u0000 z2\u00020\u00012\u00020\u0002:\u0004z{|}B9\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0012J\u000f\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0012J\u000f\u0010\u001f\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001dJ\u0017\u0010!\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0019J\r\u0010\"\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\"\u0010\u0012J\u000f\u0010#\u001a\u00020\u0010H\u0000\u00a2\u0006\u0004\u0008#\u0010\u0012J\u001e\u0010%\u001a\u0008\u0018\u00010$R\u00020\u00002\u0006\u0010 \u001a\u00020\u0016H\u0086\u0002\u00a2\u0006\u0004\u0008%\u0010&J\'\u0010)\u001a\u0008\u0018\u00010(R\u00020\u00002\u0006\u0010 \u001a\u00020\u00162\u0008\u0008\u0002\u0010\'\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008)\u0010*J#\u0010-\u001a\u00020\u00102\n\u0010+\u001a\u00060(R\u00020\u00002\u0006\u0010,\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008-\u0010.J\u0015\u0010/\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0016\u00a2\u0006\u0004\u0008/\u00100J\u001b\u00103\u001a\u00020\u001b2\n\u00102\u001a\u000601R\u00020\u0000H\u0000\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u00085\u0010\u0012J\u000f\u00106\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u00086\u0010\u0012J\r\u00107\u001a\u00020\u0010\u00a2\u0006\u0004\u00087\u0010\u0012J\r\u00108\u001a\u00020\u0010\u00a2\u0006\u0004\u00088\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u00038\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u001a\u0010\t\u001a\u00020\u00078\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008C\u0010B\u001a\u0004\u0008D\u0010ER*\u0010\u000b\u001a\u00020\n2\u0006\u0010F\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u0014\u0010N\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010>R\u0014\u0010P\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010>R\u0014\u0010R\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010>R\u0016\u0010T\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010HR\u0018\u0010W\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR*\u0010]\u001a\u0012\u0012\u0004\u0012\u00020\u0016\u0012\u0008\u0012\u000601R\u00020\u00000X8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\R\u0016\u0010_\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010BR\u0016\u0010b\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0016\u0010d\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010aR\u0016\u0010f\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010aR\"\u0010k\u001a\u00020\u001b8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008g\u0010a\u001a\u0004\u0008h\u0010\u001d\"\u0004\u0008i\u0010jR\u0016\u0010m\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010aR\u0016\u0010o\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010aR\u0016\u0010q\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010HR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0014\u0010y\u001a\u00020v8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008w\u0010x\u00a8\u0006~"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache;",
        "Ljava/io/Closeable;",
        "Ljava/io/Flushable;",
        "Lokhttp3/internal/io/FileSystem;",
        "fileSystem",
        "Ljava/io/File;",
        "directory",
        "",
        "appVersion",
        "valueCount",
        "",
        "maxSize",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "taskRunner",
        "<init>",
        "(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V",
        "",
        "Kkk",
        "()V",
        "Lokio/BufferedSink;",
        "Kkkkk",
        "()Lokio/BufferedSink;",
        "",
        "line",
        "Kk",
        "(Ljava/lang/String;)V",
        "Kkkk",
        "",
        "Kkkkkk",
        "()Z",
        "Kkkkkkkkkkkkkkkkkk",
        "Illlllllllllllllllllllllll",
        "key",
        "Illlllllllllllllllllllll",
        "Kkkkkkk",
        "Illllllllllllllllllllllllllll",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "Kkkkkkkkkkkkk",
        "(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "expectedSequenceNumber",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "Kkkkkkkkkkkkkkk",
        "(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "editor",
        "success",
        "Kkkkkkkkkkkkkkkkk",
        "(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V",
        "Illlllllllllllllllllllllllll",
        "(Ljava/lang/String;)Z",
        "Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "entry",
        "Illllllllllllllllllllllllll",
        "(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z",
        "flush",
        "close",
        "Illllllllllllllllllllllll",
        "Kkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokhttp3/internal/io/FileSystem;",
        "Kkkkkkkkkk",
        "()Lokhttp3/internal/io/FileSystem;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/io/File;",
        "Kkkkkkkkkkk",
        "()Ljava/io/File;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Kkkkkkkk",
        "()I",
        "value",
        "Wwwwwwwwwwwwwwwwwwwww",
        "J",
        "getMaxSize",
        "()J",
        "setMaxSize",
        "(J)V",
        "Wwwwwwwwwwwwwwwwwwww",
        "journalFile",
        "Wwwwwwwwwwwwwwwwwww",
        "journalFileTmp",
        "Wwwwwwwwwwwwwwwwww",
        "journalFileBackup",
        "Wwwwwwwwwwwwwwwww",
        "size",
        "Wwwwwwwwwwwwwwww",
        "Lokio/BufferedSink;",
        "journalWriter",
        "Ljava/util/LinkedHashMap;",
        "Wwwwwwwwwwwwwww",
        "Ljava/util/LinkedHashMap;",
        "Kkkkkkkkk",
        "()Ljava/util/LinkedHashMap;",
        "lruEntries",
        "Wwwwwwwwwwwwww",
        "redundantOpCount",
        "Wwwwwwwwwwwww",
        "Z",
        "hasJournalErrors",
        "Wwwwwwwwwwww",
        "civilizedFileSystem",
        "Wwwwwwwwwww",
        "initialized",
        "Wwwwwwwwww",
        "Kkkkkkkkkkkk",
        "setClosed$okhttp",
        "(Z)V",
        "closed",
        "Wwwwwwwww",
        "mostRecentTrimFailed",
        "Wwwwwwww",
        "mostRecentRebuildFailed",
        "Wwwwwww",
        "nextSequenceNumber",
        "Lokhttp3/internal/concurrent/TaskQueue;",
        "Wwwwww",
        "Lokhttp3/internal/concurrent/TaskQueue;",
        "cleanupQueue",
        "okhttp3/internal/cache/DiskLruCache$cleanupTask$1",
        "Wwwww",
        "Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;",
        "cleanupTask",
        "Companion",
        "Editor",
        "Entry",
        "Snapshot",
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


# static fields
.field public static final Companion:Lokhttp3/internal/cache/DiskLruCache$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkkkkkkk:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkkkkkkkk:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkkkkkkkkkkk:Lkotlin/text/Regex;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkkkkkkkkkkkk:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Www:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwww:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final Wwwww:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwww:Lokhttp3/internal/concurrent/TaskQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwww:J

.field public Wwwwwwww:Z

.field public Wwwwwwwww:Z

.field public Wwwwwwwwww:Z

.field public Wwwwwwwwwww:Z

.field public Wwwwwwwwwwww:Z

.field public Wwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwww:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwww:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwww:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Companion:Lokhttp3/internal/cache/DiskLruCache$Companion;

    .line 8
    .line 9
    const-string v0, "journal"

    .line 10
    .line 11
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Wwww:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "journal.tmp"

    .line 14
    .line 15
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Www:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "journal.bkp"

    .line 18
    .line 19
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "libcore.io.DiskLruCache"

    .line 22
    .line 23
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "1"

    .line 26
    .line 27
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 28
    .line 29
    const-wide/16 v0, -0x1

    .line 30
    .line 31
    sput-wide v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkk:J

    .line 32
    .line 33
    new-instance v0, Lkotlin/text/Regex;

    .line 34
    .line 35
    const-string v1, "[a-z0-9_-]{1,120}"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkk:Lkotlin/text/Regex;

    .line 41
    .line 42
    const-string v0, "CLEAN"

    .line 43
    .line 44
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "DIRTY"

    .line 47
    .line 48
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "REMOVE"

    .line 51
    .line 52
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "READ"

    .line 55
    .line 56
    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V
    .locals 2
    .param p1    # Lokhttp3/internal/io/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lokhttp3/internal/concurrent/TaskRunner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 7
    .line 8
    iput p3, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    iput p4, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 11
    .line 12
    iput-wide p5, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 13
    .line 14
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    const/high16 p3, 0x3f400000    # 0.75f

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, v1, p3, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {p7}, Lokhttp3/internal/concurrent/TaskRunner;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/concurrent/TaskQueue;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwww:Lokhttp3/internal/concurrent/TaskQueue;

    .line 30
    .line 31
    sget-object p1, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 32
    .line 33
    const-string p3, " Cache"

    .line 34
    .line 35
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p3, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    .line 40
    .line 41
    invoke-direct {p3, p0, p1}, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object p3, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwww:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    .line 45
    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .line 48
    cmp-long p1, p5, v0

    .line 49
    .line 50
    if-lez p1, :cond_1

    .line 51
    .line 52
    if-lez p4, :cond_0

    .line 53
    .line 54
    new-instance p1, Ljava/io/File;

    .line 55
    .line 56
    sget-object p3, Lokhttp3/internal/cache/DiskLruCache;->Wwww:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 62
    .line 63
    new-instance p1, Ljava/io/File;

    .line 64
    .line 65
    sget-object p3, Lokhttp3/internal/cache/DiskLruCache;->Www:Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 71
    .line 72
    new-instance p1, Ljava/io/File;

    .line 73
    .line 74
    sget-object p3, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/io/File;

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

.method public static synthetic Kkkkkkkkkkkkkk(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JILjava/lang/Object;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-wide p2, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkk:J

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkk(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkk(Lokhttp3/internal/cache/DiskLruCache;I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwww:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkk(Lokhttp3/internal/cache/DiskLruCache;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkkk(Lokhttp3/internal/cache/DiskLruCache;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkkkk(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Kkkkkkkkkkkkkkkkkkkkkkk(Lokhttp3/internal/cache/DiskLruCache;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwww(Lokhttp3/internal/cache/DiskLruCache;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkk()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/DiskLruCache;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/DiskLruCache;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final Illlllllllllllllllllllll(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkk:Lkotlin/text/Regex;

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

.method public final Illllllllllllllllllllllll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Illlllllllllllllllllllllll()Z

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
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwww:Z

    .line 18
    .line 19
    return-void
.end method

.method public final Illlllllllllllllllllllllll()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

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
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 22
    .line 23
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->Illllllllllllllllllllllllll(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

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

.method public final Illllllllllllllllllllllllll(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    .locals 11
    .param p1    # Lokhttp3/internal/cache/DiskLruCache$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwww:Z

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v4, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v0, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v0, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-gtz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    :cond_2
    invoke-virtual {p1, v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwww(Z)V

    .line 55
    .line 56
    .line 57
    return v3

    .line 58
    :cond_3
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 66
    .line 67
    .line 68
    :goto_1
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    :goto_2
    if-ge v4, v0, :cond_5

    .line 72
    .line 73
    add-int/lit8 v5, v4, 0x1

    .line 74
    .line 75
    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 76
    .line 77
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Ljava/io/File;

    .line 86
    .line 87
    invoke-interface {v6, v7}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 88
    .line 89
    .line 90
    iget-wide v6, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwww:J

    .line 91
    .line 92
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    aget-wide v9, v8, v4

    .line 97
    .line 98
    sub-long/2addr v6, v9

    .line 99
    iput-wide v6, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwww:J

    .line 100
    .line 101
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    const-wide/16 v7, 0x0

    .line 106
    .line 107
    aput-wide v7, v6, v4

    .line 108
    .line 109
    move v4, v5

    .line 110
    goto :goto_2

    .line 111
    :cond_5
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwww:I

    .line 112
    .line 113
    add-int/2addr v0, v3

    .line 114
    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwww:I

    .line 115
    .line 116
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 117
    .line 118
    if-nez v0, :cond_6

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    sget-object v4, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {v0, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v0, v2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 137
    .line 138
    .line 139
    :goto_3
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkk()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwww:Lokhttp3/internal/concurrent/TaskQueue;

    .line 155
    .line 156
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwww:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    .line 157
    .line 158
    const/4 v8, 0x2

    .line 159
    const/4 v9, 0x0

    .line 160
    const-wide/16 v6, 0x0

    .line 161
    .line 162
    invoke-static/range {v4 .. v9}, Lokhttp3/internal/concurrent/TaskQueue;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    return v3
.end method

.method public final declared-synchronized Illlllllllllllllllllllllllll(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkk()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkk()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->Illlllllllllllllllllllll(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lokhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->Illllllllllllllllllllllllll(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwww:J

    .line 31
    .line 32
    iget-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 33
    .line 34
    cmp-long v1, v1, v3

    .line 35
    .line 36
    if-gtz v1, :cond_1

    .line 37
    .line 38
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwww:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    monitor-exit p0

    .line 44
    return p1

    .line 45
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw p1
.end method

.method public final declared-synchronized Illllllllllllllllllllllllllll()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 8
    .line 9
    .line 10
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 11
    .line 12
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Lokio/Sink;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v2, 0xa

    .line 29
    .line 30
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 43
    .line 44
    int-to-long v3, v1

    .line 45
    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwww(J)Lokio/BufferedSink;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkk()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-long v3, v1

    .line 57
    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwww(J)Lokio/BufferedSink;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkk()Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v1

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
    move-result v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 90
    .line 91
    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const/16 v5, 0x20

    .line 96
    .line 97
    if-eqz v4, :cond_1

    .line 98
    .line 99
    sget-object v4, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 100
    .line 101
    invoke-interface {v0, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-interface {v0, v3}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception v1

    .line 120
    goto :goto_3

    .line 121
    :cond_1
    sget-object v4, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {v0, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-interface {v0, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwww(Lokio/BufferedSink;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 151
    .line 152
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 153
    .line 154
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    .line 160
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 161
    .line 162
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 163
    .line 164
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 165
    .line 166
    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/io/File;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    goto :goto_4

    .line 172
    :cond_3
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 173
    .line 174
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 175
    .line 176
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 177
    .line 178
    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/io/File;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 182
    .line 183
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 184
    .line 185
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkk()Lokio/BufferedSink;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 193
    .line 194
    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwww:Z

    .line 196
    .line 197
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwww:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    .line 199
    monitor-exit p0

    .line 200
    return-void

    .line 201
    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 202
    :catchall_2
    move-exception v2

    .line 203
    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw v2

    .line 207
    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    throw v0
.end method

.method public final Kk(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v6, 0x6

    .line 4
    const/4 v7, 0x0

    .line 5
    const/16 v3, 0x20

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v2, p1

    .line 10
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const-string v8, "unexpected journal line: "

    .line 15
    .line 16
    const/4 v9, -0x1

    .line 17
    if-eq p1, v9, :cond_6

    .line 18
    .line 19
    add-int/lit8 v4, p1, 0x1

    .line 20
    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x0

    .line 23
    const/16 v3, 0x20

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x0

    .line 32
    if-ne v3, v9, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget-object v7, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-ne p1, v10, :cond_1

    .line 45
    .line 46
    invoke-static {v2, v7, v0, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    :cond_1
    iget-object v7, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 69
    .line 70
    if-nez v7, :cond_2

    .line 71
    .line 72
    new-instance v7, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 73
    .line 74
    invoke-direct {v7, p0, v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v10, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    invoke-interface {v10, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_2
    if-eq v3, v9, :cond_3

    .line 83
    .line 84
    sget-object v4, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-ne p1, v10, :cond_3

    .line 91
    .line 92
    invoke-static {v2, v4, v0, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    add-int/2addr v3, v1

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    new-array v9, v1, [C

    .line 104
    .line 105
    const/16 p1, 0x20

    .line 106
    .line 107
    aput-char p1, v9, v0

    .line 108
    .line 109
    const/4 v12, 0x6

    .line 110
    const/4 v13, 0x0

    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v7, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwww(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v6}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_3
    if-ne v3, v9, :cond_4

    .line 128
    .line 129
    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-ne p1, v4, :cond_4

    .line 136
    .line 137
    invoke-static {v2, v1, v0, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    new-instance p1, Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 144
    .line 145
    invoke-direct {p1, p0, v7}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_4
    if-ne v3, v9, :cond_5

    .line 153
    .line 154
    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-ne p1, v3, :cond_5

    .line 161
    .line 162
    invoke-static {v2, v1, v0, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_5

    .line 167
    .line 168
    return-void

    .line 169
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 170
    .line 171
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 180
    .line 181
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1
.end method

.method public final Kkk()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Lokio/Source;

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
    sget-object v7, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

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
    sget-object v7, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

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
    iget v7, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwww:I

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
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkk()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-gtz v4, :cond_1

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->Kk(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_2

    .line 96
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkk()Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    sub-int/2addr v0, v2

    .line 105
    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwww:I

    .line 106
    .line 107
    invoke-interface {v1}, Lokio/BufferedSource;->Wwwwwwwwwwww()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    .line 113
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Illllllllllllllllllllllllllll()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkk()Lokio/BufferedSink;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 122
    .line 123
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 131
    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v8, "unexpected journal header: ["

    .line 138
    .line 139
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 v0, 0x5d

    .line 164
    .line 165
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    :catchall_1
    move-exception v2

    .line 178
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    throw v2
.end method

.method public final Kkkk()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 29
    .line 30
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 38
    .line 39
    :goto_1
    if-ge v3, v2, :cond_0

    .line 40
    .line 41
    add-int/lit8 v4, v3, 0x1

    .line 42
    .line 43
    iget-wide v5, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwww:J

    .line 44
    .line 45
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    aget-wide v8, v7, v3

    .line 50
    .line 51
    add-long/2addr v5, v8

    .line 52
    iput-wide v5, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwww:J

    .line 53
    .line 54
    move v3, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v1, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 58
    .line 59
    .line 60
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 61
    .line 62
    :goto_2
    if-ge v3, v2, :cond_2

    .line 63
    .line 64
    add-int/lit8 v4, v3, 0x1

    .line 65
    .line 66
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 67
    .line 68
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/io/File;

    .line 77
    .line 78
    invoke-interface {v5, v6}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 79
    .line 80
    .line 81
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 82
    .line 83
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/io/File;

    .line 92
    .line 93
    invoke-interface {v5, v3}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 94
    .line 95
    .line 96
    move v3, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method

.method public final Kkkkk()Lokio/BufferedSink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Lokio/Sink;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lokhttp3/internal/cache/FaultHidingSink;

    .line 10
    .line 11
    new-instance v2, Lokhttp3/internal/cache/DiskLruCache$newJournalWriter$faultHidingSink$1;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lokhttp3/internal/cache/DiskLruCache$newJournalWriter$faultHidingSink$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/cache/FaultHidingSink;-><init>(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

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

.method public final Kkkkkk()Z
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwww:I

    .line 2
    .line 3
    const/16 v1, 0x7d0

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final declared-synchronized Kkkkkkk()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Thread "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " MUST hold lock on "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :cond_2
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 62
    .line 63
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 64
    .line 65
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 72
    .line 73
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 74
    .line 75
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 82
    .line 83
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 90
    .line 91
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 92
    .line 93
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 94
    .line 95
    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/io/File;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 99
    .line 100
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 101
    .line 102
    invoke-static {v0, v1}, Lokhttp3/internal/Util;->Www(Lokhttp3/internal/io/FileSystem;Ljava/io/File;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwww:Z

    .line 107
    .line 108
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 109
    .line 110
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 111
    .line 112
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Z

    .line 113
    .line 114
    .line 115
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    const/4 v1, 0x1

    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    :try_start_2
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkk()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkk()V

    .line 123
    .line 124
    .line 125
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwww:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    monitor-exit p0

    .line 128
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_3
    sget-object v2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    .line 131
    .line 132
    invoke-virtual {v2}, Lokhttp3/internal/platform/Platform$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/platform/Platform;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v4, "DiskLruCache "

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v4, " is corrupt: "

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v4, ", removing"

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    const/4 v4, 0x5

    .line 173
    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/platform/Platform;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    .line 175
    .line 176
    const/4 v0, 0x0

    .line 177
    :try_start_4
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkk()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    .line 179
    .line 180
    :try_start_5
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwww:Z

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :catchall_1
    move-exception v1

    .line 184
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwww:Z

    .line 185
    .line 186
    throw v1

    .line 187
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Illllllllllllllllllllllllllll()V

    .line 188
    .line 189
    .line 190
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwww:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    .line 192
    monitor-exit p0

    .line 193
    return-void

    .line 194
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 195
    throw v0
.end method

.method public final Kkkkkkkk()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public final Kkkkkkkkk()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkk()Lokhttp3/internal/io/FileSystem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkk()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Kkkkkkkkkkkk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final declared-synchronized Kkkkkkkkkkkkk(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkk()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkk()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->Illlllllllllllllllllllll(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v1

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object v1

    .line 32
    :cond_1
    :try_start_2
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwww:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    iput v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwww:I

    .line 37
    .line 38
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 39
    .line 40
    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v1, v2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/16 v2, 0x20

    .line 47
    .line 48
    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1, p1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/16 v1, 0xa

    .line 57
    .line 58
    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkk()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwww:Lokhttp3/internal/concurrent/TaskQueue;

    .line 68
    .line 69
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwww:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    .line 70
    .line 71
    const/4 v5, 0x2

    .line 72
    const/4 v6, 0x0

    .line 73
    const-wide/16 v3, 0x0

    .line 74
    .line 75
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/concurrent/TaskQueue;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    move-object p1, v0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    monitor-exit p0

    .line 83
    return-object v0

    .line 84
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    throw p1
.end method

.method public final declared-synchronized Kkkkkkkkkkkkkkk(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkk()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkk()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->Illlllllllllllllllllllll(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 18
    .line 19
    sget-wide v1, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkk:J

    .line 20
    .line 21
    cmp-long v1, p2, v1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    cmp-long p2, v3, p2

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    move-object p1, v0

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    :goto_0
    monitor-exit p0

    .line 41
    return-object v2

    .line 42
    :cond_1
    if-nez v0, :cond_2

    .line 43
    .line 44
    move-object p2, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_1
    if-eqz p2, :cond_3

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-object v2

    .line 54
    :cond_3
    if-eqz v0, :cond_4

    .line 55
    .line 56
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 57
    .line 58
    .line 59
    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    if-eqz p2, :cond_4

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-object v2

    .line 64
    :cond_4
    :try_start_3
    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwww:Z

    .line 65
    .line 66
    if-nez p2, :cond_8

    .line 67
    .line 68
    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwww:Z

    .line 69
    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 74
    .line 75
    sget-object p3, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {p2, p3}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    const/16 v1, 0x20

    .line 82
    .line 83
    invoke-interface {p3, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-interface {p3, p1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    const/16 v1, 0xa

    .line 92
    .line 93
    invoke-interface {p3, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 94
    .line 95
    .line 96
    invoke-interface {p2}, Lokio/BufferedSink;->flush()V

    .line 97
    .line 98
    .line 99
    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwww:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .line 101
    if-eqz p2, :cond_6

    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return-object v2

    .line 105
    :cond_6
    if-nez v0, :cond_7

    .line 106
    .line 107
    :try_start_4
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 108
    .line 109
    invoke-direct {v0, p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

    .line 113
    .line 114
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    :cond_7
    new-instance p1, Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 118
    .line 119
    invoke-direct {p1, p0, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    .line 124
    .line 125
    monitor-exit p0

    .line 126
    return-object p1

    .line 127
    :cond_8
    :goto_2
    :try_start_5
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwww:Lokhttp3/internal/concurrent/TaskQueue;

    .line 128
    .line 129
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwww:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    .line 130
    .line 131
    const/4 v7, 0x2

    .line 132
    const/4 v8, 0x0

    .line 133
    const-wide/16 v5, 0x0

    .line 134
    .line 135
    invoke-static/range {v3 .. v8}, Lokhttp3/internal/concurrent/TaskQueue;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    .line 137
    .line 138
    monitor-exit p0

    .line 139
    return-object v2

    .line 140
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 141
    throw p1
.end method

.method public final Kkkkkkkkkkkkkkkk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/File;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final declared-synchronized Kkkkkkkkkkkkkkkkk(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .locals 9
    .param p1    # Lokhttp3/internal/cache/DiskLruCache$Editor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Editor;

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
    if-eqz v1, :cond_c

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, v2, :cond_2

    .line 29
    .line 30
    add-int/lit8 v4, v3, 0x1

    .line 31
    .line 32
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Z

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    aget-boolean v5, v5, v3

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 41
    .line 42
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/io/File;

    .line 51
    .line 52
    invoke-interface {v5, v3}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p1, v0

    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_0
    move v3, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 70
    .line 71
    .line 72
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string p2, "Newly created entry didn\'t create value for index "

    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_2
    iget p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 89
    .line 90
    :goto_1
    if-ge v1, p1, :cond_5

    .line 91
    .line 92
    add-int/lit8 v2, v1, 0x1

    .line 93
    .line 94
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/io/File;

    .line 103
    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 113
    .line 114
    invoke-interface {v4, v3}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Ljava/io/File;

    .line 129
    .line 130
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 131
    .line 132
    invoke-interface {v5, v3, v4}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/io/File;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    aget-wide v5, v3, v1

    .line 140
    .line 141
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 142
    .line 143
    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[J

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    aput-wide v3, v7, v1

    .line 152
    .line 153
    iget-wide v7, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwww:J

    .line 154
    .line 155
    sub-long/2addr v7, v5

    .line 156
    add-long/2addr v7, v3

    .line 157
    iput-wide v7, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwww:J

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/io/FileSystem;

    .line 161
    .line 162
    invoke-interface {v1, v3}, Lokhttp3/internal/io/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    :goto_2
    move v1, v2

    .line 166
    goto :goto_1

    .line 167
    :cond_5
    const/4 p1, 0x0

    .line 168
    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_6

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->Illllllllllllllllllllllllll(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    .line 180
    monitor-exit p0

    .line 181
    return-void

    .line 182
    :cond_6
    :try_start_2
    iget p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwww:I

    .line 183
    .line 184
    const/4 v1, 0x1

    .line 185
    add-int/2addr p1, v1

    .line 186
    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwww:I

    .line 187
    .line 188
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 189
    .line 190
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    const/16 v3, 0xa

    .line 195
    .line 196
    const/16 v4, 0x20

    .line 197
    .line 198
    if-nez v2, :cond_8

    .line 199
    .line 200
    if-eqz p2, :cond_7

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_7
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkk()Ljava/util/LinkedHashMap;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {p2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    sget-object p2, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 215
    .line 216
    invoke-interface {p1, p2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-interface {p2, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-interface {p1, p2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 228
    .line 229
    .line 230
    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_8
    :goto_3
    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwww(Z)V

    .line 235
    .line 236
    .line 237
    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkk:Ljava/lang/String;

    .line 238
    .line 239
    invoke-interface {p1, v1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-interface {v1, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-interface {p1, v1}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwww(Lokio/BufferedSink;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 257
    .line 258
    .line 259
    if-eqz p2, :cond_9

    .line 260
    .line 261
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwww:J

    .line 262
    .line 263
    const-wide/16 v3, 0x1

    .line 264
    .line 265
    add-long/2addr v3, v1

    .line 266
    iput-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwww:J

    .line 267
    .line 268
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwww(J)V

    .line 269
    .line 270
    .line 271
    :cond_9
    :goto_4
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 272
    .line 273
    .line 274
    iget-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwww:J

    .line 275
    .line 276
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwww:J

    .line 277
    .line 278
    cmp-long p1, p1, v0

    .line 279
    .line 280
    if-gtz p1, :cond_a

    .line 281
    .line 282
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkk()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_b

    .line 287
    .line 288
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwww:Lokhttp3/internal/concurrent/TaskQueue;

    .line 289
    .line 290
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwww:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    .line 291
    .line 292
    const/4 v4, 0x2

    .line 293
    const/4 v5, 0x0

    .line 294
    const-wide/16 v2, 0x0

    .line 295
    .line 296
    invoke-static/range {v0 .. v5}, Lokhttp3/internal/concurrent/TaskQueue;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    .line 298
    .line 299
    :cond_b
    monitor-exit p0

    .line 300
    return-void

    .line 301
    :cond_c
    :try_start_3
    const-string p1, "Check failed."

    .line 302
    .line 303
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 304
    .line 305
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p2

    .line 309
    :goto_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    throw p1
.end method

.method public final declared-synchronized Kkkkkkkkkkkkkkkkkk()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwww:Z
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
    const-string v0, "cache is closed"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v1

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwww:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwww:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwww:Ljava/util/LinkedHashMap;

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
    new-array v3, v2, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 20
    .line 21
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 28
    .line 29
    array-length v3, v0

    .line 30
    :cond_1
    :goto_0
    if-ge v2, v3, :cond_3

    .line 31
    .line 32
    aget-object v4, v0, v2

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Illllllllllllllllllllllll()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 59
    .line 60
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 65
    .line 66
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 71
    .line 72
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwww:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwww:Z
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
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Kkkkkkkkkkkkkkkkkk()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->Illllllllllllllllllllllll()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->Wwwwwwwwwwwwwwww:Lokio/BufferedSink;

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

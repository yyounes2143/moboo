.class final Lcom/facebook/internal/FileLruCache$BufferFile;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferFile"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/internal/FileLruCache$BufferFile;",
        "",
        "<init>",
        "()V",
        "Ljava/io/File;",
        "root",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/io/File;)V",
        "Ljava/io/FilenameFilter;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/io/FilenameFilter;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/io/File;)Ljava/io/File;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/io/FilenameFilter;",
        "filterExcludeBufferFiles",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "filterExcludeNonBufferFiles",
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


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/FileLruCache$BufferFile;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/FilenameFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/FilenameFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/internal/FileLruCache$BufferFile;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/internal/FileLruCache$BufferFile;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->INSTANCE:Lcom/facebook/internal/FileLruCache$BufferFile;

    .line 7
    .line 8
    new-instance v0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwwwww;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/FilenameFilter;

    .line 14
    .line 15
    new-instance v0, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwwww;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/facebook/internal/Wwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/FilenameFilter;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 p0, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    const-string v1, "buffer"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v1, v2, p0, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 p0, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    const-string v1, "buffer"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v1, v2, p0, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    return p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/internal/FileLruCache$BufferFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/internal/FileLruCache$BufferFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/FileLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "buffer"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/FilenameFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/FilenameFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/FilenameFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/internal/FileLruCache$BufferFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/FilenameFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;)V
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$BufferFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/FilenameFilter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

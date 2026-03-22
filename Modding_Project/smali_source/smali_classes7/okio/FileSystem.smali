.class public abstract Lokio/FileSystem;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileSystem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008&\u0018\u0000 22\u00020\u0001:\u00012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e2\u0006\u0010\r\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J+\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u0015J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010!\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0004\u0008!\u0010\"J!\u0010#\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\nH&\u00a2\u0006\u0004\u0008#\u0010 J\u0015\u0010$\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0004\u0008$\u0010\"J!\u0010&\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\nH&\u00a2\u0006\u0004\u0008&\u0010\'J\u0015\u0010(\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008(\u0010)J\u001f\u0010*\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\n\u00a2\u0006\u0004\u0008*\u0010\'J\u0015\u0010+\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008+\u0010)J\u001f\u0010.\u001a\u00020%2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008.\u0010/J!\u00100\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\nH&\u00a2\u0006\u0004\u00080\u0010\'J\u0015\u00101\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00081\u0010)\u00a8\u00063"
    }
    d2 = {
        "Lokio/FileSystem;",
        "",
        "<init>",
        "()V",
        "Lokio/Path;",
        "path",
        "Lokio/FileMetadata;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Path;)Lokio/FileMetadata;",
        "Wwwwwwwwwwwwwwwwwwwww",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Path;)Z",
        "dir",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Path;)Ljava/util/List;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "file",
        "Lokio/FileHandle;",
        "Wwwwwwwwwwwwwwwwwwww",
        "(Lokio/Path;)Lokio/FileHandle;",
        "mustCreate",
        "mustExist",
        "Wwwwwwwwwwwwwwwwww",
        "(Lokio/Path;ZZ)Lokio/FileHandle;",
        "Wwwwwwwwwwwwwwwwwww",
        "Lokio/Source;",
        "Wwwwwwwwwwwwwww",
        "(Lokio/Path;)Lokio/Source;",
        "Lokio/Sink;",
        "Wwwwwwwwwwwwwwww",
        "(Lokio/Path;Z)Lokio/Sink;",
        "Wwwwwwwwwwwwwwwww",
        "(Lokio/Path;)Lokio/Sink;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Path;Z)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Path;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "source",
        "target",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Path;Lokio/Path;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Companion",
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
        "SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,165:1\n52#2,21:166\n52#2,21:187\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/FileSystem\n*L\n67#1:166,21\n81#1:187,21\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lokio/FileSystem$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileSystem;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Path;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileSystem;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lokio/FileSystem$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokio/FileSystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokio/FileSystem;->Companion:Lokio/FileSystem$Companion;

    .line 8
    .line 9
    :try_start_0
    const-string v0, "java.nio.file.Files"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lokio/NioSystemFileSystem;

    .line 15
    .line 16
    invoke-direct {v0}, Lokio/NioSystemFileSystem;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    new-instance v0, Lokio/JvmSystemFileSystem;

    .line 21
    .line 22
    invoke-direct {v0}, Lokio/JvmSystemFileSystem;-><init>()V

    .line 23
    .line 24
    .line 25
    :goto_0
    sput-object v0, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileSystem;

    .line 26
    .line 27
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 28
    .line 29
    const-string v2, "java.io.tmpdir"

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static {v0, v2, v4, v3, v1}, Lokio/Path$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Path;

    .line 42
    .line 43
    new-instance v0, Lokio/internal/ResourceFileSystem;

    .line 44
    .line 45
    const-class v1, Lokio/internal/ResourceFileSystem;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1, v4}, Lokio/internal/ResourceFileSystem;-><init>(Ljava/lang/ClassLoader;Z)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/FileSystem;

    .line 55
    .line 56
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


# virtual methods
.method public abstract Wwwwwwwwwwwwwww(Lokio/Path;)Lokio/Source;
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract Wwwwwwwwwwwwwwww(Lokio/Path;Z)Lokio/Sink;
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final Wwwwwwwwwwwwwwwww(Lokio/Path;)Lokio/Sink;
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->Wwwwwwwwwwwwwwww(Lokio/Path;Z)Lokio/Sink;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public abstract Wwwwwwwwwwwwwwwwww(Lokio/Path;ZZ)Lokio/FileHandle;
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final Wwwwwwwwwwwwwwwwwww(Lokio/Path;)Lokio/FileHandle;
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwww(Lokio/Path;ZZ)Lokio/FileHandle;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwww(Lokio/Path;)Lokio/FileHandle;
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Lokio/FileMetadata;
    .param p1    # Lokio/Path;
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
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Lokio/FileMetadata;
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lokio/internal/-FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Ljava/util/List;
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Ljava/util/List;
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Z
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lokio/internal/-FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileSystem;Lokio/Path;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Z)V
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Z)V
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Z)V
    .locals 0
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lokio/internal/-FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileSystem;Lokio/Path;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)V
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Lokio/Path;)V
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Z)Lokio/Sink;
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;)Lokio/Sink;
    .locals 1
    .param p1    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Path;Z)Lokio/Sink;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

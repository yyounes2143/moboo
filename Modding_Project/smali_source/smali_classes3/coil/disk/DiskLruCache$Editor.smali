.class public final Lcoil/disk/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/disk/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0018\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0013\u0010\u0011\u001a\u0008\u0018\u00010\u0010R\u00020\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u0017\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u001bR\u0017\u0010!\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcoil/disk/DiskLruCache$Editor;",
        "",
        "Lcoil/disk/DiskLruCache$Entry;",
        "Lcoil/disk/DiskLruCache;",
        "entry",
        "<init>",
        "(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Entry;)V",
        "",
        "index",
        "Lokio/Path;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(I)Lokio/Path;",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/disk/DiskLruCache$Snapshot;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcoil/disk/DiskLruCache$Snapshot;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "",
        "success",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Z)V",
        "Lcoil/disk/DiskLruCache$Entry;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcoil/disk/DiskLruCache$Entry;",
        "Z",
        "closed",
        "",
        "[Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()[Z",
        "written",
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
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache$Entry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Entry;)V
    .locals 0
    .param p1    # Lcoil/disk/DiskLruCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/disk/DiskLruCache$Entry;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache$Entry;

    .line 7
    .line 8
    invoke-static {p1}, Lcoil/disk/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    new-array p1, p1, [Z

    .line 13
    .line 14
    iput-object p1, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()[Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Entry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache$Entry;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lokio/Path;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    aput-boolean v2, v1, p1

    .line 12
    .line 13
    iget-object v1, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache$Entry;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0}, Lcoil/disk/DiskLruCache;->Kkkkkkkkkkkkkkkkkkkkkkk(Lcoil/disk/DiskLruCache;)Lcoil/disk/DiskLruCache$fileSystem$1;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v2, p1

    .line 28
    check-cast v2, Lokio/Path;

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcoil/util/-FileSystems;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/FileSystem;Lokio/Path;)V

    .line 31
    .line 32
    .line 33
    check-cast p1, Lokio/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-object p1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :try_start_1
    const-string p1, "editor is closed"

    .line 40
    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    monitor-exit v0

    .line 48
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache$Entry;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache$Entry;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache$Entry;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {v0, p0, p1}, Lcoil/disk/DiskLruCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/disk/DiskLruCache;Lcoil/disk/DiskLruCache$Editor;Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 28
    .line 29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_1
    const-string p1, "editor is closed"

    .line 34
    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/disk/DiskLruCache$Snapshot;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/disk/DiskLruCache$Entry;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcoil/disk/DiskLruCache$Entry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcoil/disk/DiskLruCache;->Kkkkkkkk(Ljava/lang/String;)Lcoil/disk/DiskLruCache$Snapshot;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcoil/disk/DiskLruCache$Editor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.class public final Lcom/changdu/component/webviewcache/lru/d;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final a:Lcom/changdu/component/webviewcache/lru/e;

.field public final b:[Z

.field public c:Z

.field public final synthetic d:Lcom/changdu/component/webviewcache/lru/g;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/lru/g;Lcom/changdu/component/webviewcache/lru/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/lru/d;->d:Lcom/changdu/component/webviewcache/lru/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/changdu/component/webviewcache/lru/d;->a:Lcom/changdu/component/webviewcache/lru/e;

    .line 7
    .line 8
    iget-boolean p2, p2, Lcom/changdu/component/webviewcache/lru/e;->c:Z

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p1, Lcom/changdu/component/webviewcache/lru/g;->g:I

    .line 15
    .line 16
    new-array p1, p1, [Z

    .line 17
    .line 18
    :goto_0
    iput-object p1, p0, Lcom/changdu/component/webviewcache/lru/d;->b:[Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/io/OutputStream;
    .locals 4

    if-ltz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/lru/d;->d:Lcom/changdu/component/webviewcache/lru/g;

    iget v1, v0, Lcom/changdu/component/webviewcache/lru/g;->g:I

    if-ge p1, v1, :cond_2

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/changdu/component/webviewcache/lru/d;->a:Lcom/changdu/component/webviewcache/lru/e;

    iget-object v2, v1, Lcom/changdu/component/webviewcache/lru/e;->d:Lcom/changdu/component/webviewcache/lru/d;

    if-ne v2, p0, :cond_1

    .line 4
    iget-boolean v2, v1, Lcom/changdu/component/webviewcache/lru/e;->c:Z

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/changdu/component/webviewcache/lru/d;->b:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Lcom/changdu/component/webviewcache/lru/e;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 8
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/changdu/component/webviewcache/lru/d;->d:Lcom/changdu/component/webviewcache/lru/g;

    iget-object v1, v1, Lcom/changdu/component/webviewcache/lru/g;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :goto_1
    :try_start_4
    new-instance p1, Lcom/changdu/component/webviewcache/lru/c;

    invoke-direct {p1, p0, v1}, Lcom/changdu/component/webviewcache/lru/c;-><init>(Lcom/changdu/component/webviewcache/lru/d;Ljava/io/FileOutputStream;)V

    monitor-exit v0

    return-object p1

    .line 11
    :catch_1
    sget-object p1, Lcom/changdu/component/webviewcache/lru/g;->p:Lcom/changdu/component/webviewcache/lru/b;

    monitor-exit v0

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 13
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to be greater than 0 and less than the maximum value count of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/changdu/component/webviewcache/lru/d;->d:Lcom/changdu/component/webviewcache/lru/g;

    iget p1, p1, Lcom/changdu/component/webviewcache/lru/g;->g:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 2

    .line 15
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/lru/d;->c:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/changdu/component/webviewcache/lru/d;->d:Lcom/changdu/component/webviewcache/lru/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/changdu/component/webviewcache/lru/g;->a(Lcom/changdu/component/webviewcache/lru/d;Z)V

    .line 17
    iget-object v0, p0, Lcom/changdu/component/webviewcache/lru/d;->d:Lcom/changdu/component/webviewcache/lru/g;

    iget-object v1, p0, Lcom/changdu/component/webviewcache/lru/d;->a:Lcom/changdu/component/webviewcache/lru/e;

    iget-object v1, v1, Lcom/changdu/component/webviewcache/lru/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/changdu/component/webviewcache/lru/g;->d(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/changdu/component/webviewcache/lru/d;->d:Lcom/changdu/component/webviewcache/lru/g;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/changdu/component/webviewcache/lru/g;->a(Lcom/changdu/component/webviewcache/lru/d;Z)V

    return-void
.end method

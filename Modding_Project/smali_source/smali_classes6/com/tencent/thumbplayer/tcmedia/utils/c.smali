.class public Lcom/tencent/thumbplayer/tcmedia/utils/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

.field private b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/utils/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, "_key"

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/utils/a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    new-instance p1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    .line 62
    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 5

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    invoke-virtual {v4, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->a()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->a()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_4
    :goto_2
    monitor-exit p0

    return-object v1

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->c(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->c(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->a(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    .line 3
    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->c(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->c(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->a(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->a:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->b:Lcom/tencent/thumbplayer/tcmedia/utils/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/a;->a()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/c;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

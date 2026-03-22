.class public final Lcom/tencent/thumbplayer/tcmedia/g/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/thumbplayer/tcmedia/g/d/c;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/tencent/thumbplayer/tcmedia/g/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    .line 11
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->b:I

    .line 12
    .line 13
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->c:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;Ljava/util/Iterator;)Lcom/tencent/thumbplayer/tcmedia/g/b/f;
    .locals 3

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b()Lcom/tencent/thumbplayer/tcmedia/g/b/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final b(Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/b/f;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    iget-boolean v2, v1, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->b:Z

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;

    move-result-object v2

    sget-object v3, Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;->a:Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->k()V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->b(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)Lcom/tencent/thumbplayer/tcmedia/g/b/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/a;->a()Lcom/tencent/thumbplayer/tcmedia/g/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/g/a;->d()Lcom/tencent/thumbplayer/tcmedia/g/f/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->d:Lcom/tencent/thumbplayer/tcmedia/g/f/b$a;

    .line 16
    .line 17
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/g/f/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/g/f/b$a;

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;Ljava/util/Iterator;)Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->b()Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/b/f;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->b(Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    move-result-object p1

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "obtain codecWrapper:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecWrapperPool"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->c(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->b(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/tencent/thumbplayer/tcmedia/g/d/c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->a:Lcom/tencent/thumbplayer/tcmedia/g/d/c;

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->a:Lcom/tencent/thumbplayer/tcmedia/g/d/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pool:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CodecWrapperPool"

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "size:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " elements:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

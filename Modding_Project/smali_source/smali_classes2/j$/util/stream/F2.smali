.class public final Lj$/util/stream/F2;
.super Lj$/util/stream/x2;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/ArrayList;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lj$/util/stream/F2;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l()V
    .locals 6

    .line 400
    iget-object v0, p0, Lj$/util/stream/F2;->d:Ljava/util/ArrayList;

    .line 0
    instance-of v1, v0, Lj$/util/List;

    iget-object v2, p0, Lj$/util/stream/x2;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/util/List;

    invoke-interface {v0, v2}, Lj$/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lj$/util/List$-CC;->$default$sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 401
    :goto_0
    iget-object v0, p0, Lj$/util/stream/F2;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lj$/util/stream/e2;->a:Lj$/util/stream/i2;

    invoke-interface {v2, v0, v1}, Lj$/util/stream/i2;->m(J)V

    .line 402
    iget-boolean v0, p0, Lj$/util/stream/x2;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 403
    iget-object v0, p0, Lj$/util/stream/F2;->d:Ljava/util/ArrayList;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lj$/util/function/g;

    const/4 v4, 0x7

    invoke-direct {v3, v2, v4}, Lj$/util/function/g;-><init>(Ljava/lang/Object;I)V

    .line 0
    instance-of v4, v0, Lj$/util/Collection;

    if-eqz v4, :cond_1

    check-cast v0, Lj$/util/Collection;

    invoke-interface {v0, v3}, Lj$/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_3

    .line 667
    :cond_1
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    .line 669
    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 406
    :cond_2
    iget-object v0, p0, Lj$/util/stream/F2;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    .line 407
    invoke-interface {v2}, Lj$/util/stream/i2;->o()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 408
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 411
    :cond_4
    :goto_3
    invoke-interface {v2}, Lj$/util/stream/i2;->l()V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lj$/util/stream/F2;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public final m(J)V
    .locals 2

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    long-to-int p1, p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lj$/util/stream/F2;->d:Ljava/util/ArrayList;

    return-void

    .line 394
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream size exceeds max array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

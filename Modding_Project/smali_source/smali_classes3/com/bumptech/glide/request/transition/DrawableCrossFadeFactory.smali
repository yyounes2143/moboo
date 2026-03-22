.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/bumptech/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/TransitionFactory<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/request/transition/Transition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 6
    .line 7
    iget v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;-><init>(IZ)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;

    .line 17
    .line 18
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bumptech/glide/request/transition/NoTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/request/transition/Transition;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/request/transition/Transition;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

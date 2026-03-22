.class Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/ViewAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcreteViewTransitionAnimationFactory"
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/view/animation/Animation;


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object p1
.end method

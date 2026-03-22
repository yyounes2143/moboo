.class public final Lcoil/transition/CrossfadeTransition;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcoil/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/transition/CrossfadeTransition$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001:\u0001\u001aB-\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcoil/transition/CrossfadeTransition;",
        "Lcoil/transition/Transition;",
        "Lcoil/transition/TransitionTarget;",
        "target",
        "Lcoil/request/ImageResult;",
        "result",
        "",
        "durationMillis",
        "",
        "preferExactIntrinsicSize",
        "<init>",
        "(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;IZ)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Lcoil/transition/TransitionTarget;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcoil/request/ImageResult;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "getDurationMillis",
        "()I",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "getPreferExactIntrinsicSize",
        "()Z",
        "Factory",
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
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/TransitionTarget;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;IZ)V
    .locals 0
    .param p1    # Lcoil/transition/TransitionTarget;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/ImageResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/TransitionTarget;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageResult;

    .line 7
    .line 8
    iput p3, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    if-lez p3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p2, "durationMillis must be > 0."

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 7

    .line 1
    new-instance v0, Lcoil/drawable/CrossfadeDrawable;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/TransitionTarget;

    .line 4
    .line 5
    invoke-interface {v1}, Lcoil/transition/TransitionTarget;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageResult;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcoil/request/ImageResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageResult;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcoil/request/ImageResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/ImageRequest;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcoil/request/ImageRequest;->Kkkkkkkkkkkkkkkkkkkkkkk()Lcoil/size/Scale;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    iget-object v5, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageResult;

    .line 28
    .line 29
    instance-of v6, v5, Lcoil/request/SuccessResult;

    .line 30
    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    check-cast v5, Lcoil/request/SuccessResult;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcoil/request/SuccessResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v5, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 45
    :goto_1
    iget-boolean v6, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 46
    .line 47
    invoke-direct/range {v0 .. v6}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/request/ImageResult;

    .line 51
    .line 52
    instance-of v2, v1, Lcoil/request/SuccessResult;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/TransitionTarget;

    .line 57
    .line 58
    invoke-interface {v1, v0}, Lcoil/target/Target;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    instance-of v1, v1, Lcoil/request/ErrorResult;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcoil/transition/CrossfadeTransition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/transition/TransitionTarget;

    .line 67
    .line 68
    invoke-interface {v1, v0}, Lcoil/target/Target;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method

.class final Lcoil/ImageLoader$Builder$eventListener$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcoil/EventListener$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcoil/request/ImageRequest;",
        "it",
        "Lcoil/EventListener;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcoil/request/ImageRequest;)Lcoil/EventListener;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/EventListener;


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;)Lcoil/EventListener;
    .locals 0
    .param p1    # Lcoil/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcoil/ImageLoader$Builder$eventListener$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcoil/EventListener;

    .line 2
    .line 3
    return-object p1
.end method

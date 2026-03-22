.class public abstract Lcom/fluttercandies/image_editor/option/draw/TransferValue;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/fluttercandies/image_editor/option/draw/ITransferValue;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\"\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/fluttercandies/image_editor/option/draw/TransferValue;",
        "Lcom/fluttercandies/image_editor/option/draw/ITransferValue;",
        "",
        "map",
        "<init>",
        "(Ljava/util/Map;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/Map;",
        "getMap",
        "()Ljava/util/Map;",
        "image_editor_common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fluttercandies/image_editor/option/draw/TransferValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/fluttercandies/image_editor/option/draw/ITransferValue$DefaultImpls;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/option/draw/ITransferValue;Ljava/lang/String;)Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/fluttercandies/image_editor/option/draw/ITransferValue$DefaultImpls;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/option/draw/ITransferValue;Ljava/lang/String;)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/fluttercandies/image_editor/option/draw/ITransferValue$DefaultImpls;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/option/draw/ITransferValue;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)Landroid/graphics/Point;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/fluttercandies/image_editor/option/draw/ITransferValue$DefaultImpls;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/option/draw/ITransferValue;Ljava/util/Map;)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/TransferValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

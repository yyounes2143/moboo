.class public final Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;
.super Lcom/fluttercandies/image_editor/option/draw/PathPart;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0013\u0010\u0010R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0015\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;",
        "Lcom/fluttercandies/image_editor/option/draw/PathPart;",
        "",
        "map",
        "<init>",
        "(Ljava/util/Map;)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()I",
        "kind",
        "Landroid/graphics/Point;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/graphics/Point;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/graphics/Point;",
        "target",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "control1",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "control2",
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
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
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
    invoke-direct {p0, p1}, Lcom/fluttercandies/image_editor/option/draw/PathPart;-><init>(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "kind"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    const-string v0, "target"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/fluttercandies/image_editor/option/draw/TransferValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/graphics/Point;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 25
    .line 26
    const-string v0, "c1"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/fluttercandies/image_editor/option/draw/TransferValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/graphics/Point;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    const-string p1, "c2"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/fluttercandies/image_editor/option/draw/TransferValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/graphics/Point;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    iput-object p1, p0, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object v0
.end method

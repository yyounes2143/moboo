.class public final Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;
.super Lcom/fluttercandies/image_editor/option/draw/PathPart;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0004\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000e\u001a\u0004\u0008\u0013\u0010\u0010R\u0017\u0010\u0019\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;",
        "Lcom/fluttercandies/image_editor/option/draw/PathPart;",
        "",
        "map",
        "<init>",
        "(Ljava/util/Map;)V",
        "Landroid/graphics/Rect;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/graphics/Rect;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/graphics/Rect;",
        "rect",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/lang/Number;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/lang/Number;",
        "start",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "sweep",
        "",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "useCenter",
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
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Number;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Number;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
    const-string v0, "rect"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/fluttercandies/image_editor/option/draw/TransferValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Rect;

    .line 11
    .line 12
    const-string v0, "start"

    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Number;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Number;

    .line 21
    .line 22
    const-string v0, "sweep"

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Number;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Number;

    .line 31
    .line 32
    const-string v0, "useCenter"

    .line 33
    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput-boolean p1, p0, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Number;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Number;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Number;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Number;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

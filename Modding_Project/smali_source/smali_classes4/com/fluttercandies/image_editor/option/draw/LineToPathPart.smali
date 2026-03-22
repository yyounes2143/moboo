.class public final Lcom/fluttercandies/image_editor/option/draw/LineToPathPart;
.super Lcom/fluttercandies/image_editor/option/draw/PathPart;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/fluttercandies/image_editor/option/draw/LineToPathPart;",
        "Lcom/fluttercandies/image_editor/option/draw/PathPart;",
        "",
        "map",
        "<init>",
        "(Ljava/util/Map;)V",
        "Landroid/graphics/Point;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/graphics/Point;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/graphics/Point;",
        "offset",
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
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;
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
    invoke-direct {p0, p1}, Lcom/fluttercandies/image_editor/option/draw/PathPart;-><init>(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "offset"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/fluttercandies/image_editor/option/draw/TransferValue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/graphics/Point;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/fluttercandies/image_editor/option/draw/LineToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/option/draw/LineToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object v0
.end method

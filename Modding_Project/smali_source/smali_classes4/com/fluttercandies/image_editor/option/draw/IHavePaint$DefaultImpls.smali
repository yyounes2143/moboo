.class public final Lcom/fluttercandies/image_editor/option/draw/IHavePaint$DefaultImpls;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/image_editor/option/draw/IHavePaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/image_editor/option/draw/IHavePaint;)Landroid/graphics/Paint;
    .locals 2
    .param p0    # Lcom/fluttercandies/image_editor/option/draw/IHavePaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/fluttercandies/image_editor/option/draw/DrawPaint;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/fluttercandies/image_editor/option/draw/ITransferValue;->getMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "paint"

    .line 8
    .line 9
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/fluttercandies/image_editor/option/draw/DrawPaint;-><init>(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/fluttercandies/image_editor/option/draw/DrawPaint;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Paint;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

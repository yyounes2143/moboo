.class public final Lcoil/util/DrawableUtils;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J/\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcoil/util/DrawableUtils;",
        "",
        "<init>",
        "()V",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "Landroid/graphics/Bitmap$Config;",
        "config",
        "Lcoil/size/Size;",
        "size",
        "Lcoil/size/Scale;",
        "scale",
        "",
        "allowInexactSize",
        "Landroid/graphics/Bitmap;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;",
        "bitmap",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(ZLandroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/size/Scale;)Z",
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


# static fields
.field public static final INSTANCE:Lcoil/util/DrawableUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcoil/util/DrawableUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcoil/util/DrawableUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcoil/util/DrawableUtils;->INSTANCE:Lcoil/util/DrawableUtils;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZLandroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/size/Scale;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p3}, Lcoil/size/-Sizes;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/size/Size;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p3}, Lcoil/size/Size;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Dimension;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2, p4}, Lcoil/util/-Utils;->Wwwwwwww(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :goto_0
    invoke-static {p3}, Lcoil/size/-Sizes;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/size/Size;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p3}, Lcoil/size/Size;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Dimension;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2, p4}, Lcoil/util/-Utils;->Wwwwwwww(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    :goto_1
    invoke-static {p1, v1, v2, p2, p4}, Lcoil/decode/DecodeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IIIILcoil/size/Scale;)D

    .line 52
    .line 53
    .line 54
    move-result-wide p1

    .line 55
    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    .line 56
    .line 57
    cmpg-double p1, p1, p3

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    return v0

    .line 62
    :cond_3
    const/4 p1, 0x0

    .line 63
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcoil/util/-Bitmaps;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/size/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/size/Scale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0, p2}, Lcoil/util/DrawableUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p5, v0, p3, p4}, Lcoil/util/DrawableUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZLandroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/size/Scale;)Z

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    if-eqz p5, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;)I

    .line 30
    .line 31
    .line 32
    move-result p5

    .line 33
    const/16 v0, 0x200

    .line 34
    .line 35
    if-lez p5, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move p5, v0

    .line 39
    :goto_0
    invoke-static {p1}, Lcoil/util/-Utils;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lez v1, :cond_2

    .line 44
    .line 45
    move v0, v1

    .line 46
    :cond_2
    invoke-static {p3}, Lcoil/size/-Sizes;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/size/Size;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    move v1, p5

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {p3}, Lcoil/size/Size;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Dimension;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, p4}, Lcoil/util/-Utils;->Wwwwwwww(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_1
    invoke-static {p3}, Lcoil/size/-Sizes;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/size/Size;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    move p3, v0

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    invoke-virtual {p3}, Lcoil/size/Size;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/size/Dimension;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-static {p3, p4}, Lcoil/util/-Utils;->Wwwwwwww(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    :goto_2
    invoke-static {p5, v0, v1, p3, p4}, Lcoil/decode/DecodeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IIIILcoil/size/Scale;)D

    .line 79
    .line 80
    .line 81
    move-result-wide p3

    .line 82
    int-to-double v1, p5

    .line 83
    mul-double/2addr v1, p3

    .line 84
    invoke-static {v1, v2}, Lkotlin/math/MathKt;->roundToInt(D)I

    .line 85
    .line 86
    .line 87
    move-result p5

    .line 88
    int-to-double v0, v0

    .line 89
    mul-double/2addr p3, v0

    .line 90
    invoke-static {p3, p4}, Lkotlin/math/MathKt;->roundToInt(D)I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    invoke-static {p2}, Lcoil/util/-Bitmaps;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p5, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    iget v0, p4, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    iget v1, p4, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    iget v2, p4, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual {p1, v3, v3, p5, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    .line 117
    .line 118
    new-instance p3, Landroid/graphics/Canvas;

    .line 119
    .line 120
    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0, v1, v2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    .line 128
    .line 129
    return-object p2
.end method

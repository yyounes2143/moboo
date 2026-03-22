.class public final Lcom/fluttercandies/image_editor/core/ImageMerger;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/fluttercandies/image_editor/core/ImageMerger;",
        "",
        "Lcom/fluttercandies/image_editor/option/MergeOption;",
        "mergeOption",
        "<init>",
        "(Lcom/fluttercandies/image_editor/option/MergeOption;)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()[B",
        "Lcom/fluttercandies/image_editor/option/MergeOption;",
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
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/option/MergeOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fluttercandies/image_editor/option/MergeOption;)V
    .locals 0
    .param p1    # Lcom/fluttercandies/image_editor/option/MergeOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fluttercandies/image_editor/core/ImageMerger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/option/MergeOption;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[B
    .locals 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/image_editor/core/ImageMerger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/option/MergeOption;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fluttercandies/image_editor/option/MergeOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/fluttercandies/image_editor/core/ImageMerger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/option/MergeOption;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/MergeOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/graphics/Canvas;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/fluttercandies/image_editor/core/ImageMerger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/option/MergeOption;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/fluttercandies/image_editor/option/MergeOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/fluttercandies/image_editor/option/MergeImage;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/fluttercandies/image_editor/option/MergeImage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[B

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3}, Lcom/fluttercandies/image_editor/option/MergeImage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[B

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    array-length v5, v5

    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3}, Lcom/fluttercandies/image_editor/option/MergeImage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/fluttercandies/image_editor/option/ImagePosition;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v5, Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/fluttercandies/image_editor/option/ImagePosition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {v3}, Lcom/fluttercandies/image_editor/option/ImagePosition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {v3}, Lcom/fluttercandies/image_editor/option/ImagePosition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    invoke-virtual {v3}, Lcom/fluttercandies/image_editor/option/ImagePosition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    add-int/2addr v8, v9

    .line 83
    invoke-virtual {v3}, Lcom/fluttercandies/image_editor/option/ImagePosition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    invoke-virtual {v3}, Lcom/fluttercandies/image_editor/option/ImagePosition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    add-int/2addr v9, v3

    .line 92
    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-virtual {v1, v4, v3, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/fluttercandies/image_editor/core/ImageMerger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/image_editor/option/MergeOption;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/MergeOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/fluttercandies/image_editor/option/FormatOption;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/FormatOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    const/4 v4, 0x1

    .line 116
    if-ne v3, v4, :cond_1

    .line 117
    .line 118
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 122
    .line 123
    :goto_1
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/FormatOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    return-object v0
.end method

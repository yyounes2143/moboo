.class public final Lcom/fluttercandies/image_editor/core/HandleExtensionKt;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a!\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u0019\u0010\u0008\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u001d\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u001d\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\u001d\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u001f\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroid/graphics/Bitmap;",
        "",
        "width",
        "height",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;",
        "Lcom/fluttercandies/image_editor/option/draw/DrawOption;",
        "option",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Bitmap;Lcom/fluttercandies/image_editor/option/draw/DrawOption;)Landroid/graphics/Bitmap;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;",
        "drawPart",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;)V",
        "Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;)V",
        "Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;)V",
        "Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;)V",
        "Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;)V",
        "image_editor_common_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;)V
    .locals 1
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;)V
    .locals 3
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/graphics/Point;

    .line 24
    .line 25
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    int-to-float v1, v1

    .line 31
    invoke-virtual {p0, v2, v1, p1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;)V
    .locals 10
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 7
    .line 8
    .line 9
    move-result v7

    .line 10
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v8

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/fluttercandies/image_editor/option/draw/PathPart;

    .line 29
    .line 30
    instance-of v2, v1, Lcom/fluttercandies/image_editor/option/draw/MovePathPart;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    check-cast v1, Lcom/fluttercandies/image_editor/option/draw/MovePathPart;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/MovePathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 41
    .line 42
    int-to-float v2, v2

    .line 43
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/MovePathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    instance-of v2, v1, Lcom/fluttercandies/image_editor/option/draw/LineToPathPart;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    check-cast v1, Lcom/fluttercandies/image_editor/option/draw/LineToPathPart;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/LineToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 65
    .line 66
    int-to-float v2, v2

    .line 67
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/LineToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 72
    .line 73
    int-to-float v1, v1

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    instance-of v2, v1, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    new-instance v2, Landroid/graphics/RectF;

    .line 83
    .line 84
    check-cast v1, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Rect;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Number;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Number;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    instance-of v2, v1, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;

    .line 118
    .line 119
    if-eqz v2, :cond_0

    .line 120
    .line 121
    check-cast v1, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const/4 v3, 0x2

    .line 128
    if-ne v2, v3, :cond_4

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 135
    .line 136
    int-to-float v2, v2

    .line 137
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 142
    .line 143
    int-to-float v3, v3

    .line 144
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 149
    .line 150
    int-to-float v4, v4

    .line 151
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 156
    .line 157
    int-to-float v1, v1

    .line 158
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_4
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    const/4 v3, 0x3

    .line 168
    if-ne v2, v3, :cond_0

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 175
    .line 176
    int-to-float v2, v2

    .line 177
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 182
    .line 183
    int-to-float v3, v3

    .line 184
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 189
    .line 190
    int-to-float v4, v4

    .line 191
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 196
    .line 197
    int-to-float v5, v5

    .line 198
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 203
    .line 204
    int-to-float v6, v6

    .line 205
    invoke-virtual {v1}, Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 210
    .line 211
    int-to-float v1, v1

    .line 212
    move v9, v6

    .line 213
    move v6, v1

    .line 214
    move v1, v2

    .line 215
    move v2, v3

    .line 216
    move v3, v4

    .line 217
    move v4, v5

    .line 218
    move v5, v9

    .line 219
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_5
    if-eqz v7, :cond_6

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 227
    .line 228
    .line 229
    :cond_6
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Paint;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;)V
    .locals 2
    .param p0    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Paint;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    int-to-float v1, v0

    .line 12
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 17
    .line 18
    int-to-float v2, v0

    .line 19
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 24
    .line 25
    int-to-float v3, v0

    .line 26
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 31
    .line 32
    int-to-float v4, p1

    .line 33
    move-object v0, p0

    .line 34
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;Lcom/fluttercandies/image_editor/option/draw/DrawOption;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/fluttercandies/image_editor/option/draw/DrawOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0, v0, v1}, Lcom/fluttercandies/image_editor/core/HandleExtensionKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/graphics/Canvas;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/fluttercandies/image_editor/option/draw/DrawOption;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/fluttercandies/image_editor/option/draw/DrawPart;

    .line 42
    .line 43
    instance-of v2, p1, Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    check-cast p1, Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;

    .line 48
    .line 49
    invoke-static {v1, p1}, Lcom/fluttercandies/image_editor/core/HandleExtensionKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    instance-of v2, p1, Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    check-cast p1, Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;

    .line 58
    .line 59
    invoke-static {v1, p1}, Lcom/fluttercandies/image_editor/core/HandleExtensionKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    instance-of v2, p1, Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    check-cast p1, Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;

    .line 68
    .line 69
    invoke-static {v1, p1}, Lcom/fluttercandies/image_editor/core/HandleExtensionKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    instance-of v2, p1, Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    check-cast p1, Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;

    .line 78
    .line 79
    invoke-static {v1, p1}, Lcom/fluttercandies/image_editor/core/HandleExtensionKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    instance-of v2, p1, Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;

    .line 84
    .line 85
    if-eqz v2, :cond_0

    .line 86
    .line 87
    check-cast p1, Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;

    .line 88
    .line 89
    invoke-static {v1, p1}, Lcom/fluttercandies/image_editor/core/HandleExtensionKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    return-object v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.class public Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;
.super Landroid/graphics/Canvas;
.source "Proguard"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SoftWareCanvas"


# instance fields
.field private bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    return-void
.end method

.method private drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcoil/decode/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap$Config;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-object p1
.end method

.method private replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-class v4, Landroid/graphics/BitmapShader;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v6, 0x1a

    .line 14
    .line 15
    if-lt v5, v6, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    instance-of v5, v5, Landroid/graphics/BitmapShader;

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    new-instance v5, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {v5, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Landroid/graphics/BitmapShader;

    .line 35
    .line 36
    :try_start_0
    const-string v7, "mBitmap"

    .line 37
    .line 38
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v7, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Landroid/graphics/Bitmap;

    .line 50
    .line 51
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-static {}, Lcoil/decode/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap$Config;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    if-ne v8, v9, :cond_1

    .line 60
    .line 61
    const-string v8, "mTileX"

    .line 62
    .line 63
    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-string v9, "mTileY"

    .line 68
    .line 69
    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v8, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Landroid/graphics/Bitmap;

    .line 84
    .line 85
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 86
    .line 87
    invoke-virtual {v7, v10, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    iget-object v10, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    .line 92
    .line 93
    invoke-virtual {v10, v7}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-array v10, v1, [Ljava/lang/Class;

    .line 97
    .line 98
    const-class v11, Landroid/graphics/Bitmap;

    .line 99
    .line 100
    aput-object v11, v10, v2

    .line 101
    .line 102
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 103
    .line 104
    aput-object v11, v10, v3

    .line 105
    .line 106
    aput-object v11, v10, v0

    .line 107
    .line 108
    invoke-virtual {v4, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    new-array v1, v1, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object v7, v1, v2

    .line 126
    .line 127
    aput-object v8, v1, v3

    .line 128
    .line 129
    aput-object v6, v1, v0

    .line 130
    .line 131
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/graphics/BitmapShader;

    .line 136
    .line 137
    new-instance v1, Landroid/graphics/Matrix;

    .line 138
    .line 139
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    return-object v5

    .line 156
    :catch_0
    :cond_1
    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/graphics/Bitmap;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    if-eq v0, v1, :cond_0

    float-to-int p2, p2

    float-to-int p3, p3

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-super {p0, p1, v0, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 0

    .line 10
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 10

    move-object/from16 v0, p9

    .line 8
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-super/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10

    move-object/from16 v0, p9

    .line 9
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-super/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 9

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    move-object/from16 p1, p8

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 8
    .line 9
    .line 10
    move-result-object v8

    .line 11
    move-object v0, p0

    .line 12
    move v2, p2

    .line 13
    move v3, p3

    .line 14
    move-object v4, p4

    .line 15
    move v5, p5

    .line 16
    move-object v6, p6

    .line 17
    move/from16 v7, p7

    .line 18
    .line 19
    invoke-super/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 6

    .line 2
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 6

    .line 3
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 2
    :try_start_0
    invoke-direct {p0, p7}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 7

    .line 4
    :try_start_0
    invoke-direct {p0, p6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 7

    .line 3
    :try_start_0
    invoke-direct {p0, p6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-direct {p0, p6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 6

    .line 2
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-direct {p0, p7}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;)I
    .locals 6

    .line 4
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p1

    return p1
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 7

    .line 3
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result p1

    return p1
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result p1

    return p1
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p1

    return p1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

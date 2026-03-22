.class public Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final CUBE:[F

.field public static final NO_TEXTURE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OpenGlUtils"

.field public static final TEXTURE:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->CUBE:[F

    .line 9
    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->TEXTURE:[F

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
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

.method private static addDistance(FF)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float p0, p0, v0

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return p1

    .line 7
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    sub-float/2addr p0, p1

    .line 10
    return p0
.end method

.method public static bindTexture(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2
    .line 3
    .line 4
    const-string p0, "bindTexture"

    .line 5
    .line 6
    invoke-static {p0}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->checkGlError(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static calcCubeAndTextureBuffer(Landroid/widget/ImageView$ScaleType;Lcom/tencent/vod/flutter/live/render/FTXRotation;ZIIII)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView$ScaleType;",
            "Lcom/tencent/vod/flutter/live/render/FTXRotation;",
            "ZIIII)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_90:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/vod/flutter/live/render/FTXRotation;->ROTATION_270:Lcom/tencent/vod/flutter/live/render/FTXRotation;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move v1, v3

    .line 16
    :goto_1
    if-eqz v1, :cond_2

    .line 17
    .line 18
    move/from16 v4, p4

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    move/from16 v4, p3

    .line 22
    .line 23
    :goto_2
    if-eqz v1, :cond_3

    .line 24
    .line 25
    move/from16 v5, p3

    .line 26
    .line 27
    :goto_3
    move/from16 v6, p5

    .line 28
    .line 29
    goto :goto_4

    .line 30
    :cond_3
    move/from16 v5, p4

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :goto_4
    int-to-float v6, v6

    .line 34
    const/high16 v7, 0x3f800000    # 1.0f

    .line 35
    .line 36
    mul-float v8, v6, v7

    .line 37
    .line 38
    int-to-float v4, v4

    .line 39
    div-float/2addr v8, v4

    .line 40
    move/from16 v9, p6

    .line 41
    .line 42
    int-to-float v9, v9

    .line 43
    mul-float v10, v9, v7

    .line 44
    .line 45
    int-to-float v5, v5

    .line 46
    div-float/2addr v10, v5

    .line 47
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    mul-float/2addr v4, v8

    .line 52
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    int-to-float v4, v4

    .line 57
    mul-float/2addr v4, v7

    .line 58
    div-float/2addr v4, v6

    .line 59
    mul-float/2addr v5, v8

    .line 60
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    int-to-float v5, v5

    .line 65
    mul-float/2addr v5, v7

    .line 66
    div-float/2addr v5, v9

    .line 67
    sget-object v6, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->CUBE:[F

    .line 68
    .line 69
    move/from16 v8, p2

    .line 70
    .line 71
    invoke-static {v0, v8, v3}, Lcom/tencent/vod/flutter/live/render/FTXTextureRotationUtils;->getRotation(Lcom/tencent/vod/flutter/live/render/FTXRotation;ZZ)[F

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 76
    .line 77
    const/16 v9, 0x8

    .line 78
    .line 79
    const/4 v10, 0x7

    .line 80
    const/4 v11, 0x6

    .line 81
    const/4 v12, 0x5

    .line 82
    const/4 v13, 0x4

    .line 83
    const/4 v14, 0x3

    .line 84
    const/4 v15, 0x2

    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    move-object/from16 v2, p0

    .line 88
    .line 89
    if-ne v2, v8, :cond_6

    .line 90
    .line 91
    const/high16 v2, 0x40000000    # 2.0f

    .line 92
    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    div-float v8, v7, v5

    .line 96
    .line 97
    :goto_5
    sub-float v8, v7, v8

    .line 98
    .line 99
    div-float/2addr v8, v2

    .line 100
    goto :goto_6

    .line 101
    :cond_4
    div-float v8, v7, v4

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :goto_6
    if-eqz v1, :cond_5

    .line 105
    .line 106
    div-float v1, v7, v4

    .line 107
    .line 108
    :goto_7
    sub-float/2addr v7, v1

    .line 109
    div-float/2addr v7, v2

    .line 110
    goto :goto_8

    .line 111
    :cond_5
    div-float v1, v7, v5

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :goto_8
    new-array v1, v9, [F

    .line 115
    .line 116
    aget v2, v0, v16

    .line 117
    .line 118
    invoke-static {v2, v8}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->addDistance(FF)F

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    aput v2, v1, v16

    .line 123
    .line 124
    aget v2, v0, v3

    .line 125
    .line 126
    invoke-static {v2, v7}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->addDistance(FF)F

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    aput v2, v1, v3

    .line 131
    .line 132
    aget v2, v0, v15

    .line 133
    .line 134
    invoke-static {v2, v8}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->addDistance(FF)F

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    aput v2, v1, v15

    .line 139
    .line 140
    aget v2, v0, v14

    .line 141
    .line 142
    invoke-static {v2, v7}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->addDistance(FF)F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    aput v2, v1, v14

    .line 147
    .line 148
    aget v2, v0, v13

    .line 149
    .line 150
    invoke-static {v2, v8}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->addDistance(FF)F

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    aput v2, v1, v13

    .line 155
    .line 156
    aget v2, v0, v12

    .line 157
    .line 158
    invoke-static {v2, v7}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->addDistance(FF)F

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    aput v2, v1, v12

    .line 163
    .line 164
    aget v2, v0, v11

    .line 165
    .line 166
    invoke-static {v2, v8}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->addDistance(FF)F

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    aput v2, v1, v11

    .line 171
    .line 172
    aget v0, v0, v10

    .line 173
    .line 174
    invoke-static {v0, v7}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->addDistance(FF)F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    aput v0, v1, v10

    .line 179
    .line 180
    move-object v0, v1

    .line 181
    goto :goto_9

    .line 182
    :cond_6
    new-array v1, v9, [F

    .line 183
    .line 184
    aget v2, v6, v16

    .line 185
    .line 186
    div-float/2addr v2, v5

    .line 187
    aput v2, v1, v16

    .line 188
    .line 189
    aget v2, v6, v3

    .line 190
    .line 191
    div-float/2addr v2, v4

    .line 192
    aput v2, v1, v3

    .line 193
    .line 194
    aget v2, v6, v15

    .line 195
    .line 196
    div-float/2addr v2, v5

    .line 197
    aput v2, v1, v15

    .line 198
    .line 199
    aget v2, v6, v14

    .line 200
    .line 201
    div-float/2addr v2, v4

    .line 202
    aput v2, v1, v14

    .line 203
    .line 204
    aget v2, v6, v13

    .line 205
    .line 206
    div-float/2addr v2, v5

    .line 207
    aput v2, v1, v13

    .line 208
    .line 209
    aget v2, v6, v12

    .line 210
    .line 211
    div-float/2addr v2, v4

    .line 212
    aput v2, v1, v12

    .line 213
    .line 214
    aget v2, v6, v11

    .line 215
    .line 216
    div-float/2addr v2, v5

    .line 217
    aput v2, v1, v11

    .line 218
    .line 219
    aget v2, v6, v10

    .line 220
    .line 221
    div-float/2addr v2, v4

    .line 222
    aput v2, v1, v10

    .line 223
    .line 224
    move-object v6, v1

    .line 225
    :goto_9
    new-instance v1, Landroid/util/Pair;

    .line 226
    .line 227
    invoke-direct {v1, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v1
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 3

    .line 1
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p0, v1, v2

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v0, v1, v2

    .line 19
    .line 20
    const-string v0, "%s: glError %s"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "OpenGlUtils"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public static deleteFrameBuffer(I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne v0, p0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    filled-new-array {p0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "delete frame buffer id: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "OpenGlUtils"

    .line 32
    .line 33
    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static deleteTexture(I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne v0, p0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    filled-new-array {p0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "delete textureId "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "OpenGlUtils"

    .line 32
    .line 33
    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static generateFrameBufferId()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 6
    .line 7
    .line 8
    aget v0, v1, v2

    .line 9
    .line 10
    return v0
.end method

.method public static generateTextureOES()I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 6
    .line 7
    .line 8
    aget v0, v1, v2

    .line 9
    .line 10
    const v3, 0x8d65

    .line 11
    .line 12
    .line 13
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0x2801

    .line 17
    .line 18
    const v4, 0x46180400    # 9729.0f

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x2800

    .line 25
    .line 26
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0x2802

    .line 30
    .line 31
    const v4, 0x812f

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x2803

    .line 38
    .line 39
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 40
    .line 41
    .line 42
    aget v0, v1, v2

    .line 43
    .line 44
    return v0
.end method

.method public static loadTexture(ILjava/nio/Buffer;III)I
    .locals 23

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/16 v5, 0xde1

    .line 9
    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    .line 12
    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "glGenTextures textureId: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    aget v1, v2, v4

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "OpenGlUtils"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    aget v0, v2, v4

    .line 40
    .line 41
    invoke-static {v5, v0}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->bindTexture(II)V

    .line 42
    .line 43
    .line 44
    const/16 v0, 0x2800

    .line 45
    .line 46
    const v1, 0x46180400    # 9729.0f

    .line 47
    .line 48
    .line 49
    invoke-static {v5, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0x2801

    .line 53
    .line 54
    invoke-static {v5, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x2802

    .line 58
    .line 59
    const v1, 0x47012f00    # 33071.0f

    .line 60
    .line 61
    .line 62
    invoke-static {v5, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 63
    .line 64
    .line 65
    const/16 v0, 0x2803

    .line 66
    .line 67
    invoke-static {v5, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 68
    .line 69
    .line 70
    const/4 v11, 0x0

    .line 71
    const/16 v13, 0x1401

    .line 72
    .line 73
    const/16 v6, 0xde1

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    move/from16 v12, p0

    .line 77
    .line 78
    move/from16 v8, p0

    .line 79
    .line 80
    move-object/from16 v14, p1

    .line 81
    .line 82
    move/from16 v9, p2

    .line 83
    .line 84
    move/from16 v10, p3

    .line 85
    .line 86
    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-static {v5, v0}, Lcom/tencent/vod/flutter/live/egl/OpenGlUtils;->bindTexture(II)V

    .line 91
    .line 92
    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    const/16 v21, 0x1401

    .line 96
    .line 97
    const/16 v14, 0xde1

    .line 98
    .line 99
    const/4 v15, 0x0

    .line 100
    const/16 v16, 0x0

    .line 101
    .line 102
    move/from16 v20, p0

    .line 103
    .line 104
    move-object/from16 v22, p1

    .line 105
    .line 106
    move/from16 v18, p2

    .line 107
    .line 108
    move/from16 v19, p3

    .line 109
    .line 110
    invoke-static/range {v14 .. v22}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 111
    .line 112
    .line 113
    aput v0, v2, v4

    .line 114
    .line 115
    :goto_0
    aget v0, v2, v4

    .line 116
    .line 117
    return v0
.end method

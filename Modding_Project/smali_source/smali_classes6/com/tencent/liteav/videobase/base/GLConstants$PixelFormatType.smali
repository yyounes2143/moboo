.class public final enum Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videobase/base/GLConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixelFormatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum e:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum h:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum i:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum j:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum k:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum l:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum m:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum n:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum o:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field public static final enum p:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field private static final q:[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field private static final synthetic r:[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;


# instance fields
.field private final mJniValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 2
    .line 3
    const-string v1, "I420"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 10
    .line 11
    new-instance v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 12
    .line 13
    const-string v3, "NV12"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 20
    .line 21
    new-instance v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 22
    .line 23
    const-string v5, "NV21"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 30
    .line 31
    new-instance v5, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 32
    .line 33
    const-string v7, "RGB"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 40
    .line 41
    new-instance v7, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 42
    .line 43
    const-string v9, "YUY2"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->e:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 50
    .line 51
    new-instance v9, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 52
    .line 53
    const-string v11, "RGBA"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 60
    .line 61
    new-instance v11, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 62
    .line 63
    const-string v13, "BGR"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->g:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 70
    .line 71
    new-instance v13, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 72
    .line 73
    const-string v15, "YV12"

    .line 74
    .line 75
    move/from16 v16, v2

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-direct {v13, v15, v2, v2}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->h:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 82
    .line 83
    new-instance v15, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 84
    .line 85
    move/from16 v17, v2

    .line 86
    .line 87
    const-string v2, "BGRA"

    .line 88
    .line 89
    move/from16 v18, v4

    .line 90
    .line 91
    const/16 v4, 0x8

    .line 92
    .line 93
    invoke-direct {v15, v2, v4, v4}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 94
    .line 95
    .line 96
    sput-object v15, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->i:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 97
    .line 98
    new-instance v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 99
    .line 100
    move/from16 v19, v4

    .line 101
    .line 102
    const-string v4, "ARGB"

    .line 103
    .line 104
    move/from16 v20, v6

    .line 105
    .line 106
    const/16 v6, 0x9

    .line 107
    .line 108
    invoke-direct {v2, v4, v6, v6}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    sput-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->j:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 112
    .line 113
    new-instance v4, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 114
    .line 115
    move/from16 v21, v6

    .line 116
    .line 117
    const-string v6, "YUV422P"

    .line 118
    .line 119
    move/from16 v22, v8

    .line 120
    .line 121
    const/16 v8, 0xa

    .line 122
    .line 123
    invoke-direct {v4, v6, v8, v8}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    sput-object v4, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->k:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 127
    .line 128
    new-instance v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 129
    .line 130
    move/from16 v23, v8

    .line 131
    .line 132
    const-string v8, "UYVY"

    .line 133
    .line 134
    move/from16 v24, v10

    .line 135
    .line 136
    const/16 v10, 0xb

    .line 137
    .line 138
    invoke-direct {v6, v8, v10, v10}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    sput-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->l:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 142
    .line 143
    new-instance v8, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 144
    .line 145
    move/from16 v25, v10

    .line 146
    .line 147
    const-string v10, "YUYV"

    .line 148
    .line 149
    move/from16 v26, v12

    .line 150
    .line 151
    const/16 v12, 0xc

    .line 152
    .line 153
    invoke-direct {v8, v10, v12, v12}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v8, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->m:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 157
    .line 158
    new-instance v10, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 159
    .line 160
    move/from16 v27, v12

    .line 161
    .line 162
    const-string v12, "JPG"

    .line 163
    .line 164
    move/from16 v28, v14

    .line 165
    .line 166
    const/16 v14, 0xd

    .line 167
    .line 168
    invoke-direct {v10, v12, v14, v14}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    sput-object v10, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->n:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 172
    .line 173
    new-instance v12, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 174
    .line 175
    move/from16 v29, v14

    .line 176
    .line 177
    const-string v14, "H264"

    .line 178
    .line 179
    move-object/from16 v30, v0

    .line 180
    .line 181
    const/16 v0, 0xe

    .line 182
    .line 183
    invoke-direct {v12, v14, v0, v0}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    sput-object v12, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->o:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 187
    .line 188
    new-instance v14, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 189
    .line 190
    move/from16 v31, v0

    .line 191
    .line 192
    const/16 v0, 0xf

    .line 193
    .line 194
    move-object/from16 v32, v1

    .line 195
    .line 196
    const/16 v1, 0x64

    .line 197
    .line 198
    move-object/from16 v33, v2

    .line 199
    .line 200
    const-string v2, "MAX"

    .line 201
    .line 202
    invoke-direct {v14, v2, v0, v1}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;-><init>(Ljava/lang/String;II)V

    .line 203
    .line 204
    .line 205
    sput-object v14, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->p:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 206
    .line 207
    const/16 v1, 0x10

    .line 208
    .line 209
    new-array v1, v1, [Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 210
    .line 211
    aput-object v30, v1, v16

    .line 212
    .line 213
    aput-object v32, v1, v18

    .line 214
    .line 215
    aput-object v3, v1, v20

    .line 216
    .line 217
    aput-object v5, v1, v22

    .line 218
    .line 219
    aput-object v7, v1, v24

    .line 220
    .line 221
    aput-object v9, v1, v26

    .line 222
    .line 223
    aput-object v11, v1, v28

    .line 224
    .line 225
    aput-object v13, v1, v17

    .line 226
    .line 227
    aput-object v15, v1, v19

    .line 228
    .line 229
    aput-object v33, v1, v21

    .line 230
    .line 231
    aput-object v4, v1, v23

    .line 232
    .line 233
    aput-object v6, v1, v25

    .line 234
    .line 235
    aput-object v8, v1, v27

    .line 236
    .line 237
    aput-object v10, v1, v29

    .line 238
    .line 239
    aput-object v12, v1, v31

    .line 240
    .line 241
    aput-object v14, v1, v0

    .line 242
    .line 243
    sput-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->r:[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 244
    .line 245
    invoke-static {}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->values()[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    sput-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->q:[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 250
    .line 251
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->mJniValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->q:[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget v4, v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->mJniValue:I

    .line 10
    .line 11
    if-ne v4, p0, :cond_0

    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->r:[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->mJniValue:I

    .line 2
    .line 3
    return v0
.end method

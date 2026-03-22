.class public final enum Lcom/tencent/liteav/videobase/common/d;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/videobase/common/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum b:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum c:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum d:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum e:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum f:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum g:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum h:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum i:Lcom/tencent/liteav/videobase/common/d;

.field public static final enum j:Lcom/tencent/liteav/videobase/common/d;

.field private static final k:[Lcom/tencent/liteav/videobase/common/d;

.field private static final synthetic l:[Lcom/tencent/liteav/videobase/common/d;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/common/d;

    .line 2
    .line 3
    const v1, 0xffff

    .line 4
    .line 5
    .line 6
    const-string v2, "UNKNOWN"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/tencent/liteav/videobase/common/d;->a:Lcom/tencent/liteav/videobase/common/d;

    .line 13
    .line 14
    new-instance v1, Lcom/tencent/liteav/videobase/common/d;

    .line 15
    .line 16
    const-string v2, "IDR"

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v1, v2, v4, v3}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/tencent/liteav/videobase/common/d;->b:Lcom/tencent/liteav/videobase/common/d;

    .line 23
    .line 24
    new-instance v2, Lcom/tencent/liteav/videobase/common/d;

    .line 25
    .line 26
    const-string v5, "P"

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    invoke-direct {v2, v5, v6, v4}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v2, Lcom/tencent/liteav/videobase/common/d;->c:Lcom/tencent/liteav/videobase/common/d;

    .line 33
    .line 34
    new-instance v5, Lcom/tencent/liteav/videobase/common/d;

    .line 35
    .line 36
    const-string v7, "B"

    .line 37
    .line 38
    const/4 v8, 0x3

    .line 39
    const/4 v9, 0x6

    .line 40
    invoke-direct {v5, v7, v8, v9}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v5, Lcom/tencent/liteav/videobase/common/d;->d:Lcom/tencent/liteav/videobase/common/d;

    .line 44
    .line 45
    new-instance v7, Lcom/tencent/liteav/videobase/common/d;

    .line 46
    .line 47
    const-string v10, "P_MULTI_REF"

    .line 48
    .line 49
    const/4 v11, 0x4

    .line 50
    const/4 v12, 0x7

    .line 51
    invoke-direct {v7, v10, v11, v12}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    sput-object v7, Lcom/tencent/liteav/videobase/common/d;->e:Lcom/tencent/liteav/videobase/common/d;

    .line 55
    .line 56
    new-instance v10, Lcom/tencent/liteav/videobase/common/d;

    .line 57
    .line 58
    const-string v13, "I"

    .line 59
    .line 60
    const/4 v14, 0x5

    .line 61
    const/16 v15, 0x8

    .line 62
    .line 63
    invoke-direct {v10, v13, v14, v15}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    sput-object v10, Lcom/tencent/liteav/videobase/common/d;->f:Lcom/tencent/liteav/videobase/common/d;

    .line 67
    .line 68
    new-instance v13, Lcom/tencent/liteav/videobase/common/d;

    .line 69
    .line 70
    move/from16 v16, v3

    .line 71
    .line 72
    const-string v3, "SEI"

    .line 73
    .line 74
    move/from16 v17, v4

    .line 75
    .line 76
    const/16 v4, 0x11

    .line 77
    .line 78
    invoke-direct {v13, v3, v9, v4}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Lcom/tencent/liteav/videobase/common/d;->g:Lcom/tencent/liteav/videobase/common/d;

    .line 82
    .line 83
    new-instance v3, Lcom/tencent/liteav/videobase/common/d;

    .line 84
    .line 85
    const-string v4, "SPS"

    .line 86
    .line 87
    move/from16 v18, v6

    .line 88
    .line 89
    const/16 v6, 0x12

    .line 90
    .line 91
    invoke-direct {v3, v4, v12, v6}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 92
    .line 93
    .line 94
    sput-object v3, Lcom/tencent/liteav/videobase/common/d;->h:Lcom/tencent/liteav/videobase/common/d;

    .line 95
    .line 96
    new-instance v4, Lcom/tencent/liteav/videobase/common/d;

    .line 97
    .line 98
    const-string v6, "PPS"

    .line 99
    .line 100
    move/from16 v19, v8

    .line 101
    .line 102
    const/16 v8, 0x13

    .line 103
    .line 104
    invoke-direct {v4, v6, v15, v8}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 105
    .line 106
    .line 107
    sput-object v4, Lcom/tencent/liteav/videobase/common/d;->i:Lcom/tencent/liteav/videobase/common/d;

    .line 108
    .line 109
    new-instance v6, Lcom/tencent/liteav/videobase/common/d;

    .line 110
    .line 111
    const/16 v8, 0x9

    .line 112
    .line 113
    move/from16 v20, v9

    .line 114
    .line 115
    const/16 v9, 0x14

    .line 116
    .line 117
    move/from16 v21, v11

    .line 118
    .line 119
    const-string v11, "VPS"

    .line 120
    .line 121
    invoke-direct {v6, v11, v8, v9}, Lcom/tencent/liteav/videobase/common/d;-><init>(Ljava/lang/String;II)V

    .line 122
    .line 123
    .line 124
    sput-object v6, Lcom/tencent/liteav/videobase/common/d;->j:Lcom/tencent/liteav/videobase/common/d;

    .line 125
    .line 126
    const/16 v9, 0xa

    .line 127
    .line 128
    new-array v9, v9, [Lcom/tencent/liteav/videobase/common/d;

    .line 129
    .line 130
    aput-object v0, v9, v16

    .line 131
    .line 132
    aput-object v1, v9, v17

    .line 133
    .line 134
    aput-object v2, v9, v18

    .line 135
    .line 136
    aput-object v5, v9, v19

    .line 137
    .line 138
    aput-object v7, v9, v21

    .line 139
    .line 140
    aput-object v10, v9, v14

    .line 141
    .line 142
    aput-object v13, v9, v20

    .line 143
    .line 144
    aput-object v3, v9, v12

    .line 145
    .line 146
    aput-object v4, v9, v15

    .line 147
    .line 148
    aput-object v6, v9, v8

    .line 149
    .line 150
    sput-object v9, Lcom/tencent/liteav/videobase/common/d;->l:[Lcom/tencent/liteav/videobase/common/d;

    .line 151
    .line 152
    invoke-static {}, Lcom/tencent/liteav/videobase/common/d;->values()[Lcom/tencent/liteav/videobase/common/d;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    sput-object v0, Lcom/tencent/liteav/videobase/common/d;->k:[Lcom/tencent/liteav/videobase/common/d;

    .line 157
    .line 158
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
    iput p3, p0, Lcom/tencent/liteav/videobase/common/d;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/tencent/liteav/videobase/common/d;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/common/d;->k:[Lcom/tencent/liteav/videobase/common/d;

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
    iget v4, v3, Lcom/tencent/liteav/videobase/common/d;->mValue:I

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
    sget-object p0, Lcom/tencent/liteav/videobase/common/d;->a:Lcom/tencent/liteav/videobase/common/d;

    .line 18
    .line 19
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/videobase/common/d;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/liteav/videobase/common/d;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/liteav/videobase/common/d;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/videobase/common/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/common/d;->l:[Lcom/tencent/liteav/videobase/common/d;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tencent/liteav/videobase/common/d;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tencent/liteav/videobase/common/d;

    .line 8
    .line 9
    return-object v0
.end method

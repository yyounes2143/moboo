.class public final enum Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum g:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum h:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum i:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum k:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field public static final enum l:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

.field private static final synthetic m:[Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 2
    .line 3
    const-string v1, "NO_ERROR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 10
    .line 11
    new-instance v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 12
    .line 13
    const-string v3, "PROTOCOL_ERROR"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 20
    .line 21
    new-instance v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 22
    .line 23
    const-string v5, "INTERNAL_ERROR"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 30
    .line 31
    new-instance v5, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 32
    .line 33
    const-string v7, "FLOW_CONTROL_ERROR"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 40
    .line 41
    new-instance v7, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 42
    .line 43
    const-string v9, "REFUSED_STREAM"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    const/4 v11, 0x7

    .line 47
    invoke-direct {v7, v9, v10, v11}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->f:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 51
    .line 52
    new-instance v9, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 53
    .line 54
    const-string v12, "CANCEL"

    .line 55
    .line 56
    const/4 v13, 0x5

    .line 57
    const/16 v14, 0x8

    .line 58
    .line 59
    invoke-direct {v9, v12, v13, v14}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 60
    .line 61
    .line 62
    sput-object v9, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->g:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 63
    .line 64
    new-instance v12, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 65
    .line 66
    const-string v15, "COMPRESSION_ERROR"

    .line 67
    .line 68
    move/from16 v16, v2

    .line 69
    .line 70
    const/4 v2, 0x6

    .line 71
    move/from16 v17, v4

    .line 72
    .line 73
    const/16 v4, 0x9

    .line 74
    .line 75
    invoke-direct {v12, v15, v2, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 76
    .line 77
    .line 78
    sput-object v12, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->h:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 79
    .line 80
    new-instance v15, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 81
    .line 82
    move/from16 v18, v2

    .line 83
    .line 84
    const-string v2, "CONNECT_ERROR"

    .line 85
    .line 86
    move/from16 v19, v6

    .line 87
    .line 88
    const/16 v6, 0xa

    .line 89
    .line 90
    invoke-direct {v15, v2, v11, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v15, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->i:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 94
    .line 95
    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 96
    .line 97
    move/from16 v20, v8

    .line 98
    .line 99
    const-string v8, "ENHANCE_YOUR_CALM"

    .line 100
    .line 101
    move/from16 v21, v10

    .line 102
    .line 103
    const/16 v10, 0xb

    .line 104
    .line 105
    invoke-direct {v2, v8, v14, v10}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    sput-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 109
    .line 110
    new-instance v8, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 111
    .line 112
    move/from16 v22, v11

    .line 113
    .line 114
    const-string v11, "INADEQUATE_SECURITY"

    .line 115
    .line 116
    move/from16 v23, v13

    .line 117
    .line 118
    const/16 v13, 0xc

    .line 119
    .line 120
    invoke-direct {v8, v11, v4, v13}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v8, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->k:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 124
    .line 125
    new-instance v11, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 126
    .line 127
    const-string v13, "HTTP_1_1_REQUIRED"

    .line 128
    .line 129
    move/from16 v24, v4

    .line 130
    .line 131
    const/16 v4, 0xd

    .line 132
    .line 133
    invoke-direct {v11, v13, v6, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    sput-object v11, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->l:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 137
    .line 138
    new-array v4, v10, [Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 139
    .line 140
    aput-object v0, v4, v16

    .line 141
    .line 142
    aput-object v1, v4, v17

    .line 143
    .line 144
    aput-object v3, v4, v19

    .line 145
    .line 146
    aput-object v5, v4, v20

    .line 147
    .line 148
    aput-object v7, v4, v21

    .line 149
    .line 150
    aput-object v9, v4, v23

    .line 151
    .line 152
    aput-object v12, v4, v18

    .line 153
    .line 154
    aput-object v15, v4, v22

    .line 155
    .line 156
    aput-object v2, v4, v14

    .line 157
    .line 158
    aput-object v8, v4, v24

    .line 159
    .line 160
    aput-object v11, v4, v6

    .line 161
    .line 162
    sput-object v4, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->m:[Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 163
    .line 164
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
    iput p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;
    .locals 5

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->values()[Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->a:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;
    .locals 1

    .line 1
    const-class v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->m:[Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 8
    .line 9
    return-object v0
.end method

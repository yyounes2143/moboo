.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime$Companion;",
        "",
        "<init>",
        "()V",
        "fromInstant",
        "Lkotlin/time/UnboundLocalDateTime;",
        "instant",
        "Lkotlin/time/Instant;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInstant(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .locals 24
    .param p1    # Lkotlin/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getEpochSeconds()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x15180

    .line 6
    .line 7
    .line 8
    div-long v4, v0, v2

    .line 9
    .line 10
    xor-long v6, v0, v2

    .line 11
    .line 12
    const-wide/16 v8, 0x0

    .line 13
    .line 14
    cmp-long v6, v6, v8

    .line 15
    .line 16
    const-wide/16 v10, -0x1

    .line 17
    .line 18
    if-gez v6, :cond_0

    .line 19
    .line 20
    mul-long v6, v4, v2

    .line 21
    .line 22
    cmp-long v6, v6, v0

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    add-long/2addr v4, v10

    .line 27
    :cond_0
    rem-long/2addr v0, v2

    .line 28
    xor-long v6, v0, v2

    .line 29
    .line 30
    neg-long v12, v0

    .line 31
    or-long/2addr v12, v0

    .line 32
    and-long/2addr v6, v12

    .line 33
    const/16 v12, 0x3f

    .line 34
    .line 35
    shr-long/2addr v6, v12

    .line 36
    and-long/2addr v2, v6

    .line 37
    add-long/2addr v0, v2

    .line 38
    long-to-int v0, v0

    .line 39
    const v1, 0xafaa8

    .line 40
    .line 41
    .line 42
    int-to-long v1, v1

    .line 43
    add-long/2addr v4, v1

    .line 44
    const/16 v1, 0x3c

    .line 45
    .line 46
    int-to-long v1, v1

    .line 47
    sub-long/2addr v4, v1

    .line 48
    cmp-long v1, v4, v8

    .line 49
    .line 50
    const/16 v2, 0x190

    .line 51
    .line 52
    const v3, 0x23ab1

    .line 53
    .line 54
    .line 55
    if-gez v1, :cond_1

    .line 56
    .line 57
    const-wide/16 v6, 0x1

    .line 58
    .line 59
    add-long v12, v4, v6

    .line 60
    .line 61
    int-to-long v14, v3

    .line 62
    div-long/2addr v12, v14

    .line 63
    sub-long/2addr v12, v6

    .line 64
    int-to-long v6, v2

    .line 65
    mul-long/2addr v6, v12

    .line 66
    neg-long v12, v12

    .line 67
    mul-long/2addr v12, v14

    .line 68
    add-long/2addr v4, v12

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move-wide v6, v8

    .line 71
    :goto_0
    int-to-long v1, v2

    .line 72
    mul-long v12, v1, v4

    .line 73
    .line 74
    const/16 v14, 0x24f

    .line 75
    .line 76
    int-to-long v14, v14

    .line 77
    add-long/2addr v12, v14

    .line 78
    int-to-long v14, v3

    .line 79
    div-long/2addr v12, v14

    .line 80
    const/16 v3, 0x16d

    .line 81
    .line 82
    int-to-long v14, v3

    .line 83
    mul-long v16, v14, v12

    .line 84
    .line 85
    const/4 v3, 0x4

    .line 86
    move-wide/from16 v18, v8

    .line 87
    .line 88
    int-to-long v8, v3

    .line 89
    div-long v20, v12, v8

    .line 90
    .line 91
    add-long v16, v16, v20

    .line 92
    .line 93
    const/16 v3, 0x64

    .line 94
    .line 95
    move-wide/from16 v20, v10

    .line 96
    .line 97
    int-to-long v10, v3

    .line 98
    div-long v22, v12, v10

    .line 99
    .line 100
    sub-long v16, v16, v22

    .line 101
    .line 102
    div-long v22, v12, v1

    .line 103
    .line 104
    add-long v16, v16, v22

    .line 105
    .line 106
    sub-long v16, v4, v16

    .line 107
    .line 108
    cmp-long v3, v16, v18

    .line 109
    .line 110
    if-gez v3, :cond_2

    .line 111
    .line 112
    add-long v12, v12, v20

    .line 113
    .line 114
    mul-long/2addr v14, v12

    .line 115
    div-long v8, v12, v8

    .line 116
    .line 117
    add-long/2addr v14, v8

    .line 118
    div-long v8, v12, v10

    .line 119
    .line 120
    sub-long/2addr v14, v8

    .line 121
    div-long v1, v12, v1

    .line 122
    .line 123
    add-long/2addr v14, v1

    .line 124
    sub-long v16, v4, v14

    .line 125
    .line 126
    :cond_2
    move-wide/from16 v1, v16

    .line 127
    .line 128
    add-long/2addr v12, v6

    .line 129
    long-to-int v1, v1

    .line 130
    mul-int/lit8 v2, v1, 0x5

    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x2

    .line 133
    .line 134
    div-int/lit16 v2, v2, 0x99

    .line 135
    .line 136
    add-int/lit8 v3, v2, 0x2

    .line 137
    .line 138
    rem-int/lit8 v3, v3, 0xc

    .line 139
    .line 140
    add-int/lit8 v6, v3, 0x1

    .line 141
    .line 142
    mul-int/lit16 v3, v2, 0x132

    .line 143
    .line 144
    add-int/lit8 v3, v3, 0x5

    .line 145
    .line 146
    div-int/lit8 v3, v3, 0xa

    .line 147
    .line 148
    sub-int/2addr v1, v3

    .line 149
    add-int/lit8 v7, v1, 0x1

    .line 150
    .line 151
    div-int/lit8 v2, v2, 0xa

    .line 152
    .line 153
    int-to-long v1, v2

    .line 154
    add-long/2addr v12, v1

    .line 155
    long-to-int v5, v12

    .line 156
    div-int/lit16 v8, v0, 0xe10

    .line 157
    .line 158
    mul-int/lit16 v1, v8, 0xe10

    .line 159
    .line 160
    sub-int/2addr v0, v1

    .line 161
    div-int/lit8 v9, v0, 0x3c

    .line 162
    .line 163
    mul-int/lit8 v1, v9, 0x3c

    .line 164
    .line 165
    sub-int v10, v0, v1

    .line 166
    .line 167
    new-instance v4, Lkotlin/time/UnboundLocalDateTime;

    .line 168
    .line 169
    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    invoke-direct/range {v4 .. v11}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    .line 174
    .line 175
    .line 176
    return-object v4
.end method

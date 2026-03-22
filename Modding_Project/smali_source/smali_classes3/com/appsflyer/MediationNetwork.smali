.class public final enum Lcom/appsflyer/MediationNetwork;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/MediationNetwork;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017"
    }
    d2 = {
        "Lcom/appsflyer/MediationNetwork;",
        "",
        "",
        "p0",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "IRONSOURCE",
        "APPLOVIN_MAX",
        "GOOGLE_ADMOB",
        "FYBER",
        "APPODEAL",
        "ADMOST",
        "TOPON",
        "TRADPLUS",
        "YANDEX",
        "CHARTBOOST",
        "UNITY",
        "TOPON_PTE",
        "CUSTOM_MEDIATION",
        "DIRECT_MONETIZATION_NETWORK"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum ADMOST:Lcom/appsflyer/MediationNetwork;

.field public static final enum APPLOVIN_MAX:Lcom/appsflyer/MediationNetwork;

.field public static final enum APPODEAL:Lcom/appsflyer/MediationNetwork;

.field public static final enum CHARTBOOST:Lcom/appsflyer/MediationNetwork;

.field public static final enum CUSTOM_MEDIATION:Lcom/appsflyer/MediationNetwork;

.field public static final enum DIRECT_MONETIZATION_NETWORK:Lcom/appsflyer/MediationNetwork;

.field public static final enum FYBER:Lcom/appsflyer/MediationNetwork;

.field public static final enum GOOGLE_ADMOB:Lcom/appsflyer/MediationNetwork;

.field public static final enum IRONSOURCE:Lcom/appsflyer/MediationNetwork;

.field public static final enum TOPON:Lcom/appsflyer/MediationNetwork;

.field public static final enum TOPON_PTE:Lcom/appsflyer/MediationNetwork;

.field public static final enum TRADPLUS:Lcom/appsflyer/MediationNetwork;

.field public static final enum UNITY:Lcom/appsflyer/MediationNetwork;

.field public static final enum YANDEX:Lcom/appsflyer/MediationNetwork;

.field private static final synthetic getRevenue:[Lcom/appsflyer/MediationNetwork;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    new-instance v0, Lcom/appsflyer/MediationNetwork;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ironsource"

    .line 5
    .line 6
    const-string v3, "IRONSOURCE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/appsflyer/MediationNetwork;->IRONSOURCE:Lcom/appsflyer/MediationNetwork;

    .line 12
    .line 13
    new-instance v2, Lcom/appsflyer/MediationNetwork;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "applovinmax"

    .line 17
    .line 18
    const-string v5, "APPLOVIN_MAX"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lcom/appsflyer/MediationNetwork;->APPLOVIN_MAX:Lcom/appsflyer/MediationNetwork;

    .line 24
    .line 25
    new-instance v4, Lcom/appsflyer/MediationNetwork;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v6, "googleadmob"

    .line 29
    .line 30
    const-string v7, "GOOGLE_ADMOB"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lcom/appsflyer/MediationNetwork;->GOOGLE_ADMOB:Lcom/appsflyer/MediationNetwork;

    .line 36
    .line 37
    new-instance v6, Lcom/appsflyer/MediationNetwork;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const-string v8, "fyber"

    .line 41
    .line 42
    const-string v9, "FYBER"

    .line 43
    .line 44
    invoke-direct {v6, v9, v7, v8}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lcom/appsflyer/MediationNetwork;->FYBER:Lcom/appsflyer/MediationNetwork;

    .line 48
    .line 49
    new-instance v8, Lcom/appsflyer/MediationNetwork;

    .line 50
    .line 51
    const/4 v9, 0x4

    .line 52
    const-string v10, "appodeal"

    .line 53
    .line 54
    const-string v11, "APPODEAL"

    .line 55
    .line 56
    invoke-direct {v8, v11, v9, v10}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Lcom/appsflyer/MediationNetwork;->APPODEAL:Lcom/appsflyer/MediationNetwork;

    .line 60
    .line 61
    new-instance v10, Lcom/appsflyer/MediationNetwork;

    .line 62
    .line 63
    const/4 v11, 0x5

    .line 64
    const-string v12, "Admost"

    .line 65
    .line 66
    const-string v13, "ADMOST"

    .line 67
    .line 68
    invoke-direct {v10, v13, v11, v12}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v10, Lcom/appsflyer/MediationNetwork;->ADMOST:Lcom/appsflyer/MediationNetwork;

    .line 72
    .line 73
    new-instance v12, Lcom/appsflyer/MediationNetwork;

    .line 74
    .line 75
    const/4 v13, 0x6

    .line 76
    const-string v14, "Topon"

    .line 77
    .line 78
    const-string v15, "TOPON"

    .line 79
    .line 80
    invoke-direct {v12, v15, v13, v14}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v12, Lcom/appsflyer/MediationNetwork;->TOPON:Lcom/appsflyer/MediationNetwork;

    .line 84
    .line 85
    new-instance v14, Lcom/appsflyer/MediationNetwork;

    .line 86
    .line 87
    const/4 v15, 0x7

    .line 88
    move/from16 v16, v1

    .line 89
    .line 90
    const-string v1, "Tradplus"

    .line 91
    .line 92
    move/from16 v17, v3

    .line 93
    .line 94
    const-string v3, "TRADPLUS"

    .line 95
    .line 96
    invoke-direct {v14, v3, v15, v1}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v14, Lcom/appsflyer/MediationNetwork;->TRADPLUS:Lcom/appsflyer/MediationNetwork;

    .line 100
    .line 101
    new-instance v1, Lcom/appsflyer/MediationNetwork;

    .line 102
    .line 103
    const/16 v3, 0x8

    .line 104
    .line 105
    move/from16 v18, v5

    .line 106
    .line 107
    const-string v5, "Yandex"

    .line 108
    .line 109
    move/from16 v19, v7

    .line 110
    .line 111
    const-string v7, "YANDEX"

    .line 112
    .line 113
    invoke-direct {v1, v7, v3, v5}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sput-object v1, Lcom/appsflyer/MediationNetwork;->YANDEX:Lcom/appsflyer/MediationNetwork;

    .line 117
    .line 118
    new-instance v5, Lcom/appsflyer/MediationNetwork;

    .line 119
    .line 120
    const/16 v7, 0x9

    .line 121
    .line 122
    move/from16 v20, v3

    .line 123
    .line 124
    const-string v3, "chartboost"

    .line 125
    .line 126
    move/from16 v21, v9

    .line 127
    .line 128
    const-string v9, "CHARTBOOST"

    .line 129
    .line 130
    invoke-direct {v5, v9, v7, v3}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sput-object v5, Lcom/appsflyer/MediationNetwork;->CHARTBOOST:Lcom/appsflyer/MediationNetwork;

    .line 134
    .line 135
    new-instance v3, Lcom/appsflyer/MediationNetwork;

    .line 136
    .line 137
    const/16 v9, 0xa

    .line 138
    .line 139
    move/from16 v22, v7

    .line 140
    .line 141
    const-string v7, "Unity"

    .line 142
    .line 143
    move/from16 v23, v11

    .line 144
    .line 145
    const-string v11, "UNITY"

    .line 146
    .line 147
    invoke-direct {v3, v11, v9, v7}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sput-object v3, Lcom/appsflyer/MediationNetwork;->UNITY:Lcom/appsflyer/MediationNetwork;

    .line 151
    .line 152
    new-instance v7, Lcom/appsflyer/MediationNetwork;

    .line 153
    .line 154
    const/16 v11, 0xb

    .line 155
    .line 156
    move/from16 v24, v9

    .line 157
    .line 158
    const-string v9, "toponpte"

    .line 159
    .line 160
    move/from16 v25, v13

    .line 161
    .line 162
    const-string v13, "TOPON_PTE"

    .line 163
    .line 164
    invoke-direct {v7, v13, v11, v9}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sput-object v7, Lcom/appsflyer/MediationNetwork;->TOPON_PTE:Lcom/appsflyer/MediationNetwork;

    .line 168
    .line 169
    new-instance v9, Lcom/appsflyer/MediationNetwork;

    .line 170
    .line 171
    const/16 v13, 0xc

    .line 172
    .line 173
    move/from16 v26, v11

    .line 174
    .line 175
    const-string v11, "customMediation"

    .line 176
    .line 177
    move/from16 v27, v15

    .line 178
    .line 179
    const-string v15, "CUSTOM_MEDIATION"

    .line 180
    .line 181
    invoke-direct {v9, v15, v13, v11}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sput-object v9, Lcom/appsflyer/MediationNetwork;->CUSTOM_MEDIATION:Lcom/appsflyer/MediationNetwork;

    .line 185
    .line 186
    new-instance v11, Lcom/appsflyer/MediationNetwork;

    .line 187
    .line 188
    const/16 v15, 0xd

    .line 189
    .line 190
    move/from16 v28, v13

    .line 191
    .line 192
    const-string v13, "directMonetizationNetwork"

    .line 193
    .line 194
    move-object/from16 v29, v0

    .line 195
    .line 196
    const-string v0, "DIRECT_MONETIZATION_NETWORK"

    .line 197
    .line 198
    invoke-direct {v11, v0, v15, v13}, Lcom/appsflyer/MediationNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sput-object v11, Lcom/appsflyer/MediationNetwork;->DIRECT_MONETIZATION_NETWORK:Lcom/appsflyer/MediationNetwork;

    .line 202
    .line 203
    const/16 v0, 0xe

    .line 204
    .line 205
    new-array v0, v0, [Lcom/appsflyer/MediationNetwork;

    .line 206
    .line 207
    aput-object v29, v0, v16

    .line 208
    .line 209
    aput-object v2, v0, v17

    .line 210
    .line 211
    aput-object v4, v0, v18

    .line 212
    .line 213
    aput-object v6, v0, v19

    .line 214
    .line 215
    aput-object v8, v0, v21

    .line 216
    .line 217
    aput-object v10, v0, v23

    .line 218
    .line 219
    aput-object v12, v0, v25

    .line 220
    .line 221
    aput-object v14, v0, v27

    .line 222
    .line 223
    aput-object v1, v0, v20

    .line 224
    .line 225
    aput-object v5, v0, v22

    .line 226
    .line 227
    aput-object v3, v0, v24

    .line 228
    .line 229
    aput-object v7, v0, v26

    .line 230
    .line 231
    aput-object v9, v0, v28

    .line 232
    .line 233
    aput-object v11, v0, v15

    .line 234
    .line 235
    sput-object v0, Lcom/appsflyer/MediationNetwork;->getRevenue:[Lcom/appsflyer/MediationNetwork;

    .line 236
    .line 237
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/appsflyer/MediationNetwork;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/MediationNetwork;
    .locals 1

    .line 1
    const-class v0, Lcom/appsflyer/MediationNetwork;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/appsflyer/MediationNetwork;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/appsflyer/MediationNetwork;
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/MediationNetwork;->getRevenue:[Lcom/appsflyer/MediationNetwork;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/appsflyer/MediationNetwork;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getValue"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/MediationNetwork;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.class public final Lcom/appsflyer/internal/AFd1nSDK;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static areAllFieldsValid:C = '\u0000'

.field private static component3:C = '\u0000'

.field private static copy:C = '\u0000'

.field private static copydefault:I = 0x0

.field private static equals:C = '\u0000'

.field public static getMonetizationNetwork:Ljava/lang/String; = null

.field private static getRevenue:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static hashCode:I = 0x1


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/AppsFlyerProperties;

.field private final component1:Lcom/appsflyer/internal/AFj1cSDK;

.field private final component2:Lcom/appsflyer/internal/AFf1eSDK;

.field private final component4:Lcom/appsflyer/internal/AFe1vSDK;

.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFd1mSDK;

.field private final getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork()V

    .line 2
    .line 3
    .line 4
    const-string v0, "https://%sgcdsdk.%s/install_data/v5.0/"

    .line 5
    .line 6
    sput-object v0, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "https://%sonelink.%s/shortlink-sdk/v2"

    .line 9
    .line 10
    sput-object v0, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue:Ljava/lang/String;

    .line 11
    .line 12
    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    rem-int/lit16 v1, v0, 0x80

    .line 17
    .line 18
    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    .line 19
    .line 20
    rem-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/16 v0, 0x2e

    .line 25
    .line 26
    div-int/lit8 v0, v0, 0x0

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1mSDK;Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/AppsFlyerProperties;Lcom/appsflyer/internal/AFe1vSDK;Lcom/appsflyer/internal/AFj1cSDK;Lcom/appsflyer/internal/AFf1eSDK;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFd1mSDK;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData:Lcom/appsflyer/AppsFlyerProperties;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/appsflyer/internal/AFd1nSDK;->component4:Lcom/appsflyer/internal/AFe1vSDK;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFj1cSDK;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/appsflyer/internal/AFd1nSDK;->component2:Lcom/appsflyer/internal/AFf1eSDK;

    .line 15
    .line 16
    return-void
.end method

.method private static synthetic AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFd1nSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 15
    new-instance v2, Lcom/appsflyer/internal/AFd1bSDK;

    .line 16
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string v5, "GET"

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    const/16 p0, 0x2710

    .line 17
    iput p0, v2, Lcom/appsflyer/internal/AFd1bSDK;->component4:I

    .line 18
    iput-boolean v0, v2, Lcom/appsflyer/internal/AFd1bSDK;->getRevenue:Z

    .line 19
    new-instance p0, Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1dSDK;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private AFAdRevenueData()Z
    .locals 4

    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0xd345299

    const v3, 0xd34529a

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 17

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->$11:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x57

    .line 7
    .line 8
    rem-int/lit16 v2, v1, 0x80

    .line 9
    .line 10
    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->$10:I

    .line 11
    .line 12
    rem-int/2addr v1, v0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    throw v0

    .line 25
    :cond_1
    move-object/from16 v1, p0

    .line 26
    .line 27
    :goto_0
    check-cast v1, [C

    .line 28
    .line 29
    new-instance v2, Lcom/appsflyer/internal/AFk1qSDK;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/appsflyer/internal/AFk1qSDK;-><init>()V

    .line 32
    .line 33
    .line 34
    array-length v3, v1

    .line 35
    new-array v3, v3, [C

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    iput v4, v2, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 39
    .line 40
    new-array v5, v0, [C

    .line 41
    .line 42
    :goto_1
    iget v6, v2, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 43
    .line 44
    array-length v7, v1

    .line 45
    if-ge v6, v7, :cond_4

    .line 46
    .line 47
    sget v7, Lcom/appsflyer/internal/AFd1nSDK;->$10:I

    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x61

    .line 50
    .line 51
    rem-int/lit16 v8, v7, 0x80

    .line 52
    .line 53
    sput v8, Lcom/appsflyer/internal/AFd1nSDK;->$11:I

    .line 54
    .line 55
    rem-int/2addr v7, v0

    .line 56
    const/4 v8, 0x1

    .line 57
    if-nez v7, :cond_2

    .line 58
    .line 59
    aget-char v7, v1, v6

    .line 60
    .line 61
    aput-char v7, v5, v8

    .line 62
    .line 63
    aget-char v6, v1, v6

    .line 64
    .line 65
    aput-char v6, v5, v8

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    aget-char v7, v1, v6

    .line 69
    .line 70
    aput-char v7, v5, v4

    .line 71
    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    aget-char v6, v1, v6

    .line 75
    .line 76
    aput-char v6, v5, v8

    .line 77
    .line 78
    :goto_2
    const v6, 0xe370

    .line 79
    .line 80
    .line 81
    move v7, v4

    .line 82
    :goto_3
    const/16 v9, 0x10

    .line 83
    .line 84
    if-ge v7, v9, :cond_3

    .line 85
    .line 86
    sget v9, Lcom/appsflyer/internal/AFd1nSDK;->$10:I

    .line 87
    .line 88
    add-int/lit8 v9, v9, 0x4b

    .line 89
    .line 90
    rem-int/lit16 v9, v9, 0x80

    .line 91
    .line 92
    sput v9, Lcom/appsflyer/internal/AFd1nSDK;->$11:I

    .line 93
    .line 94
    aget-char v9, v5, v8

    .line 95
    .line 96
    aget-char v10, v5, v4

    .line 97
    .line 98
    add-int v11, v10, v6

    .line 99
    .line 100
    shl-int/lit8 v12, v10, 0x4

    .line 101
    .line 102
    sget-char v13, Lcom/appsflyer/internal/AFd1nSDK;->equals:C

    .line 103
    .line 104
    int-to-long v13, v13

    .line 105
    const-wide v15, -0x10a3f40b27dab58cL    # -2.65765482159287E228

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    xor-long/2addr v13, v15

    .line 111
    long-to-int v13, v13

    .line 112
    int-to-char v13, v13

    .line 113
    add-int/2addr v12, v13

    .line 114
    xor-int/2addr v11, v12

    .line 115
    ushr-int/lit8 v12, v10, 0x5

    .line 116
    .line 117
    sget-char v13, Lcom/appsflyer/internal/AFd1nSDK;->copy:C

    .line 118
    .line 119
    int-to-long v13, v13

    .line 120
    xor-long/2addr v13, v15

    .line 121
    long-to-int v13, v13

    .line 122
    int-to-char v13, v13

    .line 123
    add-int/2addr v12, v13

    .line 124
    xor-int/2addr v11, v12

    .line 125
    sub-int/2addr v9, v11

    .line 126
    int-to-char v9, v9

    .line 127
    aput-char v9, v5, v8

    .line 128
    .line 129
    add-int v11, v9, v6

    .line 130
    .line 131
    shl-int/lit8 v12, v9, 0x4

    .line 132
    .line 133
    sget-char v13, Lcom/appsflyer/internal/AFd1nSDK;->component3:C

    .line 134
    .line 135
    int-to-long v13, v13

    .line 136
    xor-long/2addr v13, v15

    .line 137
    long-to-int v13, v13

    .line 138
    int-to-char v13, v13

    .line 139
    add-int/2addr v12, v13

    .line 140
    xor-int/2addr v11, v12

    .line 141
    ushr-int/lit8 v9, v9, 0x5

    .line 142
    .line 143
    sget-char v12, Lcom/appsflyer/internal/AFd1nSDK;->areAllFieldsValid:C

    .line 144
    .line 145
    int-to-long v12, v12

    .line 146
    xor-long/2addr v12, v15

    .line 147
    long-to-int v12, v12

    .line 148
    int-to-char v12, v12

    .line 149
    add-int/2addr v9, v12

    .line 150
    xor-int/2addr v9, v11

    .line 151
    sub-int/2addr v10, v9

    .line 152
    int-to-char v9, v10

    .line 153
    aput-char v9, v5, v4

    .line 154
    .line 155
    const v9, 0x9e37

    .line 156
    .line 157
    .line 158
    sub-int/2addr v6, v9

    .line 159
    add-int/lit8 v7, v7, 0x1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    iget v6, v2, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 163
    .line 164
    aget-char v7, v5, v4

    .line 165
    .line 166
    aput-char v7, v3, v6

    .line 167
    .line 168
    add-int/lit8 v7, v6, 0x1

    .line 169
    .line 170
    aget-char v8, v5, v8

    .line 171
    .line 172
    aput-char v8, v3, v7

    .line 173
    .line 174
    add-int/2addr v6, v0

    .line 175
    iput v6, v2, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_4
    new-instance v0, Ljava/lang/String;

    .line 180
    .line 181
    move/from16 v1, p1

    .line 182
    .line 183
    invoke-direct {v0, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    .line 184
    .line 185
    .line 186
    aput-object v0, p2, v4

    .line 187
    .line 188
    return-void
.end method

.method private static synthetic getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFd1nSDK;

    const/4 v2, 0x1

    aget-object v3, p0, v2

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x2

    aget-object v5, p0, v4

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object p0, p0, v6

    check-cast p0, Ljava/lang/String;

    .line 1
    sget v6, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/2addr v6, v2

    rem-int/lit16 v6, v6, 0x80

    sput v6, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    const/4 v6, 0x0

    .line 2
    :try_start_0
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v3, v7, v0

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const v5, 0x4eb9ad1d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v8

    int-to-byte v8, v8

    add-int/lit16 v8, v8, 0xc7

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    int-to-char v9, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v10, v10, 0x25

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v9, "getRevenue"

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Ljava/util/Map;

    aput-object v11, v10, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v10, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v8, Ljava/lang/reflect/Method;

    invoke-virtual {v8, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFj1cSDK;

    if-eqz p0, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "4.?(\\d+)?.?(\\d+)"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "3.?(\\d+)?.?(\\d+)"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget p0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    .line 7
    iget-object p0, v0, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    .line 8
    const-string v2, "https://%sviap.%s/api/v1/android/validate_purchase_v2?app_id="

    .line 9
    invoke-interface {p0, v2}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 10
    :cond_3
    :goto_1
    sget p0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p0, v4

    const-string v2, "https://%sviap.%s/api/v1/android/validate_purchase?app_id="

    if-eqz p0, :cond_4

    .line 11
    iget-object p0, v0, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    invoke-interface {p0, v2}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    :goto_2
    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFj1cSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 13
    new-instance v7, Lcom/appsflyer/internal/AFd1bSDK;

    .line 14
    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v12, 0x1

    const-string v10, "POST"

    invoke-direct/range {v7 .. v12}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 15
    new-instance p0, Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1dSDK;-><init>()V

    invoke-direct {v1, v7, p0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p0

    return-object p0

    .line 16
    :cond_4
    iget-object p0, v0, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    invoke-interface {p0, v2}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    throw v6

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 18
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    throw v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    goto :goto_3

    :cond_5
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :goto_3
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->AFLogger:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v0 .. v5}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v6
.end method

.method private getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;[B)V
    .locals 2

    .line 69
    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "com.appsflyer.security.enable"

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;)Z

    move-result v0

    .line 71
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->getMediationNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 72
    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    .line 73
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {p1, v0}, Lcom/appsflyer/internal/AFf1eSDK;->getRevenue(Lcom/appsflyer/internal/AFh1mSDK;Lcom/appsflyer/internal/AFc1oSDK;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFf1eSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1mSDK;[B)V

    const/16 p1, 0x58

    .line 76
    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFf1eSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1mSDK;[B)V

    .line 78
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    :cond_1
    return-void

    .line 79
    :cond_2
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {p2, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;)Z

    .line 80
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->getMediationNetwork()Z

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 6

    mul-int/lit16 v0, p1, 0x267

    mul-int/lit16 v1, p2, -0x265

    add-int/2addr v0, v1

    not-int v1, p1

    or-int v2, v1, p2

    not-int v2, v2

    or-int v3, p3, v2

    not-int v4, p2

    or-int v5, v4, p1

    not-int v5, v5

    or-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x266

    add-int/2addr v0, v3

    not-int p3, p3

    or-int v3, v1, p3

    not-int v3, v3

    or-int/2addr v2, v3

    or-int v3, p3, p2

    not-int v3, v3

    or-int/2addr v2, v3

    mul-int/lit16 v2, v2, -0x4cc

    add-int/2addr v0, v2

    or-int/2addr v1, v4

    or-int/2addr v1, p3

    not-int v1, v1

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    not-int p1, p1

    or-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x266

    add-int/2addr v0, p1

    const/4 p1, 0x2

    const/4 p2, 0x1

    if-eq v0, p2, :cond_1

    if-eq v0, p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p3, 0x0

    aget-object p0, p0, p3

    check-cast p0, Lcom/appsflyer/internal/AFd1nSDK;

    .line 2
    sget p3, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p3, p3, 0x71

    rem-int/lit16 p3, p3, 0x80

    sput p3, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData:Lcom/appsflyer/AppsFlyerProperties;

    const-string p3, "http_cache"

    invoke-virtual {p0, p3, p2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eq p0, p2, :cond_3

    sget p0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr p0, p1

    if-nez p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static getMediationNetwork()V
    .locals 1

    const v0, 0x9615

    .line 25
    sput-char v0, Lcom/appsflyer/internal/AFd1nSDK;->component3:C

    const/16 v0, 0x3c71

    sput-char v0, Lcom/appsflyer/internal/AFd1nSDK;->areAllFieldsValid:C

    const v0, 0xc09a

    sput-char v0, Lcom/appsflyer/internal/AFd1nSDK;->equals:C

    const/16 v0, 0x3181

    sput-char v0, Lcom/appsflyer/internal/AFd1nSDK;->copy:C

    return-void
.end method

.method private static varargs getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x1

    .line 41
    const-string v1, "v2"

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 42
    new-array v2, p2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 43
    const-string v2, "\u2063"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Lcom/appsflyer/internal/AFj1dSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    div-int/2addr p1, p2

    :cond_0
    return-object p0
.end method

.method private getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFd1bSDK;",
            "Lcom/appsflyer/internal/AFe1zSDK<",
            "TT;>;)",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "TT;>;"
        }
    .end annotation

    .line 20
    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    .line 21
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->AFAdRevenueData()Z

    move-result v0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;Z)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x33

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    div-int/lit8 p2, p2, 0x0

    :cond_0
    return-object p1
.end method

.method private getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;Z)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFd1bSDK;",
            "Lcom/appsflyer/internal/AFe1zSDK<",
            "TT;>;Z)",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "TT;>;"
        }
    .end annotation

    .line 41
    iput-boolean p3, p1, Lcom/appsflyer/internal/AFd1bSDK;->getCurrencyIso4217Code:Z

    .line 42
    iget-object p3, p0, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFd1mSDK;

    .line 43
    new-instance v0, Lcom/appsflyer/internal/AFd1hSDK;

    iget-object v1, p3, Lcom/appsflyer/internal/AFd1mSDK;->getRevenue:Ljava/util/concurrent/ExecutorService;

    iget-object p3, p3, Lcom/appsflyer/internal/AFd1mSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFd1gSDK;

    invoke-direct {v0, p1, v1, p3, p2}, Lcom/appsflyer/internal/AFd1hSDK;-><init>(Lcom/appsflyer/internal/AFd1bSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFd1gSDK;Lcom/appsflyer/internal/AFe1zSDK;)V

    .line 44
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private getRevenue()Ljava/util/Map;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    const-string v1, "build_number"

    const-string v2, "6.17.5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    .line 26
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    const-string v2, "appsFlyerCount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "counter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "\u0112\u24be\u301f\u570c\uea94\u72e6"

    invoke-static {v4, v1, v2}, Lcom/appsflyer/internal/AFd1nSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v1, v2, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    .line 32
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1oSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 33
    const-string v2, "app_version_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    .line 35
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 36
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "app_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Lcom/appsflyer/internal/AFa1uSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFa1uSDK;-><init>()V

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platformextension"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    return-object v0
.end method


# virtual methods
.method public final AFAdRevenueData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 11
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x0

    .line 1
    :try_start_0
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v1

    aput-object p1, v5, v0

    sget-object p1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const p2, 0x4eb9ad1d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v6

    add-int/lit16 v6, v6, 0xc6

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    int-to-char v7, v7

    const/16 v8, 0x30

    invoke-static {v3, v8, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-static {v6, v7, v3}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v6, "getRevenue"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v2, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-virtual {v3, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFj1cSDK;

    if-eqz p3, :cond_3

    .line 3
    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 p2, p2, 0x57

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    .line 4
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lkotlin/text/Regex;

    const-string v0, "4.?(\\d+)?.?(\\d+)"

    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Lkotlin/text/Regex;

    const-string v0, "3.?(\\d+)?.?(\\d+)"

    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object p2, p1, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    const-string p3, "https://%sars.%s/api/v2/android/validate_subscription_v2?app_id="

    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 7
    :cond_3
    :goto_1
    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x25

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    .line 8
    :cond_4
    :goto_2
    iget-object p2, p1, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    const-string p3, "https://%sars.%s/api/v2/android/validate_subscription?app_id="

    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    :goto_3
    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFj1cSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    new-instance v5, Lcom/appsflyer/internal/AFd1bSDK;

    .line 11
    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v10, 0x1

    const-string v8, "POST"

    invoke-direct/range {v5 .. v10}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 12
    new-instance p1, Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1dSDK;-><init>()V

    invoke-direct {p0, v5, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    throw p2

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    goto :goto_4

    :cond_5
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :goto_4
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v7, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v5 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v4
.end method

.method public final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFc1hSDK;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1mSDK;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/internal/AFc1hSDK;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, ""

    const/4 v5, 0x0

    .line 32
    :try_start_0
    new-array v6, v3, [Ljava/lang/Object;

    aput-object p3, v6, v2

    aput-object p2, v6, v1

    aput-object p1, v6, v0

    sget-object p2, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const p3, -0x3dad87f0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit16 v7, v7, 0xc6

    invoke-static {v4, v4, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    shr-int/lit8 v8, v8, 0x6

    add-int/lit8 v8, v8, 0x25

    invoke-static {v7, v4, v8}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v7, "AFAdRevenueData"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v8, Lcom/appsflyer/internal/AFh1mSDK;

    aput-object v8, v3, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v3, v1

    const-class v0, Lcom/appsflyer/internal/AFc1hSDK;

    aput-object v0, v3, v2

    invoke-virtual {v4, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-direct {p0, p1, v8}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 p2, p2, 0x43

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    .line 35
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFj1cSDK;

    .line 36
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->getRevenue()Z

    move-result p3

    .line 37
    instance-of v0, p1, Lcom/appsflyer/internal/AFh1lSDK;

    .line 38
    instance-of v1, p1, Lcom/appsflyer/internal/AFh1nSDK;

    .line 39
    instance-of v3, p1, Lcom/appsflyer/internal/AFh1kSDK;

    .line 40
    instance-of v4, p1, Lcom/appsflyer/internal/AFh1cSDK;

    .line 41
    instance-of v6, p1, Lcom/appsflyer/internal/AFh1bSDK;

    .line 42
    instance-of v7, p1, Lcom/appsflyer/internal/AFg1tSDK;

    .line 43
    instance-of v9, p1, Lcom/appsflyer/internal/AFh1iSDK;

    if-eqz v9, :cond_1

    .line 44
    iget-object p3, p2, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    const-string v1, "https://%spia.%s/api/v1.0/pia-android-event?app_id="

    invoke-interface {p3, v1}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_3

    :cond_1
    if-nez v3, :cond_a

    .line 45
    sget v3, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    rem-int/2addr v3, v2

    if-eqz v3, :cond_9

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    add-int/lit8 v9, v9, 0x3f

    rem-int/lit16 v9, v9, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    .line 46
    iget-object p3, p2, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    sget-object v1, Lcom/appsflyer/internal/AFj1cSDK;->AFAdRevenueData:Ljava/lang/String;

    invoke-interface {p3, v1}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    .line 47
    iget-object p3, p2, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    .line 48
    sget-object v1, Lcom/appsflyer/internal/AFj1cSDK;->component1:Ljava/lang/String;

    .line 49
    invoke-interface {p3, v1}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    .line 50
    iget-object p2, p2, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    const-string p3, "https://%ssdk-services.%s/validate-android-signature"

    invoke-interface {p2, p3}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v7, p2

    goto :goto_4

    :cond_5
    if-eqz v7, :cond_6

    .line 51
    iget-object p3, p2, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    sget-object v1, Lcom/appsflyer/internal/AFj1cSDK;->component2:Ljava/lang/String;

    invoke-interface {p3, v1}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 52
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_8

    .line 53
    iget p3, p1, Lcom/appsflyer/internal/AFh1mSDK;->component4:I

    if-ge p3, v2, :cond_7

    .line 54
    iget-object p3, p2, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    sget-object v1, Lcom/appsflyer/internal/AFj1cSDK;->getMonetizationNetwork:Ljava/lang/String;

    invoke-interface {p3, v1}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    .line 55
    :cond_7
    iget-object p3, p2, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    sget-object v1, Lcom/appsflyer/internal/AFj1cSDK;->areAllFieldsValid:Ljava/lang/String;

    invoke-interface {p3, v1}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    .line 56
    :cond_8
    iget-object p3, p2, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    sget-object v1, Lcom/appsflyer/internal/AFj1cSDK;->component4:Ljava/lang/String;

    invoke-interface {p3, v1}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    .line 57
    :cond_9
    throw v5

    .line 58
    :cond_a
    :goto_2
    iget-object p3, p2, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    sget-object v1, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork:Ljava/lang/String;

    invoke-interface {p3, v1}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 59
    :goto_3
    invoke-virtual {p2, p3}, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 60
    invoke-static {p3, v0}, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 61
    invoke-virtual {p2, p3, v7}, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 62
    sget p3, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p3, p3, 0x29

    rem-int/lit16 p3, p3, 0x80

    sput p3, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    goto :goto_1

    .line 63
    :goto_4
    new-instance v6, Lcom/appsflyer/internal/AFd1bSDK;

    .line 64
    iget-object v10, p1, Lcom/appsflyer/internal/AFh1mSDK;->getMediationNetwork:Ljava/util/Map;

    .line 65
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->getCurrencyIso4217Code()Z

    move-result v11

    const-string v9, "POST"

    invoke-direct/range {v6 .. v11}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 66
    new-instance p1, Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1dSDK;-><init>()V

    invoke-direct {p0, v6, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v9, p1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 67
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_b

    throw p2

    :cond_b
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :goto_5
    sget-object v6, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v7, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v6 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v5
.end method

.method public final getCurrencyIso4217Code(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const v1, 0x5b87bdbd

    const v2, -0x5b87bdbd

    invoke-static {v0, v1, v2, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1hSDK;

    return-object p1
.end method

.method public final getCurrencyIso4217Code(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 20
    sget v3, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v3, v3, 0x9

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    const/4 v3, 0x0

    .line 21
    :try_start_0
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p1, v4, v0

    sget-object p1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const p2, 0x4eb9ad1d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x30

    invoke-static {v5}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    add-int/lit16 v5, v5, 0x96

    invoke-static {v0, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    int-to-char v6, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x25

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-string v6, "getRevenue"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/util/Map;

    aput-object v8, v7, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFj1cSDK;

    .line 23
    iget-object p2, p1, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    .line 24
    const-string v0, "https://%svalidate-and-log.%s/api/v4.0/android/subscription/validateAndLog?app_id="

    .line 25
    invoke-interface {p2, v0}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    new-instance v4, Lcom/appsflyer/internal/AFd1bSDK;

    .line 28
    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v9, 0x1

    const-string v7, "POST"

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 29
    new-instance p1, Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1dSDK;-><init>()V

    invoke-direct {p0, v4, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x31

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    rem-int/2addr p2, v2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    throw v3

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 30
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    throw p2

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v7, p1

    goto :goto_1

    :cond_2
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :goto_1
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v3
.end method

.method public final getMediationNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/appsflyer/internal/AFa1ySDK;->getRevenue()Lcom/appsflyer/internal/AFa1ySDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v6, v7, v0

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue()Ljava/util/Map;

    move-result-object v3

    .line 8
    const-string v4, "build_number"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string v5, "Af-UUID"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v9, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string p3, "Af-Meta-Sdk-Ver"

    invoke-interface {v9, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p3, "counter"

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v5, "Af-Meta-Counter"

    invoke-interface {v9, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string p3, "model"

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v5, "Af-Meta-Model"

    invoke-interface {v9, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p3, "platformextension"

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v5, "Af-Meta-Platform"

    invoke-interface {v9, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string p3, "sdk"

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "Af-Meta-System-Version"

    invoke-interface {v9, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p3, ""

    const/16 v3, 0x30

    invoke-static {p3, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p3

    add-int/lit8 p3, p3, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "\uaab9\u11ce\u4a99\u4f67\ud7ec\ueecf\u811b\u14ac\u8975\u35d7\u0741\u8a7c"

    invoke-static {v3, p3, v0}, Lcom/appsflyer/internal/AFd1nSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object p3, v0, v1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    const-string v8, "GET"

    filled-new-array {v8, v2, p1, p2, v4}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v2, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v9, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v5, Lcom/appsflyer/internal/AFd1bSDK;

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 18
    new-instance p1, Lcom/appsflyer/internal/AFd1eSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1eSDK;-><init>()V

    invoke-direct {p0, v5, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 p2, p2, 0x49

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    return-object p1
.end method

.method public final getMediationNetwork(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const p2, -0x43633001

    const p3, 0x43633003

    invoke-static {v0, p2, p3, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFd1hSDK;

    return-object p1
.end method

.method public final getMediationNetwork(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1kSDK;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1kSDK;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 19
    sget v3, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    add-int/lit8 v3, v3, 0x2b

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    const/4 v3, 0x0

    .line 20
    :try_start_0
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p1, v4, v0

    sget-object p1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const p2, 0x4eb9ad1d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    add-int/lit16 v5, v5, 0xc5

    invoke-static {v0, v0}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v6

    int-to-char v6, v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    rsub-int/lit8 v7, v7, 0x25

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    const-string v6, "getRevenue"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v7, Ljava/util/Map;

    aput-object v7, v2, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 21
    :try_start_1
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v6, "AFFinalizer: failed to create bytes."

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to create bytes from proxyData, bytes are null"

    invoke-direct {v7, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    sget p1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    return-object v3

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v7, p1

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/appsflyer/internal/AFd1kSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-direct {p2, v0, p1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>(Lcom/appsflyer/internal/AFc1oSDK;[B)V

    return-object p2

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 23
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    throw p2

    :cond_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :goto_1
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v3
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFa1rSDK;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1rSDK;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Lcom/appsflyer/internal/AFa1oSDK;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 47
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1eSDK;->getMediationNetwork(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/appsflyer/internal/AFd1bSDK;

    .line 49
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1mSDK;->component2:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 51
    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 52
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->getCurrencyIso4217Code()Z

    move-result v6

    const-string v4, "POST"

    invoke-direct/range {v1 .. v6}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 53
    new-instance p1, Lcom/appsflyer/internal/AFa1pSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFa1pSDK;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    .line 17
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 18
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    .line 21
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v0, v1, p1, p2}, Lcom/appsflyer/internal/AFd1fSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1fSDK;

    move-result-object p1

    new-instance p2, Lcom/appsflyer/internal/AFd1iSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFd1iSDK;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x17

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    return-object p1
.end method

.method public final getMonetizationNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 24
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string v3, "ttl"

    const-string v4, "-1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v3, "uuid"

    invoke-interface {v2, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v3, "data"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p2, "meta"

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 29
    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x55

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    .line 30
    const-string p2, "brand_domain"

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x4b

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    .line 32
    :cond_0
    invoke-static {v2}, Lcom/appsflyer/internal/AFg1eSDK;->getMediationNetwork(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 33
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 34
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0xc

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "\uaab9\u11ce\u4a99\u4f67\ud7ec\ueecf\u811b\u14ac\u8975\u35d7\u0741\u8a7c"

    invoke-static {v3, p3, v2}, Lcom/appsflyer/internal/AFd1nSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object p3, v2, v1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    const-string v2, "POST"

    filled-new-array {v2, p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, p4, v2}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v6, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v2, Lcom/appsflyer/internal/AFd1bSDK;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p5

    invoke-virtual {p5}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/appsflyer/internal/AFa1ySDK;->getRevenue()Lcom/appsflyer/internal/AFa1ySDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v1

    aput-object v3, v4, v0

    invoke-static {p4, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 37
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "POST"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 39
    new-instance p1, Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1dSDK;-><init>()V

    invoke-direct {p0, v2, p1, v0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;Z)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    return-object p1
.end method

.method public final getMonetizationNetwork(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 1
    sget v4, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v4, v4, 0x6f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    rem-int/2addr v4, v3

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/util/Map;

    const-string v7, "getRevenue"

    const/16 v8, 0x30

    const/4 v9, 0x0

    const-string v10, ""

    const v11, 0x4eb9ad1d

    if-eqz v4, :cond_2

    .line 2
    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p1, v4, v0

    sget-object v12, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v0}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v13

    rsub-int v13, v13, 0xc6

    invoke-static {v10, v8}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v8

    add-int/2addr v8, v2

    int-to-char v8, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    rsub-int/lit8 v10, v10, 0x26

    invoke-static {v13, v8, v10}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v6, v3, v0

    aput-object v5, v3, v2

    invoke-virtual {v8, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v13, Ljava/lang/reflect/Method;

    invoke-virtual {v13, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    throw v9

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    throw v2

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p1, v4, v0

    sget-object v12, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v10, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v8

    rsub-int v8, v8, 0xc5

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    int-to-char v13, v13

    invoke-static {v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x25

    invoke-static {v8, v13, v10}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v6, v3, v0

    aput-object v5, v3, v2

    invoke-virtual {v8, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v13, Ljava/lang/reflect/Method;

    invoke-virtual {v13, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1nSDK;->component1:Lcom/appsflyer/internal/AFj1cSDK;

    .line 6
    iget-object v2, v0, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    .line 7
    const-string v3, "https://%svalidate-and-log.%s/api/v4.0/android/one_time_purchase/validateAndLog?app_id="

    .line 8
    invoke-interface {v2, v3}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v2, Lcom/appsflyer/internal/AFd1bSDK;

    .line 11
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v7, 0x1

    const-string v5, "POST"

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 12
    new-instance v0, Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1dSDK;-><init>()V

    invoke-direct {v1, v2, v0}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object v0

    .line 13
    sget v2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    return-object v0

    :catchall_2
    move-exception v0

    .line 14
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    throw v2

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :goto_2
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->force:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "AFFinalizer: reflection init failed."

    invoke-virtual/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-object v9
.end method

.method public final getRevenue(Lcom/appsflyer/internal/AFh1gSDK;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1gSDK;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->getMonetizationNetwork()[B

    move-result-object v2

    .line 15
    new-instance v0, Lcom/appsflyer/internal/AFd1bSDK;

    .line 16
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1mSDK;->component2:Ljava/lang/String;

    .line 17
    iget-object v4, p1, Lcom/appsflyer/internal/AFh1mSDK;->getMediationNetwork:Ljava/util/Map;

    const/4 v5, 0x1

    .line 18
    const-string v3, "POST"

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 19
    new-instance p1, Lcom/appsflyer/internal/AFd1dSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1dSDK;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    return-object p1
.end method

.method public final getRevenue(ZZLjava/lang/String;I)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "I)",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Lcom/appsflyer/internal/AFi1vSDK;",
            ">;"
        }
    .end annotation

    const/4 p4, 0x4

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1nSDK;->component4:Lcom/appsflyer/internal/AFe1vSDK;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/appsflyer/internal/AFe1vSDK;->getMonetizationNetwork:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/appsflyer/internal/AFe1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 3
    :goto_0
    const-string v1, ""

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_1

    :cond_1
    sget p2, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x11

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    .line 4
    const-string p2, "stg"

    :goto_1
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 5
    invoke-static {}, Lcom/appsflyer/internal/AFe1vSDK;->getMediationNetwork()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    sget v1, Lcom/appsflyer/internal/AFd1nSDK;->hashCode:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1nSDK;->copydefault:I

    .line 7
    iget-object v1, v0, Lcom/appsflyer/internal/AFe1vSDK;->AFAdRevenueData:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    :goto_2
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1vSDK;->AFAdRevenueData()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-array v2, p4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const/4 p2, 0x2

    aput-object v0, v2, p2

    const/4 p2, 0x3

    aput-object p3, v2, p2

    .line 10
    invoke-static {v2, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/appsflyer/internal/AFd1bSDK;

    const-string p3, "GET"

    invoke-direct {p2, p1, p3}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x5dc

    .line 12
    iput p1, p2, Lcom/appsflyer/internal/AFd1bSDK;->component4:I

    .line 13
    new-instance p1, Lcom/appsflyer/internal/AFd1cSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFd1cSDK;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getRevenue(Lcom/appsflyer/internal/AFd1bSDK;Lcom/appsflyer/internal/AFe1zSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    return-object p1
.end method

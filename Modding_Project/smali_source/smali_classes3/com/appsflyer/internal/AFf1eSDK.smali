.class public final Lcom/appsflyer/internal/AFf1eSDK;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static areAllFieldsValid:C = '\u712c'

.field private static component4:C = '\u9b2b'

.field private static copydefault:C = '\u0f34'

.field private static equals:I = 0x0

.field private static hashCode:I = 0x1

.field private static toString:C = '\uc600'


# instance fields
.field private AFAdRevenueData:Z

.field private volatile component1:Ljava/lang/String;

.field private volatile component2:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile component3:Z

.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1dSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field getMediationNetwork:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private getRevenue:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1hSDK;Lcom/appsflyer/internal/AFf1dSDK;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFc1hSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFf1dSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFAdRevenueData:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->component3:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1dSDK;

    .line 12
    .line 13
    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 17

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object/from16 v0, p0

    .line 9
    .line 10
    :goto_0
    check-cast v0, [C

    .line 11
    .line 12
    new-instance v1, Lcom/appsflyer/internal/AFk1qSDK;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1qSDK;-><init>()V

    .line 15
    .line 16
    .line 17
    array-length v2, v0

    .line 18
    new-array v2, v2, [C

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    iput v3, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    new-array v5, v4, [C

    .line 25
    .line 26
    :goto_1
    iget v6, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 27
    .line 28
    array-length v7, v0

    .line 29
    if-ge v6, v7, :cond_2

    .line 30
    .line 31
    sget v7, Lcom/appsflyer/internal/AFf1eSDK;->$11:I

    .line 32
    .line 33
    add-int/lit8 v7, v7, 0x27

    .line 34
    .line 35
    rem-int/lit16 v7, v7, 0x80

    .line 36
    .line 37
    sput v7, Lcom/appsflyer/internal/AFf1eSDK;->$10:I

    .line 38
    .line 39
    aget-char v7, v0, v6

    .line 40
    .line 41
    aput-char v7, v5, v3

    .line 42
    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    aget-char v6, v0, v6

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    aput-char v6, v5, v7

    .line 49
    .line 50
    const v6, 0xe370

    .line 51
    .line 52
    .line 53
    move v8, v3

    .line 54
    :goto_2
    const/16 v9, 0x10

    .line 55
    .line 56
    if-ge v8, v9, :cond_1

    .line 57
    .line 58
    sget v9, Lcom/appsflyer/internal/AFf1eSDK;->$10:I

    .line 59
    .line 60
    add-int/lit8 v9, v9, 0x5b

    .line 61
    .line 62
    rem-int/lit16 v9, v9, 0x80

    .line 63
    .line 64
    sput v9, Lcom/appsflyer/internal/AFf1eSDK;->$11:I

    .line 65
    .line 66
    aget-char v9, v5, v7

    .line 67
    .line 68
    aget-char v10, v5, v3

    .line 69
    .line 70
    add-int v11, v10, v6

    .line 71
    .line 72
    shl-int/lit8 v12, v10, 0x4

    .line 73
    .line 74
    sget-char v13, Lcom/appsflyer/internal/AFf1eSDK;->copydefault:C

    .line 75
    .line 76
    int-to-long v13, v13

    .line 77
    const-wide v15, -0x10a3f40b27dab58cL    # -2.65765482159287E228

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    xor-long/2addr v13, v15

    .line 83
    long-to-int v13, v13

    .line 84
    int-to-char v13, v13

    .line 85
    add-int/2addr v12, v13

    .line 86
    xor-int/2addr v11, v12

    .line 87
    ushr-int/lit8 v12, v10, 0x5

    .line 88
    .line 89
    sget-char v13, Lcom/appsflyer/internal/AFf1eSDK;->toString:C

    .line 90
    .line 91
    int-to-long v13, v13

    .line 92
    xor-long/2addr v13, v15

    .line 93
    long-to-int v13, v13

    .line 94
    int-to-char v13, v13

    .line 95
    add-int/2addr v12, v13

    .line 96
    xor-int/2addr v11, v12

    .line 97
    sub-int/2addr v9, v11

    .line 98
    int-to-char v9, v9

    .line 99
    aput-char v9, v5, v7

    .line 100
    .line 101
    add-int v11, v9, v6

    .line 102
    .line 103
    shl-int/lit8 v12, v9, 0x4

    .line 104
    .line 105
    sget-char v13, Lcom/appsflyer/internal/AFf1eSDK;->component4:C

    .line 106
    .line 107
    int-to-long v13, v13

    .line 108
    xor-long/2addr v13, v15

    .line 109
    long-to-int v13, v13

    .line 110
    int-to-char v13, v13

    .line 111
    add-int/2addr v12, v13

    .line 112
    xor-int/2addr v11, v12

    .line 113
    ushr-int/lit8 v9, v9, 0x5

    .line 114
    .line 115
    sget-char v12, Lcom/appsflyer/internal/AFf1eSDK;->areAllFieldsValid:C

    .line 116
    .line 117
    int-to-long v12, v12

    .line 118
    xor-long/2addr v12, v15

    .line 119
    long-to-int v12, v12

    .line 120
    int-to-char v12, v12

    .line 121
    add-int/2addr v9, v12

    .line 122
    xor-int/2addr v9, v11

    .line 123
    sub-int/2addr v10, v9

    .line 124
    int-to-char v9, v10

    .line 125
    aput-char v9, v5, v3

    .line 126
    .line 127
    const v9, 0x9e37

    .line 128
    .line 129
    .line 130
    sub-int/2addr v6, v9

    .line 131
    add-int/lit8 v8, v8, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_1
    iget v6, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 135
    .line 136
    aget-char v8, v5, v3

    .line 137
    .line 138
    aput-char v8, v2, v6

    .line 139
    .line 140
    add-int/lit8 v8, v6, 0x1

    .line 141
    .line 142
    aget-char v7, v5, v7

    .line 143
    .line 144
    aput-char v7, v2, v8

    .line 145
    .line 146
    add-int/2addr v6, v4

    .line 147
    iput v6, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 151
    .line 152
    move/from16 v1, p1

    .line 153
    .line 154
    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 155
    .line 156
    .line 157
    aput-object v0, p2, v3

    .line 158
    .line 159
    return-void
.end method

.method private component1()Z
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x53

    .line 4
    .line 5
    rem-int/lit16 v1, v1, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork:Ljava/util/Map;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x45

    .line 14
    .line 15
    rem-int/lit16 v0, v0, 0x80

    .line 16
    .line 17
    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x2f

    .line 29
    .line 30
    rem-int/lit16 v0, v0, 0x80

    .line 31
    .line 32
    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    .line 33
    .line 34
    return v1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method private component2()J
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, -0x1ee3dda2

    .line 12
    .line 13
    .line 14
    const v3, 0x1ee3dda2

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0
.end method

.method private getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1oSDK;)J
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const v1, 0x4c218bdd    # 4.2348404E7f

    const v2, -0x4c218bdc

    invoke-static {v0, v1, v2, p1}, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    mul-int/lit16 v2, p1, -0x151

    mul-int/lit16 v3, p2, 0x153

    add-int/2addr v2, v3

    not-int v3, p1

    not-int v4, p3

    or-int/2addr v4, v3

    not-int v4, v4

    not-int v5, p2

    or-int/2addr v5, p1

    not-int v5, v5

    or-int/2addr v5, v4

    or-int v6, p1, p3

    not-int v6, v6

    or-int/2addr v5, v6

    mul-int/lit16 v5, v5, -0x152

    add-int/2addr v2, v5

    or-int/2addr v3, p2

    not-int v3, v3

    mul-int/lit16 v3, v3, 0x152

    add-int/2addr v2, v3

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    not-int p1, p1

    or-int/2addr p1, v4

    mul-int/lit16 p1, p1, 0x152

    add-int/2addr v2, p1

    if-eq v2, v0, :cond_1

    const/4 p1, 0x2

    if-eq v2, p1, :cond_0

    .line 1
    aget-object p0, p0, v1

    check-cast p0, Lcom/appsflyer/internal/AFf1eSDK;

    .line 2
    sget p1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 p2, p1, 0x75

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    iget-wide p2, p0, Lcom/appsflyer/internal/AFf1eSDK;->getRevenue:J

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    aget-object p1, p0, v1

    check-cast p1, Lcom/appsflyer/internal/AFf1eSDK;

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    .line 4
    sget p2, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x5b

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    .line 5
    iput-object p0, p1, Lcom/appsflyer/internal/AFf1eSDK;->component2:Ljava/lang/String;

    .line 6
    sget p0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_1
    aget-object p1, p0, v1

    check-cast p1, Lcom/appsflyer/internal/AFf1eSDK;

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFc1oSDK;

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {p0}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, v0, [Ljava/lang/Object;

    aput-object p1, p0, v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const p3, -0x1ee3dda2

    const v0, 0x1ee3dda2

    invoke-static {p0, p3, v0, p1}, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/appsflyer/internal/AFj1dSDK;->AFAdRevenueData(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/internal/AFj1dSDK;->getRevenue([B)J

    move-result-wide p0

    .line 12
    sget p2, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 p2, p2, 0x23

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getMonetizationNetwork(Lcom/appsflyer/internal/AFh1mSDK;[B)V
    .locals 7

    .line 29
    :try_start_0
    new-instance v0, Lcom/appsflyer/internal/AFb1sSDK;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/internal/AFb1sSDK;-><init>(Lcom/appsflyer/internal/AFh1mSDK;[B)V

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1sSDK;->afInfoLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    sget p0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    .line 31
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "native: reflection init failed"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    return-void
.end method

.method private static getRevenue(Landroid/content/Context;)Z
    .locals 3

    .line 40
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    .line 41
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectAndroidIdForceByUser"

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    .line 44
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectIMEIForceByUser"

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    invoke-static {}, Lcom/appsflyer/internal/AFa1ySDK;->getRevenue()Lcom/appsflyer/internal/AFa1ySDK;

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1ySDK;->getRevenue(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    return v2

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getRevenue(Lcom/appsflyer/internal/AFh1mSDK;Lcom/appsflyer/internal/AFc1oSDK;)Z
    .locals 7

    .line 4
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    .line 5
    iget-object v0, p1, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData:Ljava/lang/String;

    invoke-static {v0}, Lcom/appsflyer/internal/AFk1wSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 6
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 7
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "com.appsflyer.security.uuid"

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/appsflyer/internal/AFk1wSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 10
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData:Ljava/lang/String;

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_4

    .line 11
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 13
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 14
    const-string v3, "\u98b8\u254a\u040f\u8aa2\u46af\u0fb8\uf0ec\u28d1\u7f1e\u8141\u7fa5\u71d3"

    const/16 v4, 0x30

    invoke-static {v4}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    rsub-int/lit8 v4, v4, 0x3c

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFf1eSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v3, v5, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-wide/16 v5, 0x5e

    .line 16
    rem-long/2addr v3, v5

    long-to-int v0, v3

    add-int/lit8 v0, v0, 0x21

    move v3, v2

    .line 17
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 18
    aget-char v4, p1, v3

    xor-int/2addr v4, v0

    int-to-char v4, v4

    aput-char v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 20
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 21
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 22
    const-string v0, "af-sdk-sbid"

    .line 23
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1mSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 24
    :goto_2
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v1, "Exception occurred while generating sbid "

    invoke-virtual {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return v2
.end method


# virtual methods
.method public final AFAdRevenueData()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->component2:Ljava/lang/String;

    sget v2, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    throw v1

    :cond_1
    throw v1
.end method

.method public final AFAdRevenueData(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->component1:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    div-int/2addr p1, p1

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->component1:Ljava/lang/String;

    return-void
.end method

.method public final component4()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    .line 4
    .line 5
    add-int/lit8 v2, v2, 0x37

    .line 6
    .line 7
    rem-int/lit16 v3, v2, 0x80

    .line 8
    .line 9
    sput v3, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    .line 10
    .line 11
    rem-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    const v3, 0x1ee3dda2

    .line 14
    .line 15
    .line 16
    const v4, -0x1ee3dda2

    .line 17
    .line 18
    .line 19
    const-string v5, "lvl_timestamp"

    .line 20
    .line 21
    const-string v6, "ttr"

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v7

    .line 29
    iget-wide v9, p0, Lcom/appsflyer/internal/AFf1eSDK;->getRevenue:J

    .line 30
    .line 31
    div-long/2addr v7, v9

    .line 32
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork:Ljava/util/Map;

    .line 42
    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p0, v1, v0

    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v1, v4, v3, v0}, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    check-cast v0, Ljava/lang/Long;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    iget-wide v9, p0, Lcom/appsflyer/internal/AFf1eSDK;->getRevenue:J

    .line 74
    .line 75
    sub-long/2addr v7, v9

    .line 76
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork:Ljava/util/Map;

    .line 77
    .line 78
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork:Ljava/util/Map;

    .line 86
    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object p0, v1, v0

    .line 90
    .line 91
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {v1, v4, v3, v0}, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_0
.end method

.method public final getCurrencyIso4217Code()Z
    .locals 2

    .line 13
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->component3:Z

    sget v1, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final getMediationNetwork()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->component1:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final getMediationNetwork(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, ""

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;

    .line 3
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object p1, v5, v0

    sget-object p1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const v4, -0x1fbbb2aa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x7e

    invoke-static {v3, v0, v0}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    int-to-char v3, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    rsub-int/lit8 v7, v7, 0x24

    invoke-static {v6, v3, v7}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v6, Ljava/util/Map;

    aput-object v6, v2, v0

    const-class v0, Landroid/content/Context;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v6, Ljava/lang/reflect/Constructor;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v3, p1

    goto :goto_1

    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :goto_1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->i:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "AFCksmV3: reflection init failed"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    .line 6
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 7
    const-string v1, "collectIMEI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 8
    const-string v1, "imeiCached"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/appsflyer/internal/AFc1qSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->component2:Ljava/lang/String;

    invoke-static {v0}, Lcom/appsflyer/internal/AFk1wSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;

    .line 11
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 12
    invoke-static {v0}, Lcom/appsflyer/internal/AFf1eSDK;->getRevenue(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 13
    sget v4, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 v4, v4, 0x7b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    rem-int/lit8 v4, v4, 0x2

    const-string v5, "getDeviceId"

    const-string v6, "phone"

    const-string v7, "use cached IMEI: "

    if-eqz v4, :cond_1

    .line 14
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    .line 16
    :cond_1
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_6

    :cond_2
    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    move-object v0, v3

    goto :goto_6

    :goto_1
    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v3, v2

    .line 20
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WARNING: Can\'t collect IMEI: other reason: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_3
    if-eqz v3, :cond_5

    .line 21
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v3, v2

    .line 22
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WARNING: Can\'t collect IMEI because of missing permissions: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 23
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->component2:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->component2:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object v0, v2

    .line 25
    :goto_6
    invoke-static {v0}, Lcom/appsflyer/internal/AFk1wSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 26
    invoke-interface {p1, v1, v0}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget p1, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_8

    return-object v0

    :cond_8
    throw v2

    .line 28
    :cond_9
    const-string p1, "IMEI was not collected."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-object v2
.end method

.method public final getMonetizationNetwork(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->component3:Z

    const/16 p1, 0x17

    .line 3
    div-int/lit8 p1, p1, 0x0

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->component3:Z

    return-void
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 32
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFAdRevenueData:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1eSDK;->component1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getRevenue()Ljava/util/Map;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
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

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1eSDK;->component1()Z

    move-result v1

    .line 27
    const-string v2, "lvl"

    if-eqz v1, :cond_0

    sget v1, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    .line 28
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget v1, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    return-object v0

    .line 30
    :cond_0
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFAdRevenueData:Z

    if-eqz v1, :cond_1

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork:Ljava/util/Map;

    .line 32
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1eSDK;->component4()V

    .line 33
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v3, "error"

    const-string v4, "pending LVL response"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getRevenue(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFc1iSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;

    .line 2
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 3
    invoke-direct {v0, p1, v1}, Lcom/appsflyer/internal/AFc1iSDK;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    sget p1, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final getRevenue(Lcom/appsflyer/internal/AFc1oSDK;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appsflyer/internal/AFf1eSDK;->getRevenue:J

    .line 36
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFf1dSDK;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const v4, 0x4c218bdd    # 4.2348404E7f

    const v5, -0x4c218bdc

    invoke-static {v3, v4, v5, p1}, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;

    .line 37
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 38
    new-instance v5, Lcom/appsflyer/internal/AFf1eSDK$3;

    invoke-direct {v5, p0}, Lcom/appsflyer/internal/AFf1eSDK$3;-><init>(Lcom/appsflyer/internal/AFf1eSDK;)V

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/appsflyer/internal/AFf1dSDK;->getRevenue(JLandroid/content/Context;Lcom/appsflyer/internal/AFf1dSDK$AFa1tSDK;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appsflyer/internal/AFf1eSDK;->AFAdRevenueData:Z

    .line 39
    sget p1, Lcom/appsflyer/internal/AFf1eSDK;->equals:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFf1eSDK;->hashCode:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_0

    const/16 p1, 0x3d

    div-int/2addr p1, v0

    :cond_0
    return-void
.end method

.method public final getRevenue(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const v1, -0x5411bcb1

    const v2, 0x5411bcb3

    invoke-static {v0, v1, v2, p1}, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

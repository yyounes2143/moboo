.class public final Lcom/appsflyer/internal/AFd1wSDK;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/appsflyer/internal/AFd1xSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFKeystoreWrapper:I = 0x1

.field private static copy:C = '\u2875'

.field private static copydefault:I = 0x0

.field private static equals:C = '\u0313'

.field private static hashCode:C = '\u1f14'

.field private static toString:C = '\ube21'


# instance fields
.field private AFAdRevenueData:Lcom/appsflyer/internal/AFd1zSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final areAllFieldsValid:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final component2:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component3:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component4:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getMediationNetwork:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getMonetizationNetwork:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getRevenue:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 0
    .param p1    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFd1zSDK;

    .line 5
    .line 6
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$4;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$4;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue:Lkotlin/Lazy;

    .line 16
    .line 17
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$3;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$3;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork:Lkotlin/Lazy;

    .line 27
    .line 28
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$2;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$2;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$6;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$6;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code:Lkotlin/Lazy;

    .line 49
    .line 50
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$5;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$5;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component2:Lkotlin/Lazy;

    .line 60
    .line 61
    const-string p1, "6.17.5"

    .line 62
    .line 63
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component4:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$1;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$1;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component3:Lkotlin/Lazy;

    .line 75
    .line 76
    new-instance p1, Lcom/appsflyer/internal/AFd1wSDK$7;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFd1wSDK$7;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid:Lkotlin/Lazy;

    .line 86
    .line 87
    return-void
.end method

.method private static synthetic AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFd1wSDK;

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFf1kSDK;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/appsflyer/internal/AFf1kSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1hSDK;

    .line 3
    iget-object p0, p0, Lcom/appsflyer/internal/AFf1hSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1vSDK;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;

    if-eqz p0, :cond_1

    .line 5
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1aSDK;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1aSDK;

    .line 7
    throw v0

    :cond_1
    return-object v0
.end method

.method private final AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z
    .locals 11

    const/4 v0, 0x0

    .line 13
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const v5, 0x70b8fec8

    const v6, -0x70b8fec6

    invoke-static {v3, v5, v6, v4}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appsflyer/internal/AFc1qSDK;

    const-string v4, "af_send_exc_to_server_window"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/appsflyer/internal/AFc1qSDK;->getMonetizationNetwork(Ljava/lang/String;J)J

    move-result-wide v3

    .line 16
    iget-wide v7, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMonetizationNetwork:J

    .line 17
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    return v0

    :cond_0
    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    sget v5, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v5, v5, 0x7b

    rem-int/lit16 v5, v5, 0x80

    sput v5, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    cmp-long v1, v3, v1

    if-gez v1, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/internal/AFd1wSDK;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1wSDK;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue(Lcom/appsflyer/internal/AFd1wSDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 17

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->$10:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x33

    .line 6
    .line 7
    rem-int/lit16 v0, v0, 0x80

    .line 8
    .line 9
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->$11:I

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v0, p0

    .line 17
    .line 18
    :goto_0
    check-cast v0, [C

    .line 19
    .line 20
    new-instance v1, Lcom/appsflyer/internal/AFk1qSDK;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1qSDK;-><init>()V

    .line 23
    .line 24
    .line 25
    array-length v2, v0

    .line 26
    new-array v2, v2, [C

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    iput v3, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    new-array v5, v4, [C

    .line 33
    .line 34
    :goto_1
    iget v6, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 35
    .line 36
    array-length v7, v0

    .line 37
    if-ge v6, v7, :cond_2

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
    aget-char v9, v5, v7

    .line 59
    .line 60
    aget-char v10, v5, v3

    .line 61
    .line 62
    add-int v11, v10, v6

    .line 63
    .line 64
    shl-int/lit8 v12, v10, 0x4

    .line 65
    .line 66
    sget-char v13, Lcom/appsflyer/internal/AFd1wSDK;->toString:C

    .line 67
    .line 68
    int-to-long v13, v13

    .line 69
    const-wide v15, -0x10a3f40b27dab58cL    # -2.65765482159287E228

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    xor-long/2addr v13, v15

    .line 75
    long-to-int v13, v13

    .line 76
    int-to-char v13, v13

    .line 77
    add-int/2addr v12, v13

    .line 78
    xor-int/2addr v11, v12

    .line 79
    ushr-int/lit8 v12, v10, 0x5

    .line 80
    .line 81
    sget-char v13, Lcom/appsflyer/internal/AFd1wSDK;->copy:C

    .line 82
    .line 83
    int-to-long v13, v13

    .line 84
    xor-long/2addr v13, v15

    .line 85
    long-to-int v13, v13

    .line 86
    int-to-char v13, v13

    .line 87
    add-int/2addr v12, v13

    .line 88
    xor-int/2addr v11, v12

    .line 89
    sub-int/2addr v9, v11

    .line 90
    int-to-char v9, v9

    .line 91
    aput-char v9, v5, v7

    .line 92
    .line 93
    add-int v11, v9, v6

    .line 94
    .line 95
    shl-int/lit8 v12, v9, 0x4

    .line 96
    .line 97
    sget-char v13, Lcom/appsflyer/internal/AFd1wSDK;->equals:C

    .line 98
    .line 99
    int-to-long v13, v13

    .line 100
    xor-long/2addr v13, v15

    .line 101
    long-to-int v13, v13

    .line 102
    int-to-char v13, v13

    .line 103
    add-int/2addr v12, v13

    .line 104
    xor-int/2addr v11, v12

    .line 105
    ushr-int/lit8 v9, v9, 0x5

    .line 106
    .line 107
    sget-char v12, Lcom/appsflyer/internal/AFd1wSDK;->hashCode:C

    .line 108
    .line 109
    int-to-long v12, v12

    .line 110
    xor-long/2addr v12, v15

    .line 111
    long-to-int v12, v12

    .line 112
    int-to-char v12, v12

    .line 113
    add-int/2addr v9, v12

    .line 114
    xor-int/2addr v9, v11

    .line 115
    sub-int/2addr v10, v9

    .line 116
    int-to-char v9, v10

    .line 117
    aput-char v9, v5, v3

    .line 118
    .line 119
    const v9, 0x9e37

    .line 120
    .line 121
    .line 122
    sub-int/2addr v6, v9

    .line 123
    add-int/lit8 v8, v8, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_1
    iget v6, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 127
    .line 128
    aget-char v8, v5, v3

    .line 129
    .line 130
    aput-char v8, v2, v6

    .line 131
    .line 132
    add-int/lit8 v8, v6, 0x1

    .line 133
    .line 134
    aget-char v7, v5, v7

    .line 135
    .line 136
    aput-char v7, v2, v8

    .line 137
    .line 138
    add-int/2addr v6, v4

    .line 139
    iput v6, v1, Lcom/appsflyer/internal/AFk1qSDK;->getRevenue:I

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 143
    .line 144
    move/from16 v1, p1

    .line 145
    .line 146
    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 147
    .line 148
    .line 149
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->$10:I

    .line 150
    .line 151
    add-int/lit8 v1, v1, 0x61

    .line 152
    .line 153
    rem-int/lit16 v2, v1, 0x80

    .line 154
    .line 155
    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->$11:I

    .line 156
    .line 157
    rem-int/2addr v1, v4

    .line 158
    if-nez v1, :cond_3

    .line 159
    .line 160
    const/4 v1, 0x2

    .line 161
    div-int/2addr v1, v3

    .line 162
    aput-object v0, p2, v3

    .line 163
    .line 164
    return-void

    .line 165
    :cond_3
    aput-object v0, p2, v3

    .line 166
    .line 167
    return-void
.end method

.method private final areAllFieldsValid()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x35

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->component2:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x77

    .line 20
    .line 21
    rem-int/lit16 v1, v1, 0x80

    .line 22
    .line 23
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 24
    .line 25
    return-object v0
.end method

.method private final component1()Lcom/appsflyer/internal/AFf1eSDK;
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x6d

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/appsflyer/internal/AFf1eSDK;

    .line 16
    .line 17
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x75

    .line 20
    .line 21
    rem-int/lit16 v1, v1, 0x80

    .line 22
    .line 23
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 24
    .line 25
    return-object v0
.end method

.method private final component2()Lcom/appsflyer/internal/AFc1qSDK;
    .locals 4

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
    const v2, 0x70b8fec8

    .line 12
    .line 13
    .line 14
    const v3, -0x70b8fec6

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    .line 22
    .line 23
    return-object v0
.end method

.method private component3()Lcom/appsflyer/internal/AFd1uSDK;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x4b

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/appsflyer/internal/AFd1uSDK;

    .line 16
    .line 17
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x4d

    .line 20
    .line 21
    rem-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 24
    .line 25
    rem-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const/16 v1, 0xf

    .line 30
    .line 31
    div-int/lit8 v1, v1, 0x0

    .line 32
    .line 33
    :cond_0
    return-object v0
.end method

.method private final component4()Lcom/appsflyer/internal/AFh1aSDK;
    .locals 4

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
    const v2, -0x7daf7aac

    .line 12
    .line 13
    .line 14
    const v3, 0x7daf7ab0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/appsflyer/internal/AFh1aSDK;

    .line 22
    .line 23
    return-object v0
.end method

.method private final copy()V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    sget v4, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 6
    .line 7
    add-int/lit8 v4, v4, 0xf

    .line 8
    .line 9
    rem-int/lit16 v5, v4, 0x80

    .line 10
    .line 11
    sput v5, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 12
    .line 13
    rem-int/2addr v4, v1

    .line 14
    const v5, 0x7daf7ab0

    .line 15
    .line 16
    .line 17
    const v6, -0x7daf7aac

    .line 18
    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    new-array v4, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p0, v4, v3

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-static {v4, v6, v5, v7}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/appsflyer/internal/AFh1aSDK;

    .line 35
    .line 36
    const/16 v5, 0x21

    .line 37
    .line 38
    div-int/2addr v5, v3

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-array v4, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p0, v4, v3

    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-static {v4, v6, v5, v7}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/appsflyer/internal/AFh1aSDK;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    :goto_0
    invoke-direct {p0, v4}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    sget v5, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 65
    .line 66
    add-int/lit8 v5, v5, 0x79

    .line 67
    .line 68
    rem-int/lit16 v5, v5, 0x80

    .line 69
    .line 70
    sput v5, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->component1()Lcom/appsflyer/internal/AFf1eSDK;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    invoke-direct {p0, v4}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue(Lcom/appsflyer/internal/AFh1aSDK;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-interface {v6}, Lcom/appsflyer/internal/AFc1cSDK;->getRevenue()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {v4, v6}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    new-instance v6, Lorg/json/JSONObject;

    .line 99
    .line 100
    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object p0, v0, v3

    .line 110
    .line 111
    aput-object v4, v0, v2

    .line 112
    .line 113
    aput-object v5, v0, v1

    .line 114
    .line 115
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const v2, -0x6ead2fa8

    .line 120
    .line 121
    .line 122
    const v3, 0x6ead2fa9

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_1
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 130
    .line 131
    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    .line 132
    .line 133
    const/4 v8, 0x4

    .line 134
    const/4 v9, 0x0

    .line 135
    const-string v6, "skipping"

    .line 136
    .line 137
    const/4 v7, 0x0

    .line 138
    invoke-static/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_2
    sget v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 143
    .line 144
    add-int/2addr v2, v0

    .line 145
    rem-int/lit16 v0, v2, 0x80

    .line 146
    .line 147
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 148
    .line 149
    rem-int/2addr v2, v1

    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    const/16 v0, 0x12

    .line 153
    .line 154
    div-int/2addr v0, v3

    .line 155
    :cond_3
    return-void
.end method

.method private final declared-synchronized copydefault()V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 5
    .line 6
    add-int/lit8 v2, v2, 0xd

    .line 7
    .line 8
    rem-int/lit16 v2, v2, 0x80

    .line 9
    .line 10
    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 11
    .line 12
    new-array v2, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    aput-object p0, v2, v0

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const v4, -0x7daf7aac

    .line 21
    .line 22
    .line 23
    const v5, 0x7daf7ab0

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v4, v5, v3}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/appsflyer/internal/AFh1aSDK;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-wide v2, v2, Lcom/appsflyer/internal/AFh1aSDK;->getMonetizationNetwork:J

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_b

    .line 39
    .line 40
    :cond_0
    const-wide/16 v2, -0x1

    .line 41
    .line 42
    :goto_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    cmp-long v2, v2, v6

    .line 53
    .line 54
    const v3, -0x70b8fec6

    .line 55
    .line 56
    .line 57
    const v6, 0x70b8fec8

    .line 58
    .line 59
    .line 60
    if-gez v2, :cond_1

    .line 61
    .line 62
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 63
    .line 64
    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    .line 65
    .line 66
    const-string v9, "TTL is already passed"

    .line 67
    .line 68
    const/4 v11, 0x4

    .line 69
    const/4 v12, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object p0, v1, v0

    .line 77
    .line 78
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-static {v1, v6, v3, v0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    .line 87
    .line 88
    const-string v1, "af_send_exc_to_server_window"

    .line 89
    .line 90
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :cond_1
    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object p0, v2, v0

    .line 105
    .line 106
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    invoke-static {v2, v4, v5, v7}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/appsflyer/internal/AFh1aSDK;

    .line 115
    .line 116
    if-eqz v2, :cond_10

    .line 117
    .line 118
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-ne v2, v1, :cond_10

    .line 123
    .line 124
    new-array v2, v1, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object p0, v2, v0

    .line 127
    .line 128
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    invoke-static {v2, v4, v5, v7}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lcom/appsflyer/internal/AFh1aSDK;

    .line 137
    .line 138
    const/4 v7, -0x1

    .line 139
    const/4 v8, 0x2

    .line 140
    const/4 v9, 0x0

    .line 141
    if-eqz v2, :cond_7

    .line 142
    .line 143
    iget-object v2, v2, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v2, :cond_7

    .line 146
    .line 147
    new-instance v10, Lkotlin/text/Regex;

    .line 148
    .line 149
    const-string v11, "(\\d+).(\\d+).(\\d+).*"

    .line 150
    .line 151
    invoke-direct {v10, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10, v2}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-interface {v10, v1}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    if-eqz v10, :cond_2

    .line 169
    .line 170
    invoke-virtual {v10}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    if-eqz v10, :cond_2

    .line 175
    .line 176
    sget v11, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 177
    .line 178
    add-int/lit8 v11, v11, 0x6d

    .line 179
    .line 180
    rem-int/lit16 v11, v11, 0x80

    .line 181
    .line 182
    sput v11, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 183
    .line 184
    invoke-static {v10}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    if-eqz v10, :cond_2

    .line 189
    .line 190
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    goto :goto_1

    .line 195
    :cond_2
    move v10, v0

    .line 196
    :goto_1
    const v11, 0xf4240

    .line 197
    .line 198
    .line 199
    mul-int/2addr v10, v11

    .line 200
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-interface {v11, v8}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    if-eqz v11, :cond_4

    .line 209
    .line 210
    invoke-virtual {v11}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    if-eqz v11, :cond_4

    .line 215
    .line 216
    invoke-static {v11}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    if-eqz v11, :cond_4

    .line 221
    .line 222
    sget v12, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 223
    .line 224
    add-int/lit8 v12, v12, 0x7b

    .line 225
    .line 226
    rem-int/lit16 v13, v12, 0x80

    .line 227
    .line 228
    sput v13, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 229
    .line 230
    rem-int/2addr v12, v8

    .line 231
    if-eqz v12, :cond_3

    .line 232
    .line 233
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    goto :goto_2

    .line 238
    :cond_3
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    :catchall_1
    move-exception v0

    .line 240
    :try_start_3
    throw v0

    .line 241
    :cond_4
    move v11, v0

    .line 242
    :goto_2
    mul-int/lit16 v11, v11, 0x3e8

    .line 243
    .line 244
    add-int/2addr v10, v11

    .line 245
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    const/4 v11, 0x3

    .line 250
    invoke-interface {v2, v11}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    if-eqz v2, :cond_5

    .line 255
    .line 256
    invoke-virtual {v2}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    if-eqz v2, :cond_5

    .line 261
    .line 262
    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    if-eqz v2, :cond_5

    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    goto :goto_3

    .line 273
    :cond_5
    move v2, v0

    .line 274
    :goto_3
    add-int/2addr v10, v2

    .line 275
    goto :goto_4

    .line 276
    :cond_6
    move v10, v7

    .line 277
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    goto :goto_5

    .line 282
    :cond_7
    move-object v2, v9

    .line 283
    :goto_5
    new-array v10, v1, [Ljava/lang/Object;

    .line 284
    .line 285
    aput-object p0, v10, v0

    .line 286
    .line 287
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    invoke-static {v10, v4, v5, v11}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    check-cast v10, Lcom/appsflyer/internal/AFh1aSDK;

    .line 296
    .line 297
    if-eqz v10, :cond_9

    .line 298
    .line 299
    sget v11, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 300
    .line 301
    add-int/lit8 v11, v11, 0xf

    .line 302
    .line 303
    rem-int/lit16 v12, v11, 0x80

    .line 304
    .line 305
    sput v12, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 306
    .line 307
    rem-int/2addr v11, v8

    .line 308
    if-nez v11, :cond_8

    .line 309
    .line 310
    iget-object v10, v10, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    .line 312
    const/16 v11, 0x1d

    .line 313
    .line 314
    :try_start_4
    div-int/2addr v11, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 315
    if-eqz v10, :cond_9

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :catchall_2
    move-exception v0

    .line 319
    :try_start_5
    throw v0

    .line 320
    :cond_8
    iget-object v10, v10, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;

    .line 321
    .line 322
    if-eqz v10, :cond_9

    .line 323
    .line 324
    :goto_6
    invoke-static {v10}, Lcom/appsflyer/internal/AFd1rSDK;->getMonetizationNetwork(Ljava/lang/String;)Lkotlin/Pair;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    goto :goto_7

    .line 329
    :cond_9
    move-object v10, v9

    .line 330
    :goto_7
    new-array v11, v1, [Ljava/lang/Object;

    .line 331
    .line 332
    aput-object p0, v11, v0

    .line 333
    .line 334
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 335
    .line 336
    .line 337
    move-result v12

    .line 338
    invoke-static {v11, v4, v5, v12}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v11

    .line 342
    check-cast v11, Lcom/appsflyer/internal/AFh1aSDK;

    .line 343
    .line 344
    if-eqz v11, :cond_b

    .line 345
    .line 346
    iget-object v11, v11, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;

    .line 347
    .line 348
    if-eqz v11, :cond_b

    .line 349
    .line 350
    sget v12, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 351
    .line 352
    add-int/lit8 v12, v12, 0x63

    .line 353
    .line 354
    rem-int/lit16 v13, v12, 0x80

    .line 355
    .line 356
    sput v13, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 357
    .line 358
    rem-int/2addr v12, v8

    .line 359
    if-nez v12, :cond_a

    .line 360
    .line 361
    invoke-static {v11}, Lcom/appsflyer/internal/AFd1rSDK;->AFAdRevenueData(Ljava/lang/String;)Lkotlin/Pair;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    goto :goto_8

    .line 366
    :cond_a
    invoke-static {v11}, Lcom/appsflyer/internal/AFd1rSDK;->AFAdRevenueData(Ljava/lang/String;)Lkotlin/Pair;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 367
    .line 368
    .line 369
    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 370
    :catchall_3
    move-exception v0

    .line 371
    :try_start_7
    throw v0

    .line 372
    :cond_b
    :goto_8
    if-nez v2, :cond_c

    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-eq v2, v7, :cond_d

    .line 380
    .line 381
    :goto_9
    if-nez v10, :cond_d

    .line 382
    .line 383
    sget v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 384
    .line 385
    add-int/lit8 v2, v2, 0x3b

    .line 386
    .line 387
    rem-int/lit16 v2, v2, 0x80

    .line 388
    .line 389
    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 390
    .line 391
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    iget-object v3, p0, Lcom/appsflyer/internal/AFd1wSDK;->component4:Ljava/lang/String;

    .line 396
    .line 397
    filled-new-array {v3}, [Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-interface {v2, v3}, Lcom/appsflyer/internal/AFc1cSDK;->getMonetizationNetwork([Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_d
    if-eqz v10, :cond_e

    .line 406
    .line 407
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    check-cast v3, Ljava/lang/Number;

    .line 416
    .line 417
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    check-cast v6, Ljava/lang/Number;

    .line 426
    .line 427
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    invoke-interface {v2, v3, v6}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code(II)V

    .line 432
    .line 433
    .line 434
    goto :goto_a

    .line 435
    :cond_e
    if-eqz v9, :cond_f

    .line 436
    .line 437
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    check-cast v3, Ljava/lang/Number;

    .line 446
    .line 447
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    check-cast v6, Ljava/lang/Number;

    .line 456
    .line 457
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    invoke-interface {v2, v3, v6}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code(II)V

    .line 462
    .line 463
    .line 464
    goto :goto_a

    .line 465
    :cond_f
    new-array v2, v1, [Ljava/lang/Object;

    .line 466
    .line 467
    aput-object p0, v2, v0

    .line 468
    .line 469
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    invoke-static {v2, v6, v3, v7}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    check-cast v2, Lcom/appsflyer/internal/AFc1qSDK;

    .line 478
    .line 479
    const-string v3, "af_send_exc_to_server_window"

    .line 480
    .line 481
    invoke-interface {v2, v3}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code()Z

    .line 489
    .line 490
    .line 491
    goto :goto_a

    .line 492
    :cond_10
    new-array v2, v1, [Ljava/lang/Object;

    .line 493
    .line 494
    aput-object p0, v2, v0

    .line 495
    .line 496
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    invoke-static {v2, v6, v3, v7}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    check-cast v2, Lcom/appsflyer/internal/AFc1qSDK;

    .line 505
    .line 506
    const-string v3, "af_send_exc_to_server_window"

    .line 507
    .line 508
    invoke-interface {v2, v3}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code()Z

    .line 516
    .line 517
    .line 518
    :goto_a
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1wSDK;->component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;

    .line 519
    .line 520
    if-eqz v2, :cond_12

    .line 521
    .line 522
    new-array v1, v1, [Ljava/lang/Object;

    .line 523
    .line 524
    aput-object p0, v1, v0

    .line 525
    .line 526
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    invoke-static {v1, v4, v5, v3}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    check-cast v1, Lcom/appsflyer/internal/AFh1aSDK;

    .line 535
    .line 536
    if-eqz v1, :cond_11

    .line 537
    .line 538
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    :cond_11
    invoke-interface {v2, v0}, Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;->onConfigurationChanged(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 543
    .line 544
    .line 545
    monitor-exit p0

    .line 546
    return-void

    .line 547
    :cond_12
    monitor-exit p0

    .line 548
    return-void

    .line 549
    :goto_b
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 550
    throw v0
.end method

.method private final declared-synchronized equals()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 5
    .line 6
    add-int/lit8 v2, v2, 0x77

    .line 7
    .line 8
    rem-int/lit16 v2, v2, 0x80

    .line 9
    .line 10
    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 11
    .line 12
    new-array v2, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    aput-object p0, v2, v1

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const v4, -0x7daf7aac

    .line 21
    .line 22
    .line 23
    const v5, 0x7daf7ab0

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v4, v5, v3}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/appsflyer/internal/AFh1aSDK;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget v3, v2, Lcom/appsflyer/internal/AFh1aSDK;->getMediationNetwork:I

    .line 35
    .line 36
    const/4 v4, -0x1

    .line 37
    const v5, -0x70b8fec6

    .line 38
    .line 39
    .line 40
    const v6, 0x70b8fec8

    .line 41
    .line 42
    .line 43
    if-ne v3, v4, :cond_0

    .line 44
    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object p0, v0, v1

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v0, v6, v5, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    .line 58
    .line 59
    const-string v1, "af_send_exc_to_server_window"

    .line 60
    .line 61
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object p0, v0, v1

    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v0, v6, v5, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    .line 80
    .line 81
    const-string v1, "af_send_exc_to_server_window"

    .line 82
    .line 83
    const-wide/16 v3, -0x1

    .line 84
    .line 85
    invoke-interface {v0, v1, v3, v4}, Lcom/appsflyer/internal/AFc1qSDK;->getMonetizationNetwork(Ljava/lang/String;J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    cmp-long v0, v0, v3

    .line 90
    .line 91
    if-nez v0, :cond_1

    .line 92
    .line 93
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 94
    .line 95
    add-int/lit8 v0, v0, 0x15

    .line 96
    .line 97
    rem-int/lit16 v0, v0, 0x80

    .line 98
    .line 99
    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 100
    .line 101
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1aSDK;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;->onConfigurationChanged(Z)V

    .line 113
    .line 114
    .line 115
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 116
    .line 117
    add-int/lit8 v0, v0, 0x6f

    .line 118
    .line 119
    rem-int/lit16 v1, v0, 0x80

    .line 120
    .line 121
    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 122
    .line 123
    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    if-nez v0, :cond_3

    .line 126
    .line 127
    monitor-exit p0

    .line 128
    return-void

    .line 129
    :cond_3
    const/4 v0, 0x0

    .line 130
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :catchall_1
    move-exception v0

    .line 132
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :cond_4
    monitor-exit p0

    .line 134
    return-void

    .line 135
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    throw v0
.end method

.method public static final synthetic getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1wSDK;)Lcom/appsflyer/internal/AFd1zSDK;
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFd1zSDK;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFf1kSDK;
    .locals 3

    .line 2
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFf1kSDK;

    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method private static synthetic getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFd1wSDK;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/String;

    .line 17
    sget v4, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v4, v4, 0x3d

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 18
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 19
    invoke-static {v2, p0}, Lcom/appsflyer/internal/AFj1dSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 20
    const-string v2, "Authorization"

    invoke-static {v2, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 21
    invoke-direct {v1}, Lcom/appsflyer/internal/AFd1wSDK;->component3()Lcom/appsflyer/internal/AFd1uSDK;

    move-result-object v1

    const/16 v2, 0x7d0

    .line 22
    invoke-interface {v1, v4, p0, v2}, Lcom/appsflyer/internal/AFd1uSDK;->getMonetizationNetwork([BLjava/util/Map;I)V

    .line 23
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/2addr p0, v3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0x24

    div-int/2addr p0, v0

    :cond_0
    return-object v1
.end method

.method private static final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1wSDK;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, -0x7daf7aac

    const v4, 0x7daf7ab0

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFh1aSDK;

    if-eqz v1, :cond_2

    .line 4
    sget v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 6
    :goto_0
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 7
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/appsflyer/internal/AFc1cSDK;->AFAdRevenueData(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 8
    :cond_1
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    :cond_2
    return-void
.end method

.method private final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1aSDK;)V
    .locals 6

    .line 9
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    .line 10
    iget v0, p1, Lcom/appsflyer/internal/AFh1aSDK;->getCurrencyIso4217Code:I

    .line 11
    iget p1, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMediationNetwork:I

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 p1, 0x1

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, p1, v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x70b8fec8

    const v5, -0x70b8fec6

    invoke-static {p1, v4, v5, v3}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1qSDK;

    .line 14
    const-string v3, "af_send_exc_to_server_window"

    invoke-interface {p1, v3, v1, v2}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;J)V

    .line 15
    const-string v1, "af_send_exc_min"

    invoke-interface {p1, v1, v0}, Lcom/appsflyer/internal/AFc1qSDK;->getMediationNetwork(Ljava/lang/String;I)V

    .line 16
    sget p1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private final getMediationNetwork()Lcom/appsflyer/internal/AFc1oSDK;
    .locals 2

    .line 2
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1oSDK;

    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    return-object v0
.end method

.method private static synthetic getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFd1wSDK;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    check-cast p0, Ljava/lang/String;

    .line 3
    sget v3, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v3, v3, 0x31

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 4
    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/appsflyer/internal/Wwwwwwwwwwwwwww;

    invoke-direct {v4, v0, v1, p0}, Lcom/appsflyer/internal/Wwwwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFd1wSDK;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    throw v0
.end method

.method public static synthetic getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 4

    mul-int/lit16 v0, p1, 0xdd

    mul-int/lit16 v1, p2, -0xdb

    add-int/2addr v0, v1

    not-int v1, p1

    not-int v2, p2

    or-int/2addr v1, v2

    not-int v1, v1

    not-int v2, p3

    or-int v3, v2, p1

    or-int/2addr v3, p2

    not-int v3, v3

    or-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0xdc

    add-int/2addr v0, v1

    or-int v1, v2, p2

    not-int v1, v1

    or-int/2addr v1, p1

    mul-int/lit16 v1, v1, -0x1b8

    add-int/2addr v0, v1

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    mul-int/lit16 p1, p1, 0xdc

    add-int/2addr v0, p1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final getMediationNetwork(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 1

    .line 6
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    .line 7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->copy()V

    .line 8
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    return-void
.end method

.method private final getMediationNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const p2, -0x6ead2fa8

    const v1, 0x6ead2fa9

    invoke-static {v0, p2, v1, p1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private final getMediationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    sget v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v2, v2, 0x13

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v2, v2, 0x2

    const-string v3, "af_send_exc_to_server_window"

    const-wide/16 v4, -0x1

    const v6, -0x70b8fec6

    const v7, 0x70b8fec8

    if-nez v2, :cond_0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 11
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v2, v7, v6, v10}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1qSDK;

    invoke-interface {v2, v3, v4, v5}, Lcom/appsflyer/internal/AFc1qSDK;->getMonetizationNetwork(Ljava/lang/String;J)J

    move-result-wide v2

    .line 12
    iget-wide v10, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMonetizationNetwork:J

    .line 13
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    cmp-long v10, v10, v12

    const/16 v11, 0x9

    div-int/2addr v11, v1

    if-gez v10, :cond_1

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 15
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v2, v7, v6, v10}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1qSDK;

    invoke-interface {v2, v3, v4, v5}, Lcom/appsflyer/internal/AFc1qSDK;->getMonetizationNetwork(Ljava/lang/String;J)J

    move-result-wide v2

    .line 16
    iget-wide v10, p1, Lcom/appsflyer/internal/AFh1aSDK;->getMonetizationNetwork:J

    .line 17
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    :goto_0
    return v1

    :cond_1
    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    cmp-long v2, v2, v8

    if-gez v2, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v7, v6, v2}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1qSDK;

    const-string v2, "af_send_exc_min"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 19
    sget v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x1f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1cSDK;->getMediationNetwork()I

    move-result v2

    const/16 v3, 0x5f

    div-int/2addr v3, v1

    if-ge v2, v0, :cond_4

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getRevenue()Lcom/appsflyer/internal/AFc1cSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1cSDK;->getMediationNetwork()I

    move-result v2

    if-ge v2, v0, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1

    .line 22
    :cond_6
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    return v1

    :cond_7
    const/4 p1, 0x0

    throw p1
.end method

.method private static synthetic getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFd1wSDK;

    .line 10
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/Wwwwwwwwwwwww;

    invoke-direct {v2, p0}, Lcom/appsflyer/internal/Wwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/16 p0, 0x45

    .line 12
    div-int/2addr p0, v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/Wwwwwwwwwwwww;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/Wwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMonetizationNetwork(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFc1aSDK;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    const-string v0, "deviceInfo"

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const-string v0, "excs"

    invoke-static {p1}, Lcom/appsflyer/internal/AFd1qSDK;->getMediationNetwork(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    return-object p0
.end method

.method private static final getMonetizationNetwork(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->copydefault()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->copydefault()V

    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method private final getMonetizationNetwork(Lcom/appsflyer/internal/AFh1aSDK;)Z
    .locals 2

    .line 15
    new-instance v0, Lcom/appsflyer/internal/AFd1pSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1pSDK;-><init>()V

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->component4:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1aSDK;->getRevenue:Ljava/lang/String;

    .line 17
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFd1pSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4f

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return p1
.end method

.method private static synthetic getRevenue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFd1wSDK;

    .line 1
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1wSDK;->getMonetizationNetwork:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1qSDK;

    if-nez v1, :cond_0

    const/16 v1, 0x3c

    div-int/2addr v1, v0

    :cond_0
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    return-object p0
.end method

.method private final getRevenue(Lcom/appsflyer/internal/AFh1aSDK;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1aSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 8
    invoke-static {v4, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v4, v5, v4

    add-int/2addr v4, v3

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "\u709c\u686a\uaab4\u9405\u2816\u1c2b"

    invoke-static {v6, v4, v5}, Lcom/appsflyer/internal/AFd1wSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v5, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 9
    const-string v5, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 10
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v6

    .line 11
    iget-object v6, v6, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 12
    iget-object v6, v6, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 13
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 14
    const-string v7, "app_id"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 15
    new-instance v7, Lcom/appsflyer/internal/AFa1uSDK;

    invoke-direct {v7}, Lcom/appsflyer/internal/AFa1uSDK;-><init>()V

    invoke-virtual {v7}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData()Ljava/lang/String;

    move-result-object v7

    const-string v8, "p_ex"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 16
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "api"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 17
    const-string v9, "sdk"

    iget-object v10, p0, Lcom/appsflyer/internal/AFd1wSDK;->component4:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 18
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v10

    .line 19
    iget-object v10, v10, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v10}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;

    move-result-object v10

    .line 20
    const-string v11, "uid"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 21
    const-string v11, "exc_config"

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1aSDK;->AFAdRevenueData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v11, 0x8

    new-array v11, v11, [Lkotlin/Pair;

    aput-object v4, v11, v1

    aput-object v5, v11, v2

    aput-object v6, v11, v0

    const/4 v1, 0x3

    aput-object v7, v11, v1

    const/4 v1, 0x4

    aput-object v8, v11, v1

    aput-object v9, v11, v3

    const/4 v1, 0x6

    aput-object v10, v11, v1

    const/4 v1, 0x7

    aput-object p1, v11, v1

    .line 22
    invoke-static {v11}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 23
    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private static final getRevenue(Lcom/appsflyer/internal/AFd1wSDK;)V
    .locals 2

    .line 3
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->equals()V

    .line 5
    sget p0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 p0, p0, 0x80

    sput p0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->equals()V

    const/4 p0, 0x0

    .line 7
    throw p0
.end method


# virtual methods
.method public final AFAdRevenueData()V
    .locals 2

    .line 8
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/Wwwwwwwwwwwwww;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/Wwwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/16 v0, 0x52

    .line 10
    div-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/Wwwwwwwwwwwwww;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/Wwwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    :goto_0
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    return-void
.end method

.method public final getMonetizationNetwork()V
    .locals 4

    const/4 v0, 0x1

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1afa5755

    const v3, -0x1afa5755

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;)V
    .locals 2
    .param p1    # Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 4
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;

    .line 6
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwww;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1wSDK;->component1:Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;

    .line 8
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1wSDK;->areAllFieldsValid()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwww;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFd1wSDK;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public final getMonetizationNetwork(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const p2, -0x3e567caa

    const v1, 0x3e567cad

    invoke-static {v0, p2, v1, p1}, Lcom/appsflyer/internal/AFd1wSDK;->getMediationNetwork([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final getRevenue()Lcom/appsflyer/internal/AFc1cSDK;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget v0, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1wSDK;->component3:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1cSDK;

    sget v1, Lcom/appsflyer/internal/AFd1wSDK;->copydefault:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1wSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x3

    div-int/lit8 v1, v1, 0x0

    :cond_0
    return-object v0
.end method

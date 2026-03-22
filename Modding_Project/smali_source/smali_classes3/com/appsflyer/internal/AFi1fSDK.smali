.class public Lcom/appsflyer/internal/AFi1fSDK;
.super Ljava/lang/Object;


# static fields
.field private static final $$a:[B = null

.field private static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static $12:I = 0x0

.field private static $13:I = 0x1

.field private static afDebugLog:J

.field private static afErrorLog:J

.field private static afInfoLog:J

.field private static afRDLog:I

.field private static afVerboseLog:[B

.field private static afWarnLog:I

.field private static d:Ljava/lang/Object;

.field private static e:[B

.field private static force:I

.field private static i:[B

.field public static final registerClient:Ljava/util/Map;

.field private static unregisterClient:Ljava/lang/Object;

.field private static v:I

.field public static final w:Ljava/util/Map;


# direct methods
.method private static $$c(IIS)Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$12:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x23

    .line 4
    .line 5
    rem-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFi1fSDK;->$13:I

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    mul-int/lit8 p0, p0, 0x57

    .line 15
    .line 16
    sget-object v0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x6

    .line 19
    .line 20
    add-int/lit8 p2, p2, 0x3d

    .line 21
    .line 22
    new-array v2, p0, [B

    .line 23
    .line 24
    add-int/lit8 p0, p0, 0x29

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    rsub-int/lit8 v0, p0, 0x31

    .line 30
    .line 31
    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x21

    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x4

    .line 36
    .line 37
    new-array v0, v0, [B

    .line 38
    .line 39
    rsub-int/lit8 p0, p0, 0x30

    .line 40
    .line 41
    move-object v4, v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    move-object v2, v0

    .line 45
    move-object v0, v4

    .line 46
    :goto_0
    move p1, p0

    .line 47
    move-object v3, v2

    .line 48
    move v2, v1

    .line 49
    move-object v1, v0

    .line 50
    move v0, p2

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    move-object v2, v0

    .line 53
    move-object v0, v4

    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    int-to-byte v3, p1

    .line 57
    aput-byte v3, v2, v1

    .line 58
    .line 59
    if-ne v1, p0, :cond_4

    .line 60
    .line 61
    new-instance p0, Ljava/lang/String;

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-direct {p0, v2, p1}, Ljava/lang/String;-><init>([BI)V

    .line 65
    .line 66
    .line 67
    sget p1, Lcom/appsflyer/internal/AFi1fSDK;->$13:I

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x73

    .line 70
    .line 71
    rem-int/lit16 p2, p1, 0x80

    .line 72
    .line 73
    sput p2, Lcom/appsflyer/internal/AFi1fSDK;->$12:I

    .line 74
    .line 75
    rem-int/lit8 p1, p1, 0x2

    .line 76
    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_3
    const/4 p0, 0x0

    .line 81
    throw p0

    .line 82
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 83
    .line 84
    aget-byte v3, v0, p2

    .line 85
    .line 86
    move v4, p1

    .line 87
    move p1, p0

    .line 88
    move p0, v4

    .line 89
    move-object v4, v0

    .line 90
    move v0, p2

    .line 91
    move p2, v3

    .line 92
    move-object v3, v2

    .line 93
    move v2, v1

    .line 94
    move-object v1, v4

    .line 95
    :goto_2
    neg-int p2, p2

    .line 96
    add-int/2addr p0, p2

    .line 97
    move p2, p1

    .line 98
    move p1, p0

    .line 99
    move p0, p2

    .line 100
    move p2, v0

    .line 101
    move-object v0, v1

    .line 102
    move v1, v2

    .line 103
    move-object v2, v3

    .line 104
    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 72

    const/16 v0, 0xc2

    const/16 v2, 0x49

    const/16 v3, 0x165

    const-class v7, Ljava/lang/Class;

    const/16 v11, 0x110

    const/16 v16, 0x37a

    const/4 v1, 0x2

    const/16 v17, 0x0

    const/16 v18, 0xab

    const/4 v4, 0x1

    const-class v19, [B

    invoke-static {}, Lcom/appsflyer/internal/AFi1fSDK;->init$0()V

    const/16 v20, 0x1a

    .line 1
    :try_start_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x10

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v20, v5, v17

    sget-object v20, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v22, 0x1c4

    const/16 v23, 0x20f

    aget-byte v8, v20, v22

    int-to-byte v8, v8

    const/16 v24, 0x3c2

    aget-byte v9, v20, v11

    int-to-byte v9, v9

    const/16 v25, 0x1b

    aget-byte v10, v20, v21

    int-to-short v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x196

    aget-byte v10, v20, v9

    int-to-byte v10, v10

    const/16 v26, 0xcd

    move/from16 v27, v9

    aget-byte v9, v20, v26

    int-to-byte v9, v9

    const/16 v26, 0x26

    move/from16 v28, v11

    aget-byte v11, v20, v26

    int-to-short v11, v11

    invoke-static {v10, v9, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v17

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v8, v10

    not-int v10, v8

    const v11, 0x3fc6c761

    or-int/2addr v10, v11

    not-int v10, v10

    const v26, 0x290014

    or-int v10, v10, v26

    mul-int/lit8 v10, v10, 0x62

    const v26, 0x2c45cf96

    add-int v26, v26, v10

    not-int v10, v8

    const v29, 0x28ebc135

    xor-int v30, v29, v10

    and-int v10, v29, v10

    or-int v10, v30, v10

    not-int v10, v10

    or-int/2addr v10, v11

    const v11, -0x28ebc136

    xor-int v29, v11, v8

    and-int/2addr v11, v8

    or-int v11, v29, v11

    not-int v11, v11

    xor-int v29, v10, v11

    and-int/2addr v10, v11

    or-int v10, v29, v10

    mul-int/lit8 v10, v10, -0x31

    or-int v11, v26, v10

    shl-int/2addr v11, v4

    xor-int v10, v26, v10

    sub-int/2addr v11, v10

    const v10, 0x3fc6c761

    xor-int v26, v10, v8

    and-int/2addr v8, v10

    or-int v8, v26, v8

    not-int v8, v8

    const v10, 0x28c2c121

    xor-int v26, v8, v10

    and-int/2addr v8, v10

    or-int v8, v26, v8

    mul-int/lit8 v8, v8, 0x31

    neg-int v8, v8

    neg-int v8, v8

    not-int v8, v8

    sub-int/2addr v11, v8

    sub-int/2addr v11, v4

    const v8, -0x6963b83c

    not-int v10, v5

    or-int/2addr v8, v10

    not-int v10, v8

    const v26, -0x40a98d77

    xor-int v29, v26, v10

    and-int v10, v26, v10

    or-int v10, v29, v10

    const/16 v29, -0x1

    mul-int/lit16 v14, v10, 0x207

    const/16 v30, 0x6

    const/16 v31, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    const v13, 0x26649

    mul-int/2addr v10, v13

    mul-int/lit16 v13, v11, -0x12d

    add-int/2addr v10, v13

    not-int v13, v14

    const/16 v32, 0x3

    not-int v15, v12

    xor-int v33, v13, v15

    and-int/2addr v15, v13

    or-int v15, v33, v15

    xor-int v33, v15, v11

    and-int/2addr v15, v11

    or-int v15, v33, v15

    not-int v15, v15

    or-int v33, v14, v11

    or-int v6, v33, v12

    not-int v6, v6

    xor-int v33, v15, v6

    and-int/2addr v6, v15

    or-int v6, v33, v6

    mul-int/lit16 v6, v6, -0x12e

    neg-int v6, v6

    neg-int v6, v6

    not-int v6, v6

    sub-int/2addr v10, v6

    sub-int/2addr v10, v4

    xor-int v6, v13, v11

    and-int/2addr v13, v11

    or-int/2addr v6, v13

    xor-int v13, v6, v12

    and-int/2addr v6, v12

    or-int/2addr v6, v13

    not-int v6, v6

    mul-int/lit16 v6, v6, -0x25c

    neg-int v6, v6

    neg-int v6, v6

    and-int v13, v10, v6

    or-int/2addr v6, v10

    add-int/2addr v13, v6

    not-int v6, v11

    xor-int v10, v6, v14

    and-int/2addr v6, v14

    or-int/2addr v6, v10

    not-int v6, v6

    or-int v10, v11, v12

    not-int v10, v10

    xor-int v11, v6, v10

    and-int/2addr v6, v10

    or-int/2addr v6, v11

    mul-int/lit16 v6, v6, 0x12e

    xor-int v10, v13, v6

    and-int/2addr v6, v13

    shl-int/2addr v6, v4

    add-int/2addr v10, v6

    xor-int v6, v8, v26

    and-int v8, v8, v26

    or-int/2addr v6, v8

    not-int v6, v6

    const v8, -0x880545

    xor-int v11, v8, v5

    and-int/2addr v8, v5

    or-int/2addr v8, v11

    not-int v8, v8

    xor-int v11, v6, v8

    and-int/2addr v6, v8

    or-int/2addr v6, v11

    mul-int/lit16 v8, v6, -0x207

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v11, v11

    const v12, -0x14e83

    mul-int/2addr v6, v12

    mul-int/lit16 v12, v10, -0xa3

    not-int v12, v12

    sub-int/2addr v6, v12

    sub-int/2addr v6, v4

    not-int v12, v11

    xor-int v13, v12, v10

    and-int/2addr v12, v10

    or-int/2addr v12, v13

    not-int v12, v12

    xor-int v13, v8, v12

    and-int/2addr v12, v8

    or-int/2addr v12, v13

    mul-int/lit16 v12, v12, -0x148

    or-int v13, v6, v12

    shl-int/2addr v13, v4

    xor-int/2addr v6, v12

    sub-int/2addr v13, v6

    xor-int v6, v8, v11

    and-int v12, v8, v11

    or-int/2addr v6, v12

    mul-int/lit16 v6, v6, 0xa4

    add-int/2addr v13, v6

    not-int v6, v8

    not-int v12, v10

    xor-int v14, v6, v12

    and-int/2addr v6, v12

    or-int/2addr v6, v14

    not-int v6, v6

    xor-int v14, v12, v11

    and-int/2addr v12, v11

    or-int/2addr v12, v14

    not-int v12, v12

    xor-int v14, v6, v12

    and-int/2addr v6, v12

    or-int/2addr v6, v14

    not-int v11, v11

    xor-int v12, v11, v8

    and-int/2addr v8, v11

    or-int/2addr v8, v12

    xor-int v11, v8, v10

    and-int/2addr v8, v10

    or-int/2addr v8, v11

    not-int v8, v8

    xor-int v10, v6, v8

    and-int/2addr v6, v8

    or-int/2addr v6, v10

    mul-int/lit16 v6, v6, 0xa4

    not-int v6, v6

    sub-int/2addr v13, v6

    sub-int/2addr v13, v4

    xor-int v6, v26, v5

    and-int v5, v26, v5

    or-int/2addr v5, v6

    not-int v5, v5

    const v6, 0x6963b83b

    xor-int v8, v6, v5

    and-int/2addr v5, v6

    or-int/2addr v5, v8

    mul-int/lit16 v5, v5, 0x207

    add-int/2addr v13, v5

    if-nez v13, :cond_0

    goto/16 :goto_63

    :cond_0
    const-wide v5, -0x1a2db5c47cac7b16L    # -3.03578070973379E182

    sput-wide v5, Lcom/appsflyer/internal/AFi1fSDK;->afErrorLog:J

    const v5, -0x7cac7b16

    sput v5, Lcom/appsflyer/internal/AFi1fSDK;->afWarnLog:I

    sput v32, Lcom/appsflyer/internal/AFi1fSDK;->afRDLog:I

    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    sput-object v5, Lcom/appsflyer/internal/AFi1fSDK;->afVerboseLog:[B

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/appsflyer/internal/AFi1fSDK;->registerClient:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/appsflyer/internal/AFi1fSDK;->w:Ljava/util/Map;

    :try_start_1
    aget-byte v5, v20, v25

    int-to-byte v5, v5

    const/16 v6, 0x52

    aget-byte v8, v20, v6

    int-to-byte v8, v8

    const/16 v10, 0x120

    aget-byte v10, v20, v10

    int-to-short v10, v10

    invoke-static {v5, v8, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    const/16 v10, 0xf0

    if-nez v8, :cond_1

    aget-byte v8, v20, v10

    int-to-byte v8, v8

    aget-byte v11, v20, v6

    int-to-byte v11, v11

    const/16 v12, 0x456

    aget-byte v12, v20, v12

    int-to-short v12, v12

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_18

    goto :goto_0

    :cond_1
    move-object v8, v9

    :goto_0
    const/16 v11, 0x120

    const/16 v13, 0x28

    const/16 v14, 0x1ab

    .line 2
    :try_start_2
    aget-byte v11, v20, v11

    int-to-byte v11, v11

    aget-byte v15, v20, v28
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    int-to-byte v15, v15

    move/from16 v26, v6

    :try_start_3
    aget-byte v6, v20, v13

    int-to-short v6, v6

    invoke-static {v11, v15, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v11, 0x235

    aget-byte v11, v20, v11

    int-to-byte v11, v11

    aget-byte v15, v20, v26
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    int-to-byte v15, v15

    move/from16 v20, v10

    const/16 v10, 0x5c

    int-to-short v10, v10

    :try_start_4
    invoke-static {v11, v15, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v6, :cond_2

    :catch_0
    const/16 v36, 0x3b9

    goto :goto_3

    :catch_1
    :goto_1
    move/from16 v20, v10

    goto :goto_2

    :catch_2
    move/from16 v26, v6

    goto :goto_1

    :catch_3
    :goto_2
    move-object v6, v9

    :cond_2
    :try_start_5
    sget-object v10, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v11, v10, v22

    int-to-byte v11, v11

    aget-byte v15, v10, v28
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    int-to-byte v15, v15

    xor-int/lit8 v33, v15, 0x2d

    and-int/lit8 v35, v15, 0x2d

    const/16 v36, 0x3b9

    or-int v12, v33, v35

    int-to-short v12, v12

    :try_start_6
    invoke-static {v11, v15, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v12, v10, v36

    int-to-byte v12, v12

    aget-byte v10, v10, v14

    int-to-byte v10, v10

    const/16 v15, 0x82

    int-to-short v15, v15

    invoke-static {v12, v10, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v9, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :goto_3
    const/16 v10, 0x2f1

    if-eqz v6, :cond_3

    .line 3
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v15, v12, v10

    int-to-byte v15, v15

    aget-byte v12, v12, v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    int-to-byte v12, v12

    move/from16 v33, v10

    const/16 v10, 0x96

    int-to-short v10, v10

    :try_start_8
    invoke-static {v15, v12, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    :goto_4
    move-object v10, v9

    goto :goto_5

    :catch_6
    :cond_3
    move/from16 v33, v10

    goto :goto_4

    :goto_5
    if-eqz v6, :cond_4

    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v15, v12, v18

    int-to-byte v15, v15

    aget-byte v12, v12, v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    int-to-byte v12, v12

    move/from16 v35, v13

    const/16 v13, 0xa0

    int-to-short v13, v13

    :try_start_a
    invoke-static {v15, v12, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    :catch_7
    :goto_6
    move-object v11, v9

    goto :goto_7

    :catch_8
    :cond_4
    move/from16 v35, v13

    goto :goto_6

    :goto_7
    if-eqz v6, :cond_5

    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v15, v13, v33

    int-to-byte v15, v15

    aget-byte v13, v13, v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    int-to-byte v13, v13

    move/from16 v37, v14

    const/16 v14, 0xae

    int-to-short v14, v14

    :try_start_c
    invoke-static {v15, v13, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_9

    :catch_9
    :goto_8
    move-object v6, v9

    goto :goto_9

    :catch_a
    :cond_5
    move/from16 v37, v14

    goto :goto_8

    :goto_9
    const-class v12, Ljava/lang/String;

    if-eqz v10, :cond_6

    move/from16 v39, v3

    :goto_a
    const/16 v38, 0x5b

    goto :goto_b

    :cond_6
    if-nez v8, :cond_7

    move/from16 v39, v3

    move-object v10, v9

    goto :goto_a

    :cond_7
    :try_start_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v15, v14, v33

    int-to-byte v15, v15

    const/16 v38, 0x5b

    aget-byte v13, v14, v3

    int-to-byte v13, v13

    move/from16 v39, v3

    const/16 v3, 0xb8

    int-to-short v3, v3

    invoke-static {v15, v13, v3}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_18

    :try_start_e
    new-array v8, v4, [Ljava/lang/Object;

    aput-object v3, v8, v17

    aget-byte v3, v14, v38

    int-to-byte v3, v3

    int-to-byte v10, v2

    int-to-short v13, v0

    invoke-static {v3, v10, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v10, v4, [Ljava/lang/Class;

    aput-object v12, v10, v17

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_60

    :goto_b
    if-eqz v6, :cond_8

    goto :goto_c

    :cond_8
    :try_start_f
    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v6, v3, v16

    int-to-byte v6, v6

    int-to-byte v8, v2

    xor-int/lit16 v13, v8, 0x84

    and-int/lit16 v14, v8, 0x84

    or-int/2addr v13, v14

    int-to-short v13, v13

    invoke-static {v6, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_18

    :try_start_10
    new-array v13, v4, [Ljava/lang/Object;

    aput-object v6, v13, v17

    const/16 v6, 0xb0

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v14, 0xda

    int-to-short v14, v14

    invoke-static {v6, v8, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v14, v3, v33

    int-to-byte v14, v14

    aget-byte v15, v3, v37

    int-to-byte v15, v15

    const/16 v2, 0xe9

    int-to-short v2, v2

    invoke-static {v14, v15, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    new-array v14, v4, [Ljava/lang/Class;

    aput-object v12, v14, v17

    invoke-virtual {v6, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5f

    sget v6, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    or-int/lit8 v13, v6, 0x1b

    shl-int/2addr v13, v4

    xor-int/lit8 v6, v6, 0x1b

    sub-int/2addr v13, v6

    rem-int/lit16 v13, v13, 0x80

    sput v13, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    :try_start_11
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v17

    aget-byte v2, v3, v38

    int-to-byte v2, v2

    int-to-short v3, v0

    invoke-static {v2, v8, v3}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v12, v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5e

    :goto_c
    if-nez v11, :cond_a

    if-eqz v10, :cond_a

    :try_start_12
    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v3, 0x2ce

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    aget-byte v8, v2, v26

    int-to-byte v8, v8

    xor-int/lit16 v11, v8, 0xb1

    and-int/lit16 v13, v8, 0xb1

    or-int/2addr v11, v13

    int-to-short v11, v11

    invoke-static {v3, v8, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_18

    :try_start_13
    new-array v8, v1, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object v10, v8, v17

    aget-byte v3, v2, v38

    int-to-byte v3, v3

    const/16 v11, 0x49

    int-to-byte v13, v11

    int-to-short v11, v0

    invoke-static {v3, v13, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v2, v2, v38

    int-to-byte v2, v2

    invoke-static {v2, v13, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v11, v1, [Ljava/lang/Class;

    aput-object v2, v11, v17

    aput-object v12, v11, v4

    invoke-virtual {v3, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_9

    throw v1

    :cond_9
    throw v0

    :cond_a
    :goto_d
    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v3, v2, v38

    int-to-byte v3, v3

    const/16 v8, 0x49

    int-to-byte v8, v8

    int-to-short v13, v0

    invoke-static {v3, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x7

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    aput-object v9, v3, v17

    aput-object v11, v3, v4

    aput-object v10, v3, v1

    aput-object v6, v3, v32

    const/4 v14, 0x4

    aput-object v11, v3, v14

    aput-object v10, v3, v31

    aput-object v6, v3, v30

    const/4 v0, 0x7

    new-array v6, v0, [Z

    fill-array-data v6, :array_1

    const/4 v0, 0x7

    new-array v10, v0, [Z

    fill-array-data v10, :array_2

    const/4 v11, 0x7

    new-array v15, v11, [Z

    aput-boolean v17, v15, v17

    aput-boolean v17, v15, v4

    aput-boolean v4, v15, v1

    aput-boolean v4, v15, v32

    aput-boolean v17, v15, v14

    aput-boolean v4, v15, v31

    aput-boolean v4, v15, v30
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_18

    const/16 v11, 0x15

    :try_start_15
    aget-byte v0, v2, v24
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_18

    int-to-byte v0, v0

    move/from16 v40, v14

    :try_start_16
    aget-byte v14, v2, v28
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_18

    int-to-byte v14, v14

    move/from16 v41, v1

    xor-int/lit16 v1, v14, 0xbc

    and-int/lit16 v9, v14, 0xbc

    or-int/2addr v1, v9

    int-to-short v1, v1

    :try_start_17
    invoke-static {v0, v14, v1}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0x325

    aget-byte v1, v2, v1

    int-to-byte v1, v1

    const/16 v9, 0xc1

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    const/16 v9, 0x113

    int-to-short v9, v9

    invoke-static {v1, v2, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    move v1, v4

    goto :goto_e

    :cond_b
    move/from16 v1, v17

    :goto_e
    const/16 v2, 0x1d

    if-ne v0, v2, :cond_c

    goto :goto_f

    :cond_c
    const/16 v2, 0x1a

    if-lt v0, v2, :cond_d

    move v2, v4

    goto :goto_10

    :cond_d
    :goto_f
    move/from16 v2, v17

    :goto_10
    :try_start_18
    aput-boolean v2, v15, v17
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    if-lt v0, v11, :cond_e

    sget v2, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    add-int/lit8 v2, v2, 0x7b

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    move v2, v4

    goto :goto_11

    :cond_e
    move/from16 v2, v17

    :goto_11
    :try_start_19
    aput-boolean v2, v15, v4

    if-lt v0, v11, :cond_f

    move v0, v4

    goto :goto_12

    :cond_f
    move/from16 v0, v17

    :goto_12
    aput-boolean v0, v15, v40
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_19} :catch_e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18

    goto :goto_14

    :catch_b
    :goto_13
    move/from16 v1, v17

    goto :goto_14

    :catch_c
    move/from16 v41, v1

    goto :goto_13

    :catch_d
    move/from16 v41, v1

    move/from16 v40, v14

    goto :goto_13

    :catch_e
    :goto_14
    move/from16 v2, v17

    move v9, v2

    :goto_15
    if-nez v2, :cond_5b

    const/16 v0, 0x9

    if-ge v9, v0, :cond_5b

    :try_start_1a
    aget-boolean v0, v15, v9
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_18

    if-eqz v0, :cond_5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/16 v43, 0x1fa

    move/from16 v44, v11

    :try_start_1b
    aget-boolean v11, v6, v9

    aget-object v0, v3, v9

    aget-boolean v45, v10, v9
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5c

    if-eq v11, v4, :cond_10

    move/from16 v49, v2

    move-object/from16 v46, v3

    move/from16 v48, v4

    const/16 v47, -0x2

    goto :goto_16

    :cond_10
    if-eqz v0, :cond_54

    .line 4
    :try_start_1c
    sget-object v46, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5a

    const/16 v47, -0x2

    :try_start_1d
    aget-byte v14, v46, v38

    int-to-byte v14, v14

    invoke-static {v14, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    move/from16 v48, v4

    aget-byte v4, v46, v17
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_59

    int-to-byte v4, v4

    move/from16 v49, v2

    :try_start_1e
    aget-byte v2, v46, v26
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_58

    int-to-byte v2, v2

    move-object/from16 v46, v3

    const/16 v3, 0x119

    int-to-short v3, v3

    :try_start_1f
    invoke-static {v4, v2, v3}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_57

    if-eqz v2, :cond_52

    :goto_16
    if-eqz v11, :cond_25

    :try_start_20
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    .line 5
    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    or-int/lit8 v14, v4, 0x25

    shl-int/lit8 v14, v14, 0x1

    xor-int/lit8 v4, v4, 0x25

    sub-int/2addr v14, v4

    rem-int/lit16 v14, v14, 0x80

    sput v14, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 6
    :try_start_21
    sget-object v4, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v14, 0xb0

    aget-byte v14, v4, v14

    int-to-byte v14, v14

    const/16 v2, 0xda

    int-to-short v2, v2

    invoke-static {v14, v8, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v14, 0x141

    aget-byte v14, v4, v14

    int-to-byte v14, v14

    aget-byte v4, v4, v26
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    int-to-byte v4, v4

    move-object/from16 v50, v5

    const/16 v5, 0x136

    int-to-short v5, v5

    :try_start_22
    invoke-static {v14, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    const-wide/32 v51, -0x52c407dc

    xor-long v4, v4, v51

    :try_start_23
    invoke-virtual {v3, v4, v5}, Ljava/util/Random;->setSeed(J)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    :goto_17
    if-nez v2, :cond_23

    .line 7
    sget v51, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    and-int/lit8 v52, v51, 0x6f

    or-int/lit8 v51, v51, 0x6f

    move-object/from16 v53, v2

    add-int v2, v52, v51

    move-object/from16 v51, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_11

    const/16 v2, 0x4b

    :try_start_24
    div-int/lit8 v2, v2, 0x0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    if-nez v51, :cond_12

    goto :goto_19

    :catchall_1
    move-exception v0

    move/from16 v66, v1

    move-object/from16 v52, v6

    move/from16 v63, v9

    move-object/from16 v55, v10

    :goto_18
    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    goto/16 :goto_5e

    :cond_11
    if-nez v51, :cond_12

    :goto_19
    move/from16 v2, v30

    goto :goto_1a

    :cond_12
    if-nez v5, :cond_13

    move/from16 v2, v31

    goto :goto_1a

    :cond_13
    if-nez v14, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move/from16 v2, v40

    goto :goto_1a

    :cond_14
    move/from16 v2, v32

    .line 8
    :goto_1a
    :try_start_25
    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    move-object/from16 v54, v5

    move-object/from16 v52, v6

    :try_start_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    mul-int/lit16 v6, v2, 0x198

    const/16 v55, -0x32d

    xor-int v56, v55, v6

    and-int v6, v55, v6

    shl-int/lit8 v6, v6, 0x1

    add-int v56, v56, v6

    not-int v6, v2

    xor-int/lit8 v55, v6, 0x1

    and-int/lit8 v57, v6, 0x1

    move/from16 v58, v6

    or-int v6, v55, v57

    not-int v6, v6

    xor-int/lit8 v55, v5, 0x1

    and-int/lit8 v57, v5, 0x1

    move/from16 v59, v6

    or-int v6, v55, v57

    not-int v6, v6

    xor-int v55, v59, v6

    and-int v57, v59, v6

    move/from16 v59, v6

    or-int v6, v55, v57

    mul-int/lit16 v6, v6, -0x32e

    and-int v55, v56, v6

    or-int v6, v56, v6

    add-int v55, v55, v6

    not-int v6, v5

    xor-int v56, v58, v6

    and-int v6, v58, v6

    or-int v6, v56, v6

    not-int v6, v6

    xor-int v56, v47, v2

    and-int v57, v47, v2

    move/from16 v58, v5

    or-int v5, v56, v57

    move/from16 v56, v6

    not-int v6, v5

    xor-int v57, v56, v6

    and-int v6, v56, v6

    or-int v6, v57, v6

    xor-int v56, v6, v59

    and-int v6, v6, v59

    or-int v6, v56, v6

    mul-int/lit16 v6, v6, 0x197

    add-int v55, v55, v6

    not-int v5, v5

    xor-int v6, v47, v58

    and-int v56, v47, v58

    or-int v6, v6, v56

    not-int v6, v6

    or-int/2addr v5, v6

    xor-int v6, v2, v58

    and-int v56, v2, v58

    or-int v6, v6, v56

    not-int v6, v6

    xor-int v56, v5, v6

    and-int/2addr v5, v6

    or-int v5, v56, v5

    mul-int/lit16 v5, v5, 0x197

    neg-int v5, v5

    neg-int v5, v5

    not-int v5, v5

    sub-int v55, v55, v5

    add-int/lit8 v5, v55, -0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v5, v17

    :goto_1b
    if-ge v5, v2, :cond_17

    if-eqz v45, :cond_16

    const/16 v6, 0x1a

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v3}, Ljava/util/Random;->nextBoolean()Z

    move-result v55
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    if-eqz v55, :cond_15

    move-object/from16 v55, v10

    move/from16 v56, v11

    :try_start_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    mul-int/lit16 v11, v6, 0x173

    add-int/lit16 v11, v11, 0x5e33

    move/from16 v57, v2

    not-int v2, v10

    const/16 v58, -0x42

    xor-int v59, v58, v2

    and-int v60, v58, v2

    move/from16 v61, v2

    or-int v2, v59, v60

    not-int v2, v2

    move/from16 v59, v2

    not-int v2, v6

    xor-int v60, v2, v10

    and-int/2addr v2, v10

    or-int v2, v60, v2

    not-int v2, v2

    xor-int v60, v59, v2

    and-int v2, v59, v2

    or-int v2, v60, v2

    mul-int/lit16 v2, v2, -0x172

    neg-int v2, v2

    neg-int v2, v2

    xor-int v59, v11, v2

    and-int/2addr v2, v11

    shl-int/lit8 v2, v2, 0x1

    add-int v59, v59, v2

    not-int v2, v6

    xor-int v11, v2, v61

    and-int v2, v2, v61

    or-int/2addr v2, v11

    not-int v2, v2

    xor-int v11, v58, v10

    and-int v10, v58, v10

    or-int/2addr v10, v11

    not-int v10, v10

    xor-int v11, v2, v10

    and-int/2addr v2, v10

    or-int/2addr v2, v11

    xor-int/lit8 v10, v6, 0x41

    and-int/lit8 v6, v6, 0x41

    or-int/2addr v6, v10

    not-int v10, v6

    or-int/2addr v2, v10

    mul-int/lit16 v2, v2, -0x172

    neg-int v2, v2

    neg-int v2, v2

    and-int v10, v59, v2

    or-int v2, v59, v2

    add-int/2addr v10, v2

    not-int v2, v6

    mul-int/lit16 v2, v2, 0x172

    neg-int v2, v2

    neg-int v2, v2

    and-int v6, v10, v2

    or-int/2addr v2, v10

    :goto_1c
    add-int/2addr v6, v2

    goto :goto_1e

    :catchall_2
    move-exception v0

    :goto_1d
    move/from16 v66, v1

    move/from16 v63, v9

    goto/16 :goto_18

    :cond_15
    move/from16 v57, v2

    move-object/from16 v55, v10

    move/from16 v56, v11

    neg-int v2, v6

    neg-int v2, v2

    and-int/lit8 v6, v2, 0x60

    or-int/lit8 v2, v2, 0x60

    goto :goto_1c

    :goto_1e
    int-to-char v2, v6

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v60, v3

    goto :goto_20

    :catchall_3
    move-exception v0

    :goto_1f
    move-object/from16 v55, v10

    goto :goto_1d

    :cond_16
    move/from16 v57, v2

    move-object/from16 v55, v10

    move/from16 v56, v11

    const/16 v2, 0xc

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v6, v10

    mul-int/lit8 v10, v2, 0x2e

    const v11, 0x5c000

    add-int/2addr v10, v11

    not-int v11, v6

    const/16 v58, -0x2001

    xor-int v59, v58, v11

    and-int v11, v58, v11

    or-int v11, v59, v11

    not-int v11, v11

    xor-int v59, v2, v11

    and-int/2addr v11, v2

    or-int v11, v59, v11

    mul-int/lit8 v11, v11, -0x5a

    neg-int v11, v11

    neg-int v11, v11

    and-int v59, v10, v11

    or-int/2addr v10, v11

    add-int v59, v59, v10

    or-int v10, v58, v6

    not-int v10, v10

    xor-int/lit16 v11, v2, 0x2000

    move-object/from16 v60, v3

    and-int/lit16 v3, v2, 0x2000

    or-int/2addr v3, v11

    not-int v3, v3

    xor-int v11, v10, v3

    and-int/2addr v3, v10

    or-int/2addr v3, v11

    mul-int/lit8 v3, v3, -0x2d

    add-int v59, v59, v3

    not-int v3, v2

    xor-int v10, v3, v6

    and-int/2addr v3, v6

    or-int/2addr v3, v10

    not-int v3, v3

    xor-int v10, v58, v3

    and-int v3, v58, v3

    or-int/2addr v3, v10

    not-int v6, v6

    xor-int v10, v6, v2

    and-int/2addr v2, v6

    or-int/2addr v2, v10

    not-int v2, v2

    or-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2d

    neg-int v2, v2

    neg-int v2, v2

    or-int v3, v59, v2

    shl-int/lit8 v3, v3, 0x1

    xor-int v2, v59, v2

    sub-int/2addr v3, v2

    int-to-char v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_20
    and-int/lit8 v2, v5, -0x47

    or-int/lit8 v3, v5, -0x47

    add-int/2addr v2, v3

    and-int/lit8 v3, v2, 0x48

    or-int/lit8 v2, v2, 0x48

    add-int v5, v3, v2

    move-object/from16 v10, v55

    move/from16 v11, v56

    move/from16 v2, v57

    move-object/from16 v3, v60

    goto/16 :goto_1b

    :cond_17
    move-object/from16 v60, v3

    move-object/from16 v55, v10

    move/from16 v56, v11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    if-nez v51, :cond_19

    move/from16 v3, v41

    :try_start_28
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v48

    aput-object v0, v4, v17

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v3, v2, v38

    int-to-byte v3, v3

    invoke-static {v3, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v2, v2, v38

    int-to-byte v2, v2

    invoke-static {v2, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v2, v6, v17

    aput-object v12, v6, v48

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    move-object v4, v2

    :goto_21
    move-object/from16 v2, v53

    :goto_22
    move-object/from16 v5, v54

    goto/16 :goto_23

    :catchall_4
    move-exception v0

    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_18

    throw v2

    :cond_18
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    :cond_19
    if-nez v54, :cond_1b

    const/4 v3, 0x2

    :try_start_2a
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v48

    aput-object v0, v4, v17

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v3, v2, v38

    int-to-byte v3, v3

    invoke-static {v3, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v2, v2, v38

    int-to-byte v2, v2

    invoke-static {v2, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v2, v6, v17

    aput-object v12, v6, v48

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    move-object v5, v2

    move-object/from16 v4, v51

    move-object/from16 v2, v53

    goto/16 :goto_23

    :catchall_5
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1a

    throw v2

    :cond_1a
    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    :cond_1b
    if-nez v14, :cond_1e

    .line 9
    sget v3, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    xor-int/lit8 v4, v3, 0xb

    and-int/lit8 v5, v3, 0xb

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-nez v4, :cond_1d

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 10
    :try_start_2c
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v48

    aput-object v0, v3, v17

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v4, v2, v38

    int-to-byte v4, v4

    invoke-static {v4, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v2, v2, v38

    int-to-byte v2, v2

    invoke-static {v2, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v2, v6, v17

    aput-object v12, v6, v48

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_6

    move-object v14, v2

    move-object/from16 v4, v51

    goto/16 :goto_21

    :catchall_6
    move-exception v0

    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1c

    throw v2

    :cond_1c
    throw v0

    :cond_1d
    const/16 v42, 0x0

    .line 11
    throw v42
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    :cond_1e
    const/4 v5, 0x2

    .line 12
    :try_start_2e
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v48

    aput-object v0, v3, v17

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v4, v2, v38

    int-to-byte v4, v4

    invoke-static {v4, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v5, v2, v38

    int-to-byte v5, v5

    invoke-static {v5, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v10, v6, [Ljava/lang/Class;

    aput-object v5, v10, v17

    aput-object v12, v10, v48

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    move/from16 v4, v48

    :try_start_2f
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v17

    aget-byte v4, v2, v24

    int-to-byte v4, v4

    const/16 v6, 0x146

    int-to-short v6, v6

    invoke-static {v4, v8, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v10, v2, v38

    int-to-byte v10, v10

    invoke-static {v10, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    move-object/from16 v53, v2

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v10, v2, v17

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_8

    :try_start_30
    aget-byte v4, v53, v24

    int-to-byte v4, v4

    invoke-static {v4, v8, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v5, v53, v44

    neg-int v5, v5

    int-to-byte v5, v5

    aget-byte v6, v53, v26

    int-to-byte v6, v6

    const/16 v10, 0x15d

    int-to-short v11, v10

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    move-object v2, v3

    move-object/from16 v4, v51

    goto/16 :goto_22

    :goto_23
    move-object/from16 v6, v52

    move-object/from16 v10, v55

    move/from16 v11, v56

    move-object/from16 v3, v60

    const/16 v41, 0x2

    const/16 v48, 0x1

    goto/16 :goto_17

    :catchall_7
    move-exception v0

    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1f

    throw v2

    :catch_f
    move-exception v0

    goto :goto_24

    :cond_1f
    throw v0

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_20

    throw v2

    :cond_20
    throw v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_f
    .catchall {:try_start_31 .. :try_end_31} :catchall_2

    :goto_24
    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v5, v4, v44

    neg-int v5, v5

    int-to-byte v5, v5

    aget-byte v6, v4, v20

    int-to-byte v6, v6

    const/16 v10, 0x161

    int-to-short v10, v10

    invoke-static {v5, v6, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    aget-byte v3, v4, v23

    int-to-byte v3, v3

    const/16 v5, 0xf

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x124

    int-to-short v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_2

    const/4 v5, 0x2

    :try_start_33
    new-array v3, v5, [Ljava/lang/Object;

    const/16 v48, 0x1

    aput-object v0, v3, v48

    aput-object v2, v3, v17

    aget-byte v0, v4, v43

    int-to-byte v0, v0

    shl-int/lit8 v2, v8, 0x2

    int-to-short v2, v2

    invoke-static {v0, v8, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Class;

    aput-object v12, v2, v17

    const-class v4, Ljava/lang/Throwable;

    const/16 v48, 0x1

    aput-object v4, v2, v48

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_9

    :catchall_9
    move-exception v0

    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_21

    throw v2

    :cond_21
    throw v0

    :catchall_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_22

    throw v2

    :cond_22
    throw v0

    :catchall_b
    move-exception v0

    :goto_25
    move-object/from16 v52, v6

    goto/16 :goto_1f

    :cond_23
    move-object/from16 v53, v2

    move-object/from16 v51, v4

    move-object/from16 v54, v5

    move-object/from16 v3, v51

    :goto_26
    move-object/from16 v52, v6

    move-object/from16 v55, v10

    move/from16 v56, v11

    goto :goto_29

    :catchall_c
    move-exception v0

    :goto_27
    move-object/from16 v52, v6

    move-object/from16 v55, v10

    goto :goto_28

    :catchall_d
    move-exception v0

    move-object/from16 v50, v5

    goto :goto_27

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_24

    throw v2

    :cond_24
    throw v0

    :catchall_e
    move-exception v0

    move-object/from16 v50, v5

    goto :goto_25

    :cond_25
    move-object/from16 v50, v5

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    goto :goto_26

    :goto_29
    sget-object v0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x21

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    aget-byte v4, v0, v39
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_2

    int-to-byte v4, v4

    move/from16 v5, v39

    int-to-short v6, v5

    :try_start_35
    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/appsflyer/internal/AFi1fSDK;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_54

    .line 13
    sget v5, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v5, v5, 0x2f

    rem-int/lit16 v5, v5, 0x80

    sput v5, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    const/4 v11, 0x1

    .line 14
    :try_start_36
    new-array v5, v11, [Ljava/lang/Object;

    aput-object v2, v5, v17

    aget-byte v6, v0, v33

    int-to-byte v6, v6

    aget-byte v10, v0, v37

    int-to-byte v10, v10

    const/16 v11, 0x195

    int-to-short v11, v11

    invoke-static {v6, v10, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/Class;

    aput-object v12, v10, v17

    invoke-virtual {v7, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_56

    :try_start_37
    aget-byte v5, v0, v38

    int-to-byte v5, v5

    const/16 v6, 0x19f

    int-to-short v6, v6

    invoke-static {v5, v8, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x325

    aget-byte v6, v0, v6

    int-to-byte v6, v6

    aget-byte v10, v0, v37

    int-to-byte v10, v10

    const/16 v11, 0x1aa

    int-to-short v11, v11

    invoke-static {v6, v10, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_55

    :try_start_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v6, v0, v23

    int-to-byte v6, v6

    const/16 v10, 0x21

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    move-object/from16 v45, v3

    const/16 v11, 0x1b0

    xor-int/lit16 v3, v10, 0x1b0

    move/from16 v51, v3

    and-int/lit16 v3, v10, 0x1b0

    or-int v3, v51, v3

    int-to-short v3, v3

    invoke-static {v6, v10, v3}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_54

    move/from16 v5, v31

    :try_start_39
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_53

    :try_start_3a
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_52

    const/16 v3, 0x19d9

    :try_start_3b
    new-array v3, v3, [B

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_50

    :try_start_3c
    new-array v5, v11, [Ljava/lang/Object;

    aput-object v2, v5, v17

    const/16 v2, 0x11b

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v11, 0x1b0

    int-to-short v6, v11

    invoke-static {v2, v8, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v6, v0, v43

    int-to-byte v6, v6

    const/16 v10, 0x1ca

    int-to-short v10, v10

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v51, v3

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v6, v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_4f

    :try_start_3d
    new-array v3, v11, [Ljava/lang/Object;

    aput-object v2, v3, v17

    aget-byte v2, v0, v22

    sub-int/2addr v2, v11

    int-to-byte v2, v2

    const/16 v5, 0x1dc

    int-to-short v5, v5

    invoke-static {v2, v8, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v6, v0, v43

    int-to-byte v6, v6

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/Class;

    aput-object v6, v10, v17

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_4e

    :try_start_3e
    new-array v3, v11, [Ljava/lang/Object;

    aput-object v51, v3, v17

    aget-byte v6, v0, v22

    sub-int/2addr v6, v11

    int-to-byte v6, v6

    invoke-static {v6, v8, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v10, v0, v17
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_4d

    xor-int/lit8 v10, v10, -0x1

    rsub-int/lit8 v10, v10, -0x2

    int-to-byte v10, v10

    const/16 v11, 0x51

    int-to-byte v11, v11

    move-object/from16 v57, v12

    :try_start_3f
    sget v12, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    move-object/from16 v58, v14

    xor-int/lit16 v14, v12, 0x182

    and-int/lit16 v12, v12, 0x182

    or-int/2addr v12, v14

    int-to-short v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    aput-object v19, v12, v17

    invoke-virtual {v6, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_4c

    :try_start_40
    aget-byte v3, v0, v22

    xor-int/lit8 v3, v3, -0x1

    rsub-int/lit8 v14, v3, -0x2

    int-to-byte v3, v14

    invoke-static {v3, v8, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v5, v0, v44

    neg-int v5, v5

    int-to-byte v5, v5

    aget-byte v0, v0, v26

    int-to-byte v0, v0

    const/16 v10, 0x15d

    int-to-short v6, v10

    invoke-static {v5, v0, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_4b

    const/16 v0, 0x11

    const/16 v2, 0x19b2

    move v3, v2

    move v2, v0

    move v0, v3

    move-object v10, v15

    move-object/from16 v6, v50

    move-object/from16 v3, v51

    const/4 v5, 0x0

    :goto_2a
    const/4 v11, 0x1

    int-to-long v14, v11

    .line 15
    :try_start_41
    array-length v11, v3
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_4a

    move/from16 v12, v17

    :goto_2b
    if-ge v12, v11, :cond_26

    move-object/from16 v51, v6

    :try_start_42
    aget-byte v6, v3, v12
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_f

    move-object/from16 v59, v10

    move/from16 v60, v11

    int-to-long v10, v6

    shl-long v61, v14, v30

    add-long v10, v10, v61

    shl-long v61, v14, v21

    add-long v10, v10, v61

    sub-long v14, v10, v14

    const/16 v48, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v51

    move-object/from16 v10, v59

    move/from16 v11, v60

    goto :goto_2b

    :catchall_f
    move-exception v0

    move-object/from16 v59, v10

    const/16 v48, 0x1

    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v31, 0x5

    :goto_2c
    const/16 v39, 0x165

    move-object v1, v0

    move-object v9, v4

    goto/16 :goto_55

    :cond_26
    move-object/from16 v51, v6

    move-object/from16 v59, v10

    const/16 v48, 0x1

    xor-int/lit16 v6, v2, 0x189

    and-int/lit16 v10, v2, 0x189

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v6, v10

    or-int/lit16 v10, v2, 0xd97

    shl-int/lit8 v10, v10, 0x1

    xor-int/lit16 v11, v2, 0xd97

    sub-int/2addr v10, v11

    .line 16
    :try_start_43
    aget-byte v10, v3, v10

    add-int/lit8 v10, v10, 0x54

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    array-length v6, v3
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_49

    neg-int v10, v2

    and-int v11, v6, v10

    or-int/2addr v6, v10

    add-int/2addr v11, v6

    move/from16 v6, v32

    :try_start_44
    new-array v10, v6, [Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_48

    :try_start_45
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v41, 0x2

    aput-object v6, v10, v41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v48, 0x1

    aput-object v6, v10, v48

    aput-object v3, v10, v17

    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v6, 0xc9

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    sget v11, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    xor-int/lit16 v12, v11, 0x18a

    move/from16 v60, v2

    and-int/lit16 v2, v11, 0x18a

    or-int/2addr v2, v12

    int-to-short v2, v2

    invoke-static {v6, v8, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_46

    move-object/from16 v61, v3

    const/4 v12, 0x3

    :try_start_46
    new-array v3, v12, [Ljava/lang/Class;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_47

    :try_start_47
    aput-object v19, v3, v17

    const/16 v48, 0x1

    aput-object v6, v3, v48

    const/16 v41, 0x2

    aput-object v6, v3, v41

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_46

    :try_start_48
    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_45

    if-nez v3, :cond_28

    .line 17
    sget v3, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    xor-int/lit8 v10, v3, 0x79

    and-int/lit8 v3, v3, 0x79

    const/16 v48, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v10, v3

    rem-int/lit16 v10, v10, 0x80

    sput v10, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 18
    :try_start_49
    sput-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afInfoLog:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v10, v14

    mul-int/lit16 v12, v3, 0xc1

    const v14, -0x45e666d8

    add-int/2addr v12, v14

    not-int v14, v10

    not-int v15, v3

    const v62, -0x67d2c4d8

    xor-int v63, v15, v62

    and-int v64, v15, v62

    move-object/from16 v65, v2

    or-int v2, v63, v64

    not-int v2, v2

    xor-int v63, v14, v2

    and-int/2addr v2, v14

    or-int v2, v63, v2

    mul-int/lit16 v2, v2, -0xc0

    and-int v63, v12, v2

    or-int/2addr v2, v12

    add-int v63, v63, v2

    const v2, 0x67d2c4d7

    xor-int v12, v15, v2

    and-int/2addr v2, v15

    or-int/2addr v2, v12

    not-int v2, v2

    not-int v12, v10

    const v64, 0x67d2c4d7

    or-int v12, v64, v12

    not-int v12, v12

    xor-int v66, v2, v12

    and-int/2addr v2, v12

    or-int v2, v66, v2

    mul-int/lit16 v2, v2, -0x180

    xor-int v12, v63, v2

    and-int v2, v63, v2

    const/16 v48, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v12, v2

    or-int v2, v15, v64

    xor-int v15, v2, v10

    and-int/2addr v2, v10

    or-int/2addr v2, v15

    not-int v2, v2

    const v15, 0x67d2c4d7

    xor-int v63, v15, v14

    and-int/2addr v14, v15

    or-int v14, v63, v14

    xor-int v15, v14, v3

    and-int/2addr v14, v3

    or-int/2addr v14, v15

    not-int v14, v14

    xor-int v15, v2, v14

    and-int/2addr v2, v14

    or-int/2addr v2, v15

    or-int v3, v3, v62

    xor-int v14, v3, v10

    and-int/2addr v3, v10

    or-int/2addr v3, v14

    not-int v3, v3

    xor-int v10, v2, v3

    and-int/2addr v2, v3

    or-int/2addr v2, v10

    mul-int/lit16 v2, v2, 0xc0

    add-int/2addr v12, v2

    sget-wide v2, Lcom/appsflyer/internal/AFi1fSDK;->afInfoLog:J

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v14

    const/16 v10, 0x30

    shr-long/2addr v14, v10

    const-wide v62, 0x1a49a0b07cedf175L    # 4.825053628218327E-182

    add-long v14, v14, v62

    xor-long/2addr v2, v14

    long-to-int v2, v2

    sget-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afInfoLog:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v62

    const/16 v3, 0x30

    shr-long v62, v62, v3

    const-wide v66, 0x1a49a0b07cedf172L    # 4.825053628218325E-182

    sub-long v66, v66, v62

    xor-long v14, v14, v66

    long-to-int v3, v14

    new-array v3, v3, [I

    sget-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afInfoLog:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v62

    const/16 v10, 0x20

    shr-long v62, v62, v10

    const-wide v66, 0x1a49a0b07cedf170L    # 4.825053628218324E-182

    add-long v62, v62, v66

    xor-long v14, v14, v62

    long-to-int v10, v14

    sget-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afErrorLog:J

    const-string v62, ""

    move/from16 v63, v2

    invoke-static/range {v62 .. v62}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    neg-int v2, v2

    neg-int v2, v2

    not-int v2, v2

    rsub-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    ushr-long/2addr v14, v2

    long-to-int v2, v14

    xor-int/2addr v2, v12

    aput v2, v3, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    const-wide/16 v66, 0x0

    cmp-long v2, v14, v66

    sget-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afErrorLog:J

    long-to-int v10, v14

    not-int v14, v12

    and-int/2addr v14, v10

    not-int v10, v10

    and-int/2addr v10, v12

    or-int/2addr v10, v14

    aput v10, v3, v2

    sget v2, Lcom/appsflyer/internal/AFi1fSDK;->afWarnLog:I

    sget-object v10, Lcom/appsflyer/internal/AFi1fSDK;->afVerboseLog:[B

    sget v12, Lcom/appsflyer/internal/AFi1fSDK;->afRDLog:I
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_16

    move/from16 v14, v30

    :try_start_4a
    new-array v15, v14, [Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_14

    :try_start_4b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_12

    const/16 v31, 0x5

    :try_start_4c
    aput-object v12, v15, v31
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_13

    :try_start_4d
    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v15, v40

    const/16 v32, 0x3

    aput-object v10, v15, v32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v41, 0x2

    aput-object v2, v15, v41

    const/16 v48, 0x1

    aput-object v3, v15, v48

    aput-object v65, v15, v17

    const/16 v2, 0x25b

    aget-byte v2, v61, v2

    int-to-byte v2, v2

    aget-byte v3, v61, v26

    int-to-byte v3, v3

    const/16 v10, 0x215

    int-to-short v10, v10

    invoke-static {v2, v3, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v61, v43

    int-to-byte v3, v3

    const/16 v10, 0x1ca

    int-to-short v10, v10

    invoke-static {v3, v8, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_12

    const/4 v10, 0x6

    :try_start_4e
    new-array v12, v10, [Ljava/lang/Class;

    aput-object v3, v12, v17

    const-class v3, [I

    const/16 v48, 0x1

    aput-object v3, v12, v48

    const/16 v41, 0x2

    aput-object v6, v12, v41

    const-class v3, [B

    const/16 v32, 0x3

    aput-object v3, v12, v32

    const/4 v3, 0x4

    aput-object v6, v12, v3
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_11

    const/16 v31, 0x5

    :try_start_4f
    aput-object v6, v12, v31

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_10

    goto/16 :goto_30

    :catchall_10
    move-exception v0

    goto :goto_2e

    :catchall_11
    move-exception v0

    goto :goto_2d

    :catchall_12
    move-exception v0

    const/4 v10, 0x6

    :goto_2d
    const/16 v31, 0x5

    goto :goto_2e

    :catchall_13
    move-exception v0

    const/4 v10, 0x6

    goto :goto_2e

    :catchall_14
    move-exception v0

    move v10, v14

    goto :goto_2d

    :goto_2e
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_27

    throw v2

    :catchall_15
    move-exception v0

    :goto_2f
    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    const/4 v12, 0x3

    goto/16 :goto_2c

    :cond_27
    throw v0
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_15

    :catchall_16
    move-exception v0

    move/from16 v10, v30

    const/16 v31, 0x5

    goto :goto_2f

    :cond_28
    move-object/from16 v65, v2

    move/from16 v10, v30

    const/16 v31, 0x5

    :try_start_51
    sput-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afDebugLog:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v12, v14

    mul-int/lit16 v14, v2, -0x177

    const v15, -0x2441387

    xor-int v30, v14, v15

    and-int/2addr v14, v15

    const/16 v48, 0x1

    shl-int/lit8 v14, v14, 0x1

    add-int v30, v30, v14

    not-int v14, v2

    const v15, -0x33e38272    # -4.1023032E7f

    xor-int v62, v14, v15

    and-int/2addr v14, v15

    or-int v14, v62, v14

    not-int v14, v14

    xor-int v15, v12, v14

    and-int/2addr v14, v12

    or-int/2addr v14, v15

    const v15, 0x33e38271

    xor-int v62, v2, v15

    and-int v63, v2, v15

    or-int v10, v62, v63

    not-int v10, v10

    xor-int v62, v14, v10

    and-int/2addr v14, v10

    or-int v14, v62, v14

    mul-int/lit16 v14, v14, 0x178

    or-int v62, v30, v14

    const/16 v48, 0x1

    shl-int/lit8 v62, v62, 0x1

    xor-int v14, v30, v14

    sub-int v62, v62, v14

    not-int v14, v12

    xor-int v30, v14, v2

    and-int/2addr v14, v2

    or-int v14, v30, v14

    not-int v14, v14

    xor-int v30, v14, v10

    and-int/2addr v10, v14

    or-int v10, v30, v10

    mul-int/lit16 v10, v10, -0x178

    xor-int v14, v62, v10

    and-int v10, v62, v10

    const/16 v48, 0x1

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v14, v10

    not-int v2, v2

    or-int/2addr v2, v12

    not-int v2, v2

    or-int/2addr v2, v15

    mul-int/lit16 v2, v2, 0x178

    neg-int v2, v2

    neg-int v2, v2

    and-int v10, v14, v2

    or-int/2addr v2, v14

    add-int/2addr v10, v2

    sget-wide v14, Lcom/appsflyer/internal/AFi1fSDK;->afDebugLog:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v62

    const/16 v2, 0x30

    shr-long v62, v62, v2

    const-wide v66, -0xeba398a42212562L    # -4.4310783455820986E237

    sub-long v66, v66, v62

    xor-long v14, v14, v66

    long-to-int v2, v14

    const-string v12, ""

    const/16 v14, 0x30

    invoke-static {v12, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v12
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_3f

    const/16 v32, 0x3

    rsub-int/lit8 v15, v12, 0x3

    move/from16 v12, v40

    :try_start_52
    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    aput-object v15, v14, v32
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_44

    :try_start_53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v41, 0x2

    aput-object v2, v14, v41

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v48, 0x1

    aput-object v2, v14, v48

    aput-object v65, v14, v17

    aget-byte v2, v61, v25

    int-to-byte v2, v2

    aget-byte v10, v61, v26

    int-to-byte v10, v10

    const/16 v15, 0x233

    int-to-short v15, v15

    invoke-static {v2, v10, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    check-cast v10, Ljava/lang/ClassLoader;

    const/4 v15, 0x1

    invoke-static {v2, v15, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v10, v61, v18

    int-to-byte v10, v10

    const/16 v15, 0x141

    aget-byte v15, v61, v15

    int-to-byte v15, v15

    const/16 v12, 0x253

    int-to-short v12, v12

    invoke-static {v10, v15, v12}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    aget-byte v12, v61, v43

    int-to-byte v12, v12

    const/16 v15, 0x1ca

    int-to-short v15, v15

    invoke-static {v12, v8, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    aput-object v12, v15, v17

    const/16 v48, 0x1

    aput-object v6, v15, v48

    const/16 v41, 0x2

    aput-object v6, v15, v41
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_41

    :try_start_54
    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_43

    const/16 v32, 0x3

    :try_start_55
    aput-object v12, v15, v32
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_42

    :try_start_56
    invoke-virtual {v2, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_41

    :goto_30
    :try_start_57
    aget-byte v3, v61, v43

    int-to-byte v3, v3

    const/16 v10, 0x1ca

    int-to-short v10, v10

    invoke-static {v3, v8, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v12, v61, v27

    int-to-byte v12, v12

    const/16 v14, 0x467

    aget-byte v14, v61, v14

    move-object v15, v5

    move-object/from16 v30, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v5, v5

    mul-int/lit16 v6, v14, -0x1cf

    const/16 v62, -0x1d1

    or-int v63, v62, v6

    const/16 v48, 0x1

    shl-int/lit8 v63, v63, 0x1

    xor-int v6, v62, v6

    sub-int v63, v63, v6

    not-int v6, v14

    not-int v14, v5

    xor-int v62, v6, v14

    and-int v65, v6, v14

    move/from16 v66, v5

    or-int v5, v62, v65

    not-int v5, v5

    xor-int/lit8 v62, v14, -0x1

    or-int v14, v62, v14

    not-int v14, v14

    xor-int v62, v5, v14

    and-int/2addr v5, v14

    or-int v5, v62, v5

    mul-int/lit16 v5, v5, 0x1d0

    add-int v63, v63, v5

    xor-int v5, v66, v6

    and-int v14, v66, v6

    or-int/2addr v5, v14

    mul-int/lit16 v5, v5, -0x1d0

    neg-int v5, v5

    neg-int v5, v5

    and-int v14, v63, v5

    or-int v5, v63, v5

    add-int/2addr v14, v5

    xor-int/lit8 v5, v6, -0x1

    or-int/2addr v5, v6

    not-int v5, v5

    mul-int/lit16 v5, v5, 0x1d0

    and-int v6, v14, v5

    or-int/2addr v5, v14

    add-int/2addr v6, v5

    int-to-byte v5, v6

    const/16 v6, 0x261

    int-to-short v6, v6

    invoke-static {v12, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_3f

    const/4 v6, 0x1

    :try_start_58
    new-array v12, v6, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v17
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_40

    :try_start_59
    invoke-virtual {v3, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_3f

    :try_start_5a
    new-array v12, v6, [Ljava/lang/Object;

    aput-object v5, v12, v17
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_40

    :try_start_5b
    invoke-virtual {v3, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_3f

    if-eqz v56, :cond_38

    :try_start_5c
    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_25

    if-nez v3, :cond_29

    move-object/from16 v5, v45

    goto :goto_31

    :cond_29
    move-object/from16 v5, v54

    :goto_31
    if-nez v3, :cond_2b

    .line 19
    sget v3, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    xor-int/lit8 v6, v3, 0x2d

    and-int/lit8 v3, v3, 0x2d

    const/16 v48, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v6, v3

    rem-int/lit16 v3, v6, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    const/16 v41, 0x2

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2a

    const/16 v3, 0x3d

    :try_start_5d
    div-int/lit8 v3, v3, 0x0
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_15

    :cond_2a
    move-object/from16 v3, v58

    goto :goto_32

    :cond_2b
    move-object/from16 v3, v53

    .line 20
    :goto_32
    :try_start_5e
    aget-byte v6, v61, v43

    int-to-byte v6, v6

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v12, v61, v27

    int-to-byte v12, v12

    const/16 v14, 0x51

    int-to-byte v14, v14

    move-object/from16 v62, v15

    const/16 v15, 0x264

    int-to-short v15, v15

    invoke-static {v12, v14, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    aput-object v19, v15, v17

    const/16 v48, 0x1

    aput-object v30, v15, v48

    const/16 v41, 0x2

    aput-object v30, v15, v41

    invoke-virtual {v6, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    aget-byte v12, v61, v24

    int-to-byte v12, v12

    const/16 v14, 0x146

    int-to-short v14, v14

    invoke-static {v12, v8, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_25

    :try_start_5f
    aget-byte v14, v61, v38

    int-to-byte v14, v14

    invoke-static {v14, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v48, v14

    const/4 v15, 0x1

    new-array v14, v15, [Ljava/lang/Class;

    aput-object v48, v14, v17

    invoke-virtual {v12, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_12
    .catchall {:try_start_5f .. :try_end_5f} :catchall_21

    move/from16 v63, v9

    :try_start_60
    new-array v9, v15, [Ljava/lang/Object;

    aput-object v5, v9, v17

    invoke-virtual {v14, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_11
    .catchall {:try_start_60 .. :try_end_60} :catchall_20

    if-eq v1, v15, :cond_2c

    move/from16 v66, v1

    move-object/from16 v65, v4

    goto :goto_33

    :cond_2c
    :try_start_61
    aget-byte v14, v61, v38

    int-to-byte v14, v14

    invoke-static {v14, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aget-byte v15, v61, v33

    int-to-byte v15, v15

    const/16 v65, 0x467

    aget-byte v65, v61, v65
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1f

    xor-int/lit8 v65, v65, -0x1

    move/from16 v66, v1

    rsub-int/lit8 v1, v65, -0x2

    int-to-byte v1, v1

    move-object/from16 v65, v4

    const/16 v4, 0x267

    int-to-short v4, v4

    :try_start_62
    invoke-static {v15, v1, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v14, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_1e

    .line 21
    :goto_33
    sget v1, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    and-int/lit8 v4, v1, 0x79

    or-int/lit8 v1, v1, 0x79

    add-int/2addr v4, v1

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    const/16 v1, 0x400

    .line 22
    :try_start_63
    new-array v4, v1, [B

    aget-byte v14, v61, v44

    neg-int v14, v14

    int-to-byte v14, v14

    const/16 v15, 0x56

    int-to-byte v15, v15

    or-int/lit16 v11, v11, 0x205

    int-to-short v11, v11

    invoke-static {v14, v15, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    aput-object v19, v15, v17

    const/16 v48, 0x1

    aput-object v30, v15, v48

    const/16 v41, 0x2

    aput-object v30, v15, v41

    invoke-virtual {v12, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    :goto_34
    if-lez v0, :cond_2d

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v68, v4

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v68, v4, v17

    const/16 v48, 0x1

    aput-object v14, v4, v48

    const/16 v41, 0x2

    aput-object v15, v4, v41

    invoke-virtual {v6, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v14, v29

    if-eq v4, v14, :cond_2d

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v30, v1

    const/4 v15, 0x3

    new-array v1, v15, [Ljava/lang/Object;

    aput-object v68, v1, v17

    const/16 v48, 0x1

    aput-object v14, v1, v48

    const/16 v41, 0x2

    aput-object v30, v1, v41

    invoke-virtual {v11, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    neg-int v1, v4

    not-int v1, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v4, v68

    const/16 v1, 0x400

    const/16 v29, -0x1

    goto :goto_34

    :catchall_17
    move-exception v0

    goto/16 :goto_3a

    :cond_2d
    sget-object v0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v1, v0, v44

    neg-int v1, v1

    int-to-byte v1, v1

    aget-byte v2, v0, v37

    int-to-byte v2, v2

    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    xor-int/lit16 v6, v4, 0x209

    and-int/lit16 v4, v4, 0x209

    or-int/2addr v4, v6

    int-to-short v4, v4

    invoke-static {v1, v2, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aget-byte v2, v0, v22

    int-to-byte v2, v2

    or-int/lit16 v4, v8, 0x234

    int-to-short v4, v4

    invoke-static {v2, v8, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v0, v27

    int-to-byte v4, v4

    const/16 v6, 0x467

    aget-byte v6, v0, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v11, v14

    mul-int/lit16 v14, v6, -0x1bd

    neg-int v14, v14

    neg-int v14, v14

    const/16 v15, 0x1bd

    or-int v30, v15, v14

    const/16 v48, 0x1

    shl-int/lit8 v30, v30, 0x1

    xor-int/2addr v14, v15

    sub-int v30, v30, v14

    not-int v14, v6

    not-int v15, v14

    move/from16 v61, v15

    not-int v15, v11

    xor-int v67, v14, v15

    and-int/2addr v15, v14

    or-int v15, v67, v15

    not-int v15, v15

    or-int v15, v61, v15

    mul-int/lit16 v15, v15, 0x1be

    neg-int v15, v15

    neg-int v15, v15

    and-int v61, v30, v15

    or-int v15, v30, v15

    add-int v61, v61, v15

    not-int v6, v6

    const/16 v29, -0x1

    xor-int v15, v29, v11

    or-int/2addr v11, v15

    not-int v11, v11

    xor-int v15, v6, v11

    and-int/2addr v6, v11

    or-int/2addr v6, v15

    mul-int/lit16 v6, v6, 0x1be

    or-int v11, v61, v6

    const/16 v48, 0x1

    shl-int/lit8 v11, v11, 0x1

    xor-int v6, v61, v6

    sub-int/2addr v11, v6

    not-int v6, v14

    mul-int/lit16 v6, v6, 0x1be

    and-int v14, v11, v6

    or-int/2addr v6, v11

    add-int/2addr v14, v6

    int-to-byte v6, v14

    const/16 v11, 0x292

    int-to-short v11, v11

    invoke-static {v4, v6, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aget-byte v1, v0, v44

    neg-int v1, v1

    int-to-byte v1, v1

    aget-byte v2, v0, v26

    int-to-byte v2, v2

    const/16 v4, 0x15d

    int-to-short v6, v4

    invoke-static {v1, v2, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aget-byte v1, v0, v36

    int-to-byte v1, v1

    aget-byte v2, v0, v35

    int-to-byte v2, v2

    const/16 v4, 0x295

    int-to-short v4, v4

    invoke-static {v1, v2, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0x325

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v4, 0x46c

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v6, 0x2a9

    int-to-short v6, v6

    invoke-static {v2, v4, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x3

    new-array v4, v14, [Ljava/lang/Class;

    aput-object v57, v4, v17

    const/16 v48, 0x1

    aput-object v57, v4, v48

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v41, 0x2

    aput-object v6, v4, v41

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_17

    :try_start_64
    aget-byte v2, v0, v38

    int-to-byte v2, v2

    invoke-static {v2, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v0, v18

    int-to-byte v4, v4

    aget-byte v6, v0, v37

    int-to-byte v6, v6

    const/16 v9, 0x2af

    int-to-short v9, v9

    invoke-static {v4, v6, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1d

    :try_start_65
    aget-byte v4, v0, v38

    int-to-byte v4, v4

    invoke-static {v4, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v6, v0, v18

    int-to-byte v6, v6

    aget-byte v11, v0, v37

    int-to-byte v11, v11

    invoke-static {v6, v11, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_1c

    :try_start_66
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x3

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v2, v9, v17

    const/16 v48, 0x1

    aput-object v4, v9, v48

    const/16 v41, 0x2

    aput-object v6, v9, v41

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_17

    :try_start_67
    aget-byte v2, v0, v38

    int-to-byte v2, v2

    invoke-static {v2, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x89

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    aget-byte v6, v0, v35

    int-to-byte v6, v6

    const/16 v9, 0x2bd

    int-to-short v9, v9

    invoke-static {v4, v6, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_1b

    .line 23
    sget v2, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    and-int/lit8 v4, v2, 0x45

    or-int/lit8 v2, v2, 0x45

    add-int/2addr v4, v2

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 24
    :try_start_68
    aget-byte v2, v0, v38

    int-to-byte v2, v2

    invoke-static {v2, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x89

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    aget-byte v5, v0, v35

    int-to-byte v5, v5

    invoke-static {v4, v5, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_1a

    .line 25
    sget v2, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v2, v2, 0x13

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 26
    :try_start_69
    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    if-nez v2, :cond_2f

    const-class v2, Lcom/appsflyer/internal/AFi1fSDK;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_18

    :try_start_6a
    aget-byte v3, v0, v16

    int-to-byte v3, v3

    aget-byte v0, v0, v37

    int-to-byte v0, v0

    const/16 v4, 0x2c2

    int-to-short v4, v4

    invoke-static {v3, v0, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v7, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_19

    :try_start_6b
    sput-object v0, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    goto :goto_37

    :catchall_18
    move-exception v0

    :goto_35
    move-object v1, v0

    move/from16 v30, v13

    move/from16 v10, v27

    move-object/from16 v9, v65

    const/4 v12, 0x3

    :goto_36
    const/16 v39, 0x165

    goto/16 :goto_55

    :catchall_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2e

    throw v1

    :cond_2e
    throw v0

    :cond_2f
    :goto_37
    move/from16 v61, v10

    move/from16 v30, v13

    const/4 v12, 0x3

    goto/16 :goto_40

    :catchall_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_30

    throw v1

    :cond_30
    throw v0

    :catchall_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_31

    throw v1

    :cond_31
    throw v0
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_18

    :catchall_1c
    move-exception v0

    :try_start_6c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_32

    throw v1

    :cond_32
    throw v0

    :catchall_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_33

    throw v1

    :cond_33
    throw v0
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_17

    :catchall_1e
    move-exception v0

    goto :goto_38

    :catchall_1f
    move-exception v0

    move/from16 v66, v1

    move-object/from16 v65, v4

    :goto_38
    :try_start_6d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_34

    throw v1

    :catch_10
    move-exception v0

    goto :goto_39

    :cond_34
    throw v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_10
    .catchall {:try_start_6d .. :try_end_6d} :catchall_17

    :catchall_20
    move-exception v0

    move/from16 v66, v1

    move-object/from16 v65, v4

    goto/16 :goto_3a

    :catch_11
    move-exception v0

    move/from16 v66, v1

    move-object/from16 v65, v4

    goto :goto_39

    :catchall_21
    move-exception v0

    move/from16 v66, v1

    move-object/from16 v65, v4

    move/from16 v63, v9

    goto :goto_3a

    :catch_12
    move-exception v0

    move/from16 v66, v1

    move-object/from16 v65, v4

    move/from16 v63, v9

    :goto_39
    :try_start_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v4, v2, v44

    neg-int v4, v4

    int-to-byte v4, v4

    aget-byte v6, v2, v20

    int-to-byte v6, v6

    sget v9, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    or-int/lit16 v9, v9, 0x201

    int-to-short v9, v9

    invoke-static {v4, v6, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    aget-byte v4, v2, v23

    int-to-byte v4, v4

    const/16 v6, 0xf

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v9, 0x124

    int-to-short v9, v9

    invoke-static {v4, v6, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_17

    const/4 v6, 0x2

    :try_start_6f
    new-array v4, v6, [Ljava/lang/Object;

    const/16 v48, 0x1

    aput-object v0, v4, v48

    aput-object v1, v4, v17

    aget-byte v0, v2, v43

    int-to-byte v0, v0

    shl-int/lit8 v1, v8, 0x2

    int-to-short v1, v1

    invoke-static {v0, v8, v1}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Class;

    aput-object v57, v1, v17

    const-class v2, Ljava/lang/Throwable;

    const/16 v48, 0x1

    aput-object v2, v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_22

    :catchall_22
    move-exception v0

    :try_start_70
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_35

    throw v1

    :cond_35
    throw v0
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_17

    :goto_3a
    :try_start_71
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v2, v1, v38

    int-to-byte v2, v2

    invoke-static {v2, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x89

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    aget-byte v6, v1, v35

    int-to-byte v6, v6

    const/16 v9, 0x2bd

    int-to-short v9, v9

    invoke-static {v4, v6, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_24

    :try_start_72
    aget-byte v2, v1, v38

    int-to-byte v2, v2

    invoke-static {v2, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x89

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    aget-byte v1, v1, v35

    int-to-byte v1, v1

    invoke-static {v4, v1, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_23

    :try_start_73
    throw v0

    :catchall_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_36

    throw v1

    :cond_36
    throw v0

    :catchall_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_37

    throw v1

    :cond_37
    throw v0
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_18

    :catchall_25
    move-exception v0

    move/from16 v66, v1

    move-object/from16 v65, v4

    move/from16 v63, v9

    goto/16 :goto_35

    :cond_38
    move/from16 v66, v1

    move-object/from16 v65, v4

    move/from16 v63, v9

    move-object/from16 v62, v15

    const/16 v0, 0xc9

    .line 27
    :try_start_74
    aget-byte v0, v61, v0

    int-to-byte v0, v0

    xor-int/lit16 v1, v8, 0x286

    and-int/lit16 v3, v8, 0x286

    or-int/2addr v1, v3

    int-to-short v1, v1

    invoke-static {v0, v8, v1}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v1, v61, v43

    int-to-byte v1, v1

    invoke-static {v1, v8, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_39

    const/4 v15, 0x1

    :try_start_75
    new-array v3, v15, [Ljava/lang/Class;

    aput-object v1, v3, v17
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_3e

    :try_start_76
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_39

    :try_start_77
    new-array v4, v15, [Ljava/lang/Object;

    aput-object v2, v4, v17
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_3e

    :try_start_78
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aget-byte v3, v61, v38

    int-to-byte v3, v3

    aget-byte v4, v61, v37

    int-to-byte v4, v4

    const/16 v5, 0x2ea

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aget-byte v3, v61, v22

    int-to-byte v3, v3

    xor-int/lit16 v4, v11, 0x285

    and-int/lit16 v5, v11, 0x285

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-static {v3, v8, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x325

    aget-byte v4, v61, v4

    int-to-byte v4, v4

    aget-byte v5, v61, v37

    int-to-byte v5, v5

    const/16 v6, 0x30a

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    aget-byte v4, v61, v27

    int-to-byte v4, v4

    const/16 v5, 0x51

    int-to-byte v5, v5

    const/16 v6, 0x264

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_39

    const/4 v15, 0x1

    :try_start_79
    new-array v5, v15, [Ljava/lang/Class;

    aput-object v19, v5, v17
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_3e

    :try_start_7a
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_39

    :try_start_7b
    new-array v4, v15, [Ljava/lang/Object;

    aput-object v2, v4, v17

    const/16 v2, 0x11b

    aget-byte v2, v61, v2

    int-to-byte v2, v2

    const/16 v5, 0x1b0

    int-to-short v6, v5

    invoke-static {v2, v8, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v5, v61, v43

    int-to-byte v5, v5

    invoke-static {v5, v8, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v15, 0x1

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v17

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3d

    :try_start_7c
    const-class v4, Lcom/appsflyer/internal/AFi1fSDK;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_39

    .line 28
    sget v5, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    xor-int/lit8 v6, v5, 0x3d

    and-int/lit8 v5, v5, 0x3d

    const/16 v48, 0x1

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v5

    rem-int/lit16 v6, v6, 0x80

    sput v6, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 29
    :try_start_7d
    aget-byte v5, v61, v16

    int-to-byte v5, v5

    aget-byte v6, v61, v37

    int-to-byte v6, v6

    const/16 v9, 0x2c2

    int-to-short v9, v9

    invoke-static {v5, v6, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v7, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_3c

    const/16 v5, 0x26

    :try_start_7e
    aget-byte v5, v61, v5

    int-to-byte v5, v5

    const/16 v6, 0x310

    int-to-short v6, v6

    invoke-static {v5, v8, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aget-byte v6, v61, v44

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v12, 0x56

    int-to-byte v12, v12

    or-int/lit16 v11, v11, 0x205

    int-to-short v11, v11

    invoke-static {v6, v12, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_39

    const/4 v14, 0x3

    :try_start_7f
    new-array v11, v14, [Ljava/lang/Class;
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_3b

    :try_start_80
    aput-object v19, v11, v17

    const/16 v48, 0x1

    aput-object v30, v11, v48

    const/16 v41, 0x2

    aput-object v30, v11, v41
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_3a

    :try_start_81
    invoke-virtual {v5, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    aget-byte v11, v61, v33

    int-to-byte v11, v11

    const/16 v14, 0x467

    aget-byte v14, v61, v14

    int-to-byte v14, v14

    const/16 v15, 0x32c

    int-to-short v15, v15

    invoke-static {v11, v14, v15}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v5, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/16 v11, 0x141

    aget-byte v11, v61, v11

    int-to-byte v11, v11

    const/16 v14, 0x336

    int-to-short v14, v14

    invoke-static {v11, v8, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v14, v61, v44

    neg-int v14, v14

    int-to-byte v14, v14

    aget-byte v15, v61, v26
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_39

    int-to-byte v15, v15

    move/from16 v61, v10

    move/from16 v30, v13

    const/16 v13, 0x15d

    int-to-short v10, v13

    :try_start_82
    invoke-static {v14, v15, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    invoke-virtual {v11, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/16 v11, 0x400

    new-array v11, v11, [B
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_37

    move/from16 v13, v17

    :goto_3b
    const/4 v15, 0x1

    :try_start_83
    new-array v14, v15, [Ljava/lang/Object;

    aput-object v11, v14, v17
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_38

    :try_start_84
    invoke-virtual {v1, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_37

    if-lez v15, :cond_3a

    .line 30
    sget v67, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    move-object/from16 v68, v1

    add-int/lit8 v1, v67, 0x1f

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    move-object/from16 v67, v11

    move v1, v12

    int-to-long v11, v13

    move/from16 v69, v1

    const/4 v1, 0x0

    .line 31
    :try_start_85
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/Long;

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Long;->longValue()J

    move-result-wide v70
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_27

    cmp-long v1, v11, v70

    if-gez v1, :cond_39

    .line 32
    sget v1, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 33
    :try_start_86
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_27

    const/4 v12, 0x3

    :try_start_87
    new-array v11, v12, [Ljava/lang/Object;

    aput-object v67, v11, v17

    const/16 v48, 0x1

    aput-object v1, v11, v48

    const/16 v41, 0x2

    aput-object v14, v11, v41

    invoke-virtual {v6, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_26

    neg-int v1, v15

    neg-int v1, v1

    or-int v11, v13, v1

    shl-int/lit8 v11, v11, 0x1

    xor-int/2addr v1, v13

    sub-int v13, v11, v1

    move-object/from16 v11, v67

    move-object/from16 v1, v68

    move/from16 v12, v69

    goto :goto_3b

    :catchall_26
    move-exception v0

    :goto_3c
    move-object v1, v0

    move/from16 v10, v27

    move-object/from16 v9, v65

    goto/16 :goto_36

    :catchall_27
    move-exception v0

    const/4 v12, 0x3

    goto :goto_3c

    :cond_39
    :goto_3d
    const/4 v12, 0x3

    const/4 v6, 0x0

    goto :goto_3e

    :cond_3a
    move/from16 v69, v12

    goto :goto_3d

    :goto_3e
    :try_start_88
    invoke-virtual {v5, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_31

    :try_start_89
    invoke-virtual {v10, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_13
    .catchall {:try_start_89 .. :try_end_89} :catchall_26

    :catch_13
    :try_start_8a
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v2, 0x23

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    aget-byte v3, v1, v35

    int-to-byte v3, v3

    const/16 v5, 0x346

    int-to-short v5, v5

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v1, v43

    int-to-byte v3, v3

    xor-int/lit16 v5, v8, 0x320

    and-int/lit16 v6, v8, 0x320

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v3, v8, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v6, v1, v36

    int-to-byte v6, v6

    xor-int/lit16 v9, v8, 0x332

    and-int/lit16 v10, v8, 0x332

    or-int/2addr v9, v10

    int-to-short v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_31

    const/4 v9, 0x2

    :try_start_8b
    new-array v10, v9, [Ljava/lang/Class;

    aput-object v3, v10, v17

    const/4 v11, 0x1

    aput-object v6, v10, v11
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_32

    :try_start_8c
    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_31

    :try_start_8d
    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v17

    aget-byte v0, v1, v43

    int-to-byte v0, v0

    invoke-static {v0, v8, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v5, v1, v27

    int-to-byte v5, v5

    const/16 v6, 0x38f

    int-to-short v6, v6

    move/from16 v9, v69

    invoke-static {v5, v9, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Class;

    aput-object v19, v6, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_36

    const/4 v5, 0x2

    :try_start_8e
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v17

    const/16 v48, 0x1

    aput-object v4, v3, v48
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_32

    :try_start_8f
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_31

    const/16 v2, 0xd

    :try_start_90
    aget-byte v2, v1, v2

    int-to-byte v2, v2

    aget-byte v3, v1, v35

    int-to-byte v3, v3

    const/16 v5, 0x392

    int-to-short v5, v5

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v1, v17

    int-to-byte v3, v3

    const/16 v5, 0x45d

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    const/16 v6, 0x3b1

    int-to-short v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v1, v24

    int-to-byte v6, v6

    const/16 v9, 0x4d

    int-to-byte v9, v9

    const/16 v10, 0x3b8

    int-to-short v10, v10

    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v10, 0x145

    aget-byte v10, v1, v10

    int-to-byte v10, v10

    or-int/lit16 v11, v9, 0x382

    int-to-short v11, v11

    invoke-static {v10, v9, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    check-cast v9, Ljava/util/List;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_14
    .catchall {:try_start_90 .. :try_end_90} :catchall_31

    const/16 v11, 0xb0

    :try_start_91
    aget-byte v11, v1, v11

    int-to-byte v11, v11

    aget-byte v1, v1, v37

    int-to-byte v1, v1

    or-int/lit16 v13, v1, 0x3a1

    int-to-short v13, v13

    invoke-static {v11, v1, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    invoke-virtual {v7, v1, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_34

    :try_start_92
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_14
    .catchall {:try_start_92 .. :try_end_92} :catchall_31

    move/from16 v11, v17

    :goto_3f
    if-ge v11, v9, :cond_3b

    :try_start_93
    invoke-static {v3, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v1, v11, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_14
    .catchall {:try_start_93 .. :try_end_93} :catchall_26

    const/16 v48, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    :catch_14
    move-exception v0

    move/from16 v10, v27

    move-object/from16 v9, v65

    const/16 v39, 0x165

    goto/16 :goto_46

    :cond_3b
    :try_start_94
    invoke-virtual {v6, v2, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_14
    .catchall {:try_start_94 .. :try_end_94} :catchall_31

    :try_start_95
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_31

    if-nez v1, :cond_3c

    :try_start_96
    sput-object v0, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_26

    :cond_3c
    move-object v1, v0

    :goto_40
    if-eqz v56, :cond_3f

    .line 34
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    xor-int/lit8 v2, v0, 0x37

    and-int/lit8 v0, v0, 0x37

    const/16 v48, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 35
    :try_start_97
    sget-object v0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v2, v0, v36

    int-to-byte v2, v2

    aget-byte v3, v0, v35

    int-to-byte v3, v3

    const/16 v4, 0x295

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v0, v17

    const/16 v48, 0x1

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    const/16 v4, 0x46c

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    sget v5, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    xor-int/lit16 v6, v5, 0x38a

    and-int/lit16 v5, v5, 0x38a

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    aget-byte v4, v0, v36

    int-to-byte v4, v4

    or-int/lit16 v5, v8, 0x332

    int-to-short v5, v5

    invoke-static {v4, v8, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v57, v6, v17

    const/4 v11, 0x1

    aput-object v4, v6, v11

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-class v4, Lcom/appsflyer/internal/AFi1fSDK;
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_26

    :try_start_98
    aget-byte v5, v0, v16

    int-to-byte v5, v5

    aget-byte v6, v0, v37

    int-to-byte v6, v6

    const/16 v9, 0x2c2

    int-to-short v9, v9

    invoke-static {v5, v6, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v7, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_28

    const/4 v5, 0x2

    :try_start_99
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v51, v6, v17

    const/16 v48, 0x1

    aput-object v4, v6, v48

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_26

    if-eqz v3, :cond_3d

    .line 36
    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    and-int/lit8 v5, v4, 0x75

    or-int/lit8 v4, v4, 0x75

    add-int/2addr v5, v4

    rem-int/lit16 v5, v5, 0x80

    sput v5, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 37
    :try_start_9a
    aget-byte v4, v0, v44

    neg-int v4, v4

    int-to-byte v4, v4

    aget-byte v0, v0, v26

    int-to-byte v0, v0

    const/16 v10, 0x15d

    int-to-short v5, v10

    invoke-static {v4, v0, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    move-object v0, v3

    move/from16 v5, v28

    goto/16 :goto_41

    :catchall_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3e

    throw v1

    :cond_3e
    throw v0
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_26

    :cond_3f
    :try_start_9b
    sget-object v0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v2, v0, v36

    int-to-byte v2, v2

    xor-int/lit16 v3, v8, 0x332

    and-int/lit16 v4, v8, 0x332

    or-int/2addr v3, v4

    int-to-short v3, v3

    invoke-static {v2, v8, v3}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v0, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    mul-int/lit16 v5, v3, -0x10f

    const/16 v6, -0x111

    and-int v9, v6, v5

    or-int/2addr v5, v6

    add-int/2addr v9, v5

    not-int v5, v3

    not-int v6, v4

    xor-int v10, v5, v6

    and-int/2addr v5, v6

    or-int/2addr v5, v10

    not-int v5, v5

    const/16 v29, -0x1

    xor-int v6, v29, v3

    or-int/2addr v6, v3

    xor-int v10, v6, v4

    and-int/2addr v6, v4

    or-int/2addr v6, v10

    not-int v6, v6

    xor-int v10, v5, v6

    and-int/2addr v5, v6

    or-int/2addr v5, v10

    mul-int/lit16 v5, v5, -0x110

    add-int/2addr v9, v5

    not-int v5, v3

    not-int v6, v4

    xor-int v10, v5, v6

    and-int/2addr v5, v6

    or-int/2addr v5, v10

    mul-int/lit16 v5, v5, -0x110

    or-int v6, v9, v5

    const/16 v48, 0x1

    shl-int/lit8 v6, v6, 0x1

    xor-int/2addr v5, v9

    sub-int/2addr v6, v5

    const/16 v29, -0x1

    xor-int v5, v29, v4

    or-int/2addr v4, v5

    not-int v4, v4

    xor-int v5, v3, v4

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    move/from16 v5, v28

    mul-int/2addr v3, v5

    and-int v4, v6, v3

    or-int/2addr v3, v6

    add-int/2addr v4, v3

    int-to-byte v3, v4

    const/16 v4, 0x46c

    aget-byte v0, v0, v4

    int-to-byte v0, v0

    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    or-int/lit16 v4, v4, 0x38a

    int-to-short v4, v4

    invoke-static {v3, v0, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_31

    const/4 v11, 0x1

    :try_start_9c
    new-array v3, v11, [Ljava/lang/Class;

    aput-object v57, v3, v17
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_32

    :try_start_9d
    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_31

    :try_start_9e
    invoke-virtual {v0, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v51, v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9e .. :try_end_9e} :catch_15
    .catchall {:try_start_9e .. :try_end_9e} :catchall_26

    goto :goto_41

    :catch_15
    move-exception v0

    :try_start_9f
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0
    :try_end_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9f .. :try_end_9f} :catch_16
    .catchall {:try_start_9f .. :try_end_9f} :catchall_26

    :catch_16
    const/4 v0, 0x0

    :goto_41
    if-eqz v0, :cond_44

    .line 38
    sget v2, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    or-int/lit8 v3, v2, 0x45

    const/16 v48, 0x1

    shl-int/lit8 v3, v3, 0x1

    xor-int/lit8 v2, v2, 0x45

    sub-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 39
    :try_start_a0
    check-cast v0, Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v3, v2, v25

    int-to-byte v3, v3

    aget-byte v4, v2, v26

    int-to-byte v4, v4

    const/16 v6, 0x402

    int-to-short v6, v6

    invoke-static {v3, v4, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v6
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_31

    const/4 v3, 0x2

    :try_start_a1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v4, v17

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v3, v4, v11
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_32

    :try_start_a2
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    xor-int/lit8 v4, v56, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_31

    const/4 v9, 0x2

    :try_start_a3
    new-array v10, v9, [Ljava/lang/Object;

    aput-object v1, v10, v17

    aput-object v4, v10, v11
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_32

    :try_start_a4
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    const/16 v1, 0xda9

    new-array v3, v1, [B

    const/16 v1, 0x21

    aget-byte v1, v2, v1
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_31

    int-to-byte v1, v1

    const/16 v39, 0x165

    :try_start_a5
    aget-byte v4, v2, v39

    int-to-byte v4, v4

    const/16 v9, 0x422

    int-to-short v9, v9

    invoke-static {v1, v4, v9}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_30

    move-object/from16 v9, v65

    :try_start_a6
    invoke-virtual {v9, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_2f

    :try_start_a7
    new-array v4, v11, [Ljava/lang/Object;

    aput-object v1, v4, v17

    const/16 v1, 0x11b

    aget-byte v1, v2, v1

    int-to-byte v1, v1

    const/16 v11, 0x1b0

    int-to-short v10, v11

    invoke-static {v1, v8, v10}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v10, v2, v43

    int-to-byte v10, v10

    move/from16 v13, v61

    invoke-static {v10, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v15, 0x1

    new-array v14, v15, [Ljava/lang/Class;

    aput-object v10, v14, v17

    invoke-virtual {v1, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_2e

    :try_start_a8
    new-array v4, v15, [Ljava/lang/Object;

    aput-object v1, v4, v17

    aget-byte v1, v2, v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    long-to-int v10, v14

    mul-int/lit16 v14, v1, 0x209

    not-int v14, v14

    rsub-int v14, v14, 0x206

    not-int v15, v1

    not-int v5, v10

    xor-int v32, v15, v5

    and-int/2addr v15, v5

    or-int v15, v32, v15

    not-int v15, v15

    xor-int v32, v1, v10

    and-int v34, v1, v10

    or-int v11, v32, v34

    not-int v11, v11

    xor-int v32, v15, v11

    and-int/2addr v11, v15

    or-int v11, v32, v11

    mul-int/lit16 v11, v11, 0x208

    neg-int v11, v11

    neg-int v11, v11

    or-int v15, v14, v11

    const/16 v48, 0x1

    shl-int/lit8 v15, v15, 0x1

    xor-int/2addr v11, v14

    sub-int/2addr v15, v11

    not-int v1, v1

    not-int v11, v10

    xor-int v14, v1, v11

    and-int/2addr v11, v1

    or-int/2addr v11, v14

    not-int v11, v11

    mul-int/lit16 v11, v11, -0x410

    or-int v14, v15, v11

    const/16 v48, 0x1

    shl-int/lit8 v14, v14, 0x1

    xor-int/2addr v11, v15

    sub-int/2addr v14, v11

    not-int v5, v5

    const/16 v29, -0x1

    xor-int/lit8 v11, v1, -0x1

    or-int/2addr v1, v11

    not-int v1, v1

    xor-int v11, v5, v1

    and-int/2addr v1, v5

    or-int/2addr v1, v11

    xor-int v5, v29, v10

    or-int/2addr v5, v10

    not-int v5, v5

    xor-int v10, v1, v5

    and-int/2addr v1, v5

    or-int/2addr v1, v10

    mul-int/lit16 v1, v1, 0x208

    or-int v5, v14, v1

    const/16 v48, 0x1

    shl-int/lit8 v5, v5, 0x1

    xor-int/2addr v1, v14

    sub-int/2addr v5, v1

    int-to-byte v1, v5

    const/16 v5, 0x1dc

    int-to-short v5, v5

    invoke-static {v1, v8, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v10, v2, v43

    int-to-byte v10, v10

    invoke-static {v10, v8, v13}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Class;

    aput-object v10, v13, v17

    invoke-virtual {v1, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_2d

    :try_start_a9
    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v17

    aget-byte v10, v2, v22

    sub-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-static {v10, v8, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v11, v2, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    mul-int/lit16 v14, v11, 0x1a5

    neg-int v14, v14

    neg-int v14, v14

    const/16 v15, 0x1a3

    and-int v32, v15, v14

    or-int/2addr v14, v15

    add-int v32, v32, v14

    xor-int v14, v11, v13

    and-int v15, v11, v13

    or-int/2addr v14, v15

    not-int v14, v14

    mul-int/lit16 v14, v14, 0x1a4

    add-int v32, v32, v14

    mul-int/lit16 v14, v11, -0x1a4

    not-int v14, v14

    sub-int v32, v32, v14

    const/16 v48, 0x1

    add-int/lit8 v32, v32, -0x1

    not-int v14, v11

    not-int v14, v14

    not-int v13, v13

    xor-int v15, v13, v11

    and-int/2addr v11, v13

    or-int/2addr v11, v15

    not-int v11, v11

    or-int/2addr v11, v14

    mul-int/lit16 v11, v11, 0x1a4

    neg-int v11, v11

    neg-int v11, v11

    not-int v11, v11

    sub-int v32, v32, v11

    const/16 v48, 0x1

    add-int/lit8 v11, v32, -0x1

    int-to-byte v11, v11

    const/16 v13, 0x51

    int-to-byte v13, v13

    sget v14, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    xor-int/lit16 v15, v14, 0x182

    and-int/lit16 v14, v14, 0x182

    or-int/2addr v14, v15

    int-to-short v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/Class;

    aput-object v19, v13, v17

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_2c

    .line 40
    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    add-int/lit8 v4, v4, 0x35

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 41
    :try_start_aa
    aget-byte v4, v2, v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_2b

    long-to-int v10, v10

    mul-int/lit16 v11, v4, 0x197

    neg-int v11, v11

    neg-int v11, v11

    const/16 v13, 0x195

    and-int v14, v13, v11

    or-int/2addr v11, v13

    add-int/2addr v14, v11

    not-int v11, v4

    xor-int v13, v11, v10

    and-int/2addr v11, v10

    or-int/2addr v11, v13

    not-int v11, v11

    not-int v13, v10

    const/16 v29, -0x1

    xor-int/lit8 v15, v13, -0x1

    or-int/2addr v15, v13

    xor-int v32, v15, v4

    and-int/2addr v15, v4

    or-int v15, v32, v15

    not-int v15, v15

    or-int/2addr v11, v15

    mul-int/lit16 v11, v11, -0x196

    add-int/2addr v14, v11

    not-int v11, v4

    xor-int v15, v11, v13

    and-int/2addr v11, v13

    or-int/2addr v11, v15

    const/16 v29, -0x1

    xor-int/lit8 v15, v11, -0x1

    or-int/2addr v11, v15

    not-int v11, v11

    mul-int/lit16 v11, v11, -0x196

    neg-int v11, v11

    neg-int v11, v11

    or-int v15, v14, v11

    const/16 v48, 0x1

    shl-int/lit8 v15, v15, 0x1

    xor-int/2addr v11, v14

    sub-int/2addr v15, v11

    not-int v10, v10

    or-int/2addr v4, v13

    not-int v4, v4

    or-int/2addr v4, v10

    move/from16 v10, v27

    mul-int/2addr v4, v10

    or-int v11, v15, v4

    shl-int/lit8 v11, v11, 0x1

    xor-int/2addr v4, v15

    sub-int/2addr v11, v4

    int-to-byte v4, v11

    :try_start_ab
    invoke-static {v4, v8, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v5, v2, v44

    neg-int v5, v5

    int-to-byte v5, v5

    aget-byte v2, v2, v26

    int-to-byte v2, v2

    const/16 v13, 0x15d

    int-to-short v11, v13

    invoke-static {v5, v2, v11}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v4, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_2a

    :try_start_ac
    invoke-static/range {v60 .. v60}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v1, 0xd86

    move-object v5, v0

    move v0, v1

    move-object v4, v9

    move/from16 v27, v10

    move/from16 v32, v12

    move/from16 v13, v30

    move-object/from16 v10, v59

    move/from16 v9, v63

    move/from16 v1, v66

    const/16 v28, 0x110

    const/16 v29, -0x1

    const/16 v30, 0x6

    const/16 v40, 0x4

    goto/16 :goto_2a

    :catchall_29
    move-exception v0

    :goto_42
    move-object v1, v0

    goto/16 :goto_55

    :catchall_2a
    move-exception v0

    goto :goto_43

    :catchall_2b
    move-exception v0

    move/from16 v10, v27

    :goto_43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_40

    throw v1

    :cond_40
    throw v0

    :catchall_2c
    move-exception v0

    move/from16 v10, v27

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_41

    throw v1

    :cond_41
    throw v0

    :catchall_2d
    move-exception v0

    move/from16 v10, v27

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_42

    throw v1

    :cond_42
    throw v0

    :catchall_2e
    move-exception v0

    move/from16 v10, v27

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_43

    throw v1

    :cond_43
    throw v0

    :catchall_2f
    move-exception v0

    move/from16 v10, v27

    goto :goto_42

    :catchall_30
    move-exception v0

    move/from16 v10, v27

    move-object/from16 v9, v65

    goto :goto_42

    :catchall_31
    move-exception v0

    move/from16 v10, v27

    move-object/from16 v9, v65

    :goto_44
    const/16 v39, 0x165

    goto :goto_42

    :catchall_32
    move-exception v0

    move/from16 v10, v27

    move-object/from16 v9, v65

    goto :goto_44

    :cond_44
    move/from16 v10, v27

    move-object/from16 v9, v65

    const/4 v5, 0x2

    const/16 v39, 0x165

    new-array v0, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v17

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v2, v0, v11

    move-object/from16 v15, v62

    invoke-virtual {v15, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    xor-int/lit8 v2, v56, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v17

    aput-object v2, v3, v11

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_29

    :try_start_ad
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_33

    .line 42
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    move/from16 v2, v63

    const/4 v1, 0x7

    const/4 v5, 0x2

    const/16 v29, -0x1

    const/16 v42, 0x0

    const/16 v48, 0x1

    :goto_45
    const/4 v11, 0x1

    goto/16 :goto_62

    :catchall_33
    move-exception v0

    goto/16 :goto_5e

    :catchall_34
    move-exception v0

    move/from16 v10, v27

    move-object/from16 v9, v65

    const/16 v39, 0x165

    .line 43
    :try_start_ae
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_45

    throw v1

    :catch_17
    move-exception v0

    goto :goto_46

    :cond_45
    throw v0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_ae} :catch_17
    .catchall {:try_start_ae .. :try_end_ae} :catchall_29

    :goto_46
    :try_start_af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v3, v2, v44

    neg-int v3, v3

    int-to-byte v3, v3

    aget-byte v5, v2, v20

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x3d2

    and-int/lit16 v11, v5, 0x3d2

    or-int/2addr v6, v11

    int-to-short v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    aget-byte v3, v2, v23

    int-to-byte v3, v3

    const/16 v4, 0xf

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v5, 0x124

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_29

    const/4 v5, 0x2

    :try_start_b0
    new-array v3, v5, [Ljava/lang/Object;

    const/16 v48, 0x1

    aput-object v0, v3, v48

    aput-object v1, v3, v17

    aget-byte v0, v2, v43

    int-to-byte v0, v0

    shl-int/lit8 v1, v8, 0x2

    int-to-short v1, v1

    invoke-static {v0, v8, v1}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    aput-object v57, v1, v17

    const-class v2, Ljava/lang/Throwable;

    const/16 v48, 0x1

    aput-object v2, v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_35

    :catchall_35
    move-exception v0

    :try_start_b1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_46

    throw v1

    :cond_46
    throw v0

    :catchall_36
    move-exception v0

    move/from16 v10, v27

    move-object/from16 v9, v65

    const/16 v39, 0x165

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_47

    throw v1

    :cond_47
    throw v0

    :catchall_37
    move-exception v0

    :goto_47
    move/from16 v10, v27

    move-object/from16 v9, v65

    const/4 v12, 0x3

    goto/16 :goto_44

    :catchall_38
    move-exception v0

    :goto_48
    move/from16 v10, v27

    move-object/from16 v9, v65

    const/4 v12, 0x3

    goto/16 :goto_44

    :catchall_39
    move-exception v0

    move/from16 v30, v13

    goto :goto_47

    :catchall_3a
    move-exception v0

    move/from16 v30, v13

    move/from16 v10, v27

    move-object/from16 v9, v65

    const/4 v12, 0x3

    goto/16 :goto_44

    :catchall_3b
    move-exception v0

    move/from16 v30, v13

    move v12, v14

    move/from16 v10, v27

    move-object/from16 v9, v65

    goto/16 :goto_44

    :catchall_3c
    move-exception v0

    move/from16 v30, v13

    move/from16 v10, v27

    move-object/from16 v9, v65

    const/4 v12, 0x3

    const/16 v39, 0x165

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_48

    throw v1

    :cond_48
    throw v0

    :catchall_3d
    move-exception v0

    move/from16 v30, v13

    move/from16 v10, v27

    move-object/from16 v9, v65

    const/4 v12, 0x3

    const/16 v39, 0x165

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_49

    throw v1

    :cond_49
    throw v0

    :catchall_3e
    move-exception v0

    move/from16 v30, v13

    goto :goto_48

    :catchall_3f
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    const/4 v12, 0x3

    :goto_49
    const/16 v39, 0x165

    move-object v9, v4

    goto/16 :goto_42

    :catchall_40
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    const/4 v12, 0x3

    goto :goto_49

    :catchall_41
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    const/4 v12, 0x3

    :goto_4a
    const/16 v39, 0x165

    move-object v9, v4

    goto :goto_4c

    :catchall_42
    move-exception v0

    move/from16 v12, v32

    :goto_4b
    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    goto :goto_4a

    :catchall_43
    move-exception v0

    const/4 v12, 0x3

    goto :goto_4b

    :catchall_44
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    move/from16 v12, v32

    goto :goto_4a

    .line 44
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4a

    throw v1

    :cond_4a
    throw v0

    :catchall_45
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    const/4 v12, 0x3

    :goto_4d
    const/16 v31, 0x5

    goto :goto_49

    :catchall_46
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    const/4 v12, 0x3

    :goto_4e
    const/16 v31, 0x5

    const/16 v39, 0x165

    move-object v9, v4

    goto :goto_50

    :catchall_47
    move-exception v0

    move/from16 v66, v1

    goto :goto_4f

    :catchall_48
    move-exception v0

    move/from16 v66, v1

    move v12, v6

    :goto_4f
    move/from16 v63, v9

    move/from16 v30, v13

    move/from16 v10, v27

    goto :goto_4e

    :goto_50
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4b

    throw v1

    :cond_4b
    throw v0

    :catchall_49
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    :goto_51
    move/from16 v30, v13

    :goto_52
    move/from16 v10, v27

    move/from16 v12, v32

    goto :goto_4d

    :catchall_4a
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move-object/from16 v59, v10

    goto :goto_51

    :catchall_4b
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v31, 0x5

    const/16 v39, 0x165

    move-object v9, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4c

    throw v1

    :cond_4c
    throw v0

    :catchall_4c
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    :goto_53
    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v31, 0x5

    const/16 v39, 0x165

    move-object v9, v4

    goto :goto_54

    :catchall_4d
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move-object/from16 v57, v12

    goto :goto_53

    :goto_54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4d

    throw v1

    :cond_4d
    throw v0

    :catchall_4e
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v31, 0x5

    const/16 v39, 0x165

    move-object v9, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4e

    throw v1

    :cond_4e
    throw v0

    :catchall_4f
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v31, 0x5

    const/16 v39, 0x165

    move-object v9, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4f

    throw v1

    :cond_4f
    throw v0
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_29

    :catchall_50
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    goto/16 :goto_52

    :goto_55
    :try_start_b2
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_51

    goto :goto_56

    :catchall_51
    move-exception v0

    :try_start_b3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw v1

    :catchall_52
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v31, 0x5

    :goto_57
    const/16 v39, 0x165

    goto/16 :goto_5e

    :catchall_53
    move-exception v0

    move/from16 v66, v1

    move/from16 v31, v5

    :goto_58
    move/from16 v63, v9

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    goto :goto_57

    :catchall_54
    move-exception v0

    move/from16 v66, v1

    goto :goto_58

    :catchall_55
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v39, 0x165

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_50

    throw v1

    :cond_50
    throw v0

    :catchall_56
    move-exception v0

    move/from16 v66, v1

    move/from16 v63, v9

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v39, 0x165

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_51

    throw v1

    :cond_51
    throw v0

    :cond_52
    :goto_59
    move/from16 v66, v1

    move-object/from16 v50, v5

    move-object/from16 v52, v6

    move/from16 v63, v9

    move-object/from16 v55, v10

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    goto :goto_5d

    :catchall_57
    move-exception v0

    move/from16 v66, v1

    :goto_5a
    move-object/from16 v50, v5

    move-object/from16 v52, v6

    move/from16 v63, v9

    move-object/from16 v55, v10

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    goto :goto_5c

    :catchall_58
    move-exception v0

    move/from16 v66, v1

    :goto_5b
    move-object/from16 v46, v3

    goto :goto_5a

    :catchall_59
    move-exception v0

    move/from16 v66, v1

    move/from16 v49, v2

    goto :goto_5b

    :catchall_5a
    move-exception v0

    move/from16 v66, v1

    move/from16 v49, v2

    move-object/from16 v46, v3

    move-object/from16 v50, v5

    move-object/from16 v52, v6

    move/from16 v63, v9

    move-object/from16 v55, v10

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v47, -0x2

    :goto_5c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_53

    throw v1

    :cond_53
    throw v0

    :cond_54
    move/from16 v49, v2

    move-object/from16 v46, v3

    const/16 v47, -0x2

    goto :goto_59

    :goto_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v3, v2, v44

    neg-int v3, v3

    int-to-byte v3, v3

    aget-byte v4, v2, v20

    int-to-byte v4, v4

    const/16 v5, 0x120

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    aget-byte v0, v2, v23

    int-to-byte v0, v0

    const/16 v3, 0xf

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v4, 0x124

    int-to-short v4, v4

    invoke-static {v0, v3, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_33

    const/4 v11, 0x1

    :try_start_b4
    new-array v1, v11, [Ljava/lang/Object;

    aput-object v0, v1, v17

    aget-byte v0, v2, v43

    int-to-byte v0, v0

    const/16 v41, 0x2

    shl-int/lit8 v2, v8, 0x2

    int-to-short v2, v2

    invoke-static {v0, v8, v2}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v57, v2, v17

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_5b

    :catchall_5b
    move-exception v0

    :try_start_b5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_55

    throw v1

    :cond_55
    throw v0
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_33

    :catchall_5c
    move-exception v0

    move/from16 v66, v1

    move/from16 v49, v2

    move-object/from16 v46, v3

    move-object/from16 v50, v5

    move-object/from16 v52, v6

    move/from16 v63, v9

    move-object/from16 v55, v10

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    const/16 v47, -0x2

    .line 45
    :goto_5e
    :try_start_b6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b6} :catch_18

    long-to-int v1, v1

    move/from16 v2, v63

    mul-int/lit16 v9, v2, -0x2a3

    const/16 v3, 0x2a5

    or-int v4, v3, v9

    const/16 v48, 0x1

    shl-int/lit8 v4, v4, 0x1

    xor-int/2addr v3, v9

    sub-int/2addr v4, v3

    xor-int/lit8 v3, v1, 0x1

    and-int/lit8 v5, v1, 0x1

    or-int/2addr v3, v5

    not-int v5, v2

    xor-int v6, v3, v5

    and-int/2addr v3, v5

    or-int/2addr v3, v6

    mul-int/lit16 v3, v3, -0x2a4

    add-int/2addr v4, v3

    xor-int/lit8 v3, v5, 0x1

    and-int/lit8 v5, v5, 0x1

    or-int/2addr v3, v5

    not-int v3, v3

    not-int v5, v1

    xor-int/lit8 v6, v5, 0x1

    and-int/lit8 v5, v5, 0x1

    or-int/2addr v5, v6

    not-int v5, v5

    or-int/2addr v3, v5

    mul-int/lit16 v3, v3, 0x2a4

    or-int v5, v4, v3

    shl-int/lit8 v5, v5, 0x1

    xor-int/2addr v3, v4

    sub-int/2addr v5, v3

    not-int v3, v2

    xor-int v4, v47, v3

    and-int v6, v47, v3

    or-int/2addr v4, v6

    not-int v4, v4

    not-int v6, v1

    xor-int v9, v3, v6

    and-int/2addr v3, v6

    or-int/2addr v3, v9

    not-int v3, v3

    xor-int v6, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v6

    const/16 v48, 0x1

    xor-int/lit8 v4, v2, 0x1

    and-int/lit8 v6, v2, 0x1

    or-int/2addr v4, v6

    xor-int v6, v4, v1

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    not-int v1, v1

    xor-int v4, v3, v1

    and-int/2addr v1, v3

    or-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x2a4

    xor-int v3, v5, v1

    and-int/2addr v1, v5

    const/4 v11, 0x1

    shl-int/2addr v1, v11

    add-int/2addr v3, v1

    const/4 v1, 0x7

    :goto_5f
    if-ge v3, v1, :cond_57

    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    or-int/lit8 v5, v4, 0x1f

    shl-int/2addr v5, v11

    xor-int/lit8 v4, v4, 0x1f

    sub-int/2addr v5, v4

    rem-int/lit16 v5, v5, 0x80

    sput v5, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    :try_start_b7
    aget-boolean v4, v59, v3

    xor-int/2addr v4, v11

    if-eq v4, v11, :cond_56

    move/from16 v48, v11

    goto :goto_60

    :cond_56
    or-int/lit8 v4, v3, 0x2b

    shl-int/2addr v4, v11

    xor-int/lit8 v3, v3, 0x2b

    sub-int/2addr v4, v3

    xor-int/lit8 v3, v4, -0x2a

    and-int/lit8 v4, v4, -0x2a

    shl-int/2addr v4, v11

    add-int/2addr v3, v4

    goto :goto_5f

    :cond_57
    move/from16 v48, v17

    :goto_60
    xor-int/lit8 v3, v48, 0x1

    if-eq v3, v11, :cond_58

    const/16 v42, 0x0

    sput-object v42, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    sput-object v42, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b7} :catch_18

    const/4 v5, 0x2

    const/16 v29, -0x1

    goto/16 :goto_61

    :cond_58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_b8
    sget-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    aget-byte v2, v1, v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit16 v4, v2, -0x29b

    const/16 v5, 0x537

    add-int/2addr v5, v4

    not-int v4, v2

    const/16 v29, -0x1

    xor-int v6, v29, v3

    or-int/2addr v6, v3

    not-int v6, v6

    xor-int v7, v4, v6

    and-int/2addr v4, v6

    or-int/2addr v4, v7

    mul-int/lit16 v4, v4, -0x29c

    xor-int v6, v5, v4

    and-int/2addr v4, v5

    const/16 v48, 0x1

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v6, v4

    not-int v2, v2

    xor-int v4, v2, v3

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    not-int v2, v2

    const/16 v29, -0x1

    xor-int v3, v29, v2

    or-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x538

    not-int v2, v2

    sub-int/2addr v6, v2

    add-int/lit16 v6, v6, -0x29d

    int-to-byte v2, v6

    aget-byte v3, v1, v20

    int-to-byte v3, v3

    const/16 v4, 0x452

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v2
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_b8} :catch_18

    const/4 v5, 0x2

    :try_start_b9
    new-array v3, v5, [Ljava/lang/Object;

    const/16 v48, 0x1

    aput-object v0, v3, v48

    aput-object v2, v3, v17

    aget-byte v0, v1, v43

    int-to-byte v0, v0

    shl-int/lit8 v1, v8, 0x2

    int-to-short v1, v1

    invoke-static {v0, v8, v1}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    aput-object v57, v1, v17

    const-class v2, Ljava/lang/Throwable;

    const/16 v48, 0x1

    aput-object v2, v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_5d

    :catchall_5d
    move-exception v0

    :try_start_ba
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_59

    throw v1

    :cond_59
    throw v0
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_ba} :catch_18

    :cond_5a
    move/from16 v66, v1

    move/from16 v49, v2

    move-object/from16 v46, v3

    move-object/from16 v50, v5

    move-object/from16 v52, v6

    move v2, v9

    move-object/from16 v55, v10

    move/from16 v44, v11

    move-object/from16 v57, v12

    move/from16 v30, v13

    move-object/from16 v59, v15

    move/from16 v10, v27

    move/from16 v12, v32

    move/from16 v5, v41

    const/4 v1, 0x7

    const/16 v42, 0x0

    :goto_61
    move/from16 v48, v49

    goto/16 :goto_45

    :goto_62
    add-int/lit8 v9, v2, 0x1

    move/from16 v41, v5

    move/from16 v27, v10

    move v4, v11

    move/from16 v32, v12

    move/from16 v13, v30

    move/from16 v11, v44

    move-object/from16 v3, v46

    move/from16 v2, v48

    move-object/from16 v5, v50

    move-object/from16 v6, v52

    move-object/from16 v10, v55

    move-object/from16 v12, v57

    move-object/from16 v15, v59

    move/from16 v1, v66

    const/16 v28, 0x110

    const/16 v30, 0x6

    const/16 v40, 0x4

    goto/16 :goto_15

    :cond_5b
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    :goto_63
    return-void

    :catchall_5e
    move-exception v0

    :try_start_bb
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5c

    throw v1

    :cond_5c
    throw v0

    :catchall_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5d

    throw v1

    :cond_5d
    throw v0

    :catchall_60
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5e

    throw v1

    :cond_5e
    throw v0
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bb} :catch_18

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_61
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5f

    throw v1

    :cond_5f
    throw v0

    :array_0
    .array-data 1
        0x26t
        0x60t
        0x6at
        -0x76t
        0x54t
        -0x58t
        -0x1at
        -0x77t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCurrencyIso4217Code(I)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    sget v2, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v3, v2, 0x61

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    const/16 v4, 0xb

    div-int/2addr v4, v1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    :goto_0
    xor-int/lit8 v4, v2, 0x55

    and-int/lit8 v2, v2, 0x55

    shl-int/2addr v2, v0

    add-int/2addr v4, v2

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v1

    sget-object p0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v4, 0x1b

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    const/16 v5, 0x52

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x233

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v0, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x2ce

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x1ab

    aget-byte p0, p0, v6

    int-to-byte p0, p0

    const/16 v6, 0x48f

    int-to-short v6, v6

    invoke-static {v5, p0, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v1

    invoke-virtual {v4, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
.end method

.method public static getCurrencyIso4217Code(Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    sget v2, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    and-int/lit8 v3, v2, 0x3f

    or-int/lit8 v2, v2, 0x3f

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    const/16 v4, 0x2e

    div-int/2addr v4, v1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    :goto_0
    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v1

    sget-object p0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    const/16 v4, 0x1b

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    const/16 v5, 0x52

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x233

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v0, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x1c4

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x1ab

    aget-byte p0, p0, v6

    int-to-byte p0, p0

    sget v6, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    or-int/lit16 v6, v6, 0x40a

    int-to-short v6, v6

    invoke-static {v5, p0, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v0, v1

    invoke-virtual {v4, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
.end method

.method public static getMediationNetwork(CII)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x3

    .line 5
    sget v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 6
    .line 7
    sget-object v5, Lcom/appsflyer/internal/AFi1fSDK;->d:Ljava/lang/Object;

    .line 8
    .line 9
    and-int/lit8 v6, v4, 0x69

    .line 10
    .line 11
    or-int/lit8 v4, v4, 0x69

    .line 12
    .line 13
    add-int/2addr v6, v4

    .line 14
    rem-int/lit16 v6, v6, 0x80

    .line 15
    .line 16
    sput v6, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 17
    .line 18
    and-int/lit8 v4, v6, 0x4f

    .line 19
    .line 20
    or-int/lit8 v6, v6, 0x4f

    .line 21
    .line 22
    add-int/2addr v4, v6

    .line 23
    rem-int/lit16 v4, v4, 0x80

    .line 24
    .line 25
    sput v4, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 26
    .line 27
    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    aput-object p2, v4, v2

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    aput-object p1, v4, v1

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    aput-object p0, v4, v0

    .line 46
    .line 47
    sget-object p0, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 48
    .line 49
    const/16 p1, 0x1b

    .line 50
    .line 51
    aget-byte p1, p0, p1

    .line 52
    .line 53
    int-to-byte p1, p1

    .line 54
    const/16 p2, 0x52

    .line 55
    .line 56
    aget-byte p2, p0, p2

    .line 57
    .line 58
    int-to-byte p2, p2

    .line 59
    const/16 v6, 0x233

    .line 60
    .line 61
    int-to-short v6, v6

    .line 62
    invoke-static {p1, p2, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object p2, Lcom/appsflyer/internal/AFi1fSDK;->unregisterClient:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p2, Ljava/lang/ClassLoader;

    .line 69
    .line 70
    invoke-static {p1, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/16 p2, 0x1fa

    .line 75
    .line 76
    aget-byte p2, p0, p2

    .line 77
    .line 78
    int-to-byte p2, p2

    .line 79
    const/16 v6, 0x1ab

    .line 80
    .line 81
    aget-byte p0, p0, v6

    .line 82
    .line 83
    int-to-byte p0, p0

    .line 84
    const/16 v6, 0x468

    .line 85
    .line 86
    int-to-short v6, v6

    .line 87
    invoke-static {p2, p0, v6}, Lcom/appsflyer/internal/AFi1fSDK;->$$c(IIS)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-array p2, v3, [Ljava/lang/Class;

    .line 92
    .line 93
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    aput-object v3, p2, v0

    .line 96
    .line 97
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    aput-object v0, p2, v1

    .line 100
    .line 101
    aput-object v0, p2, v2

    .line 102
    .line 103
    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    return-object p0

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_0

    .line 118
    .line 119
    throw p1

    .line 120
    :cond_0
    throw p0
.end method

.method private static getRevenue(II)V
    .locals 0

    .line 1
    sget p0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 2
    .line 3
    add-int/lit8 p0, p0, 0x31

    .line 4
    .line 5
    rem-int/lit16 p1, p0, 0x80

    .line 6
    .line 7
    sput p1, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 8
    .line 9
    rem-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public static init$0()V
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFi1fSDK;->$11:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0xb

    .line 4
    .line 5
    or-int/lit8 v0, v0, 0xb

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    rem-int/lit16 v0, v1, 0x80

    .line 9
    .line 10
    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$10:I

    .line 11
    .line 12
    rem-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    const-string v0, "ISO-8859-1"

    .line 15
    .line 16
    const-string v2, ")\u009f5\u00bb\u00f3\n\u00f2\u0003\u0006\u00056\u00c7\u00f5\u0011\u00f1\u0008\u00ff\u0006\u00f0E\u00eb\u00d4\u0003\u00fd\u00fd\u00f6\u00f7\u0010\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00ee\u00fb\u00dd8\u00cf\u000f\u000f\u00f9\u00f8\u0000\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00de\u00ef\u000b\u00f3\r\u00f5\u00fb%\u00ec\u00f6\r\u0004\u00fd\u00ee\u0003\u0000\r\u00f7\u00fa3\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00d1\u0000)\u00db\u00fd\r\u0001\u00f5\u00f9\u0002\u00f1+\u00db\u0005\u00f5\u000b\u0008\u00f5+\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\u0002\u00f1.\u00dd\u00fd\u0007\u00f2/\u00db\u00f7\u0002\u00f11\u00d4\u000b\u00ff\"\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\u0002\u00f11\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\u00cb\u0003\u00ed\u00132\u00cb\u0003\u00ed\u00132\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\t\u00eb\u00153\u00c5\u00faA\u00ba\u0007\u00fd\u000c\u00fb\u00f7\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00db\u00da\u0006\u00ff\u000f\u00f8\u0002\u00f1$\u00de\u0003\u00ff\u000b\u00f3\u00fe\u00fb\u00f4\u000b\u00ff\u0006\u00fc\u0002\u00fe\u00fb\u0003\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00ec\u00cd\u000c\u00fd\u0008@\u00ce\u0011\u00f3\u00ff\n\u00fa\u0001\u000f\u00f9\u00ec\u0016\u00fb\u00fa\u0002\u00f3\u0017\u00e5\t\u00f5\u000f\u0015\u00fa\u0016\u00f8\t\u00eb\u00153\u00c5\u00faA\u00e5\u00fa\n\u00cd\u0015\u00fe\u00f5\u00fc\u000b\u00fa\u0001\u00ee\u0003\u0000\r\u00f7\u00fa \u00eb\u00fc\u0008\u0018\u00e4\u00fd\u0000\u0003\u00f6\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\u0016\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00f7\u00fd\u00fc\u000e\u0015\u00fd\u0013\u00f8\u00ce\u00ee\u0000\u000e\u00f1\u0001D\u00cc\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00fd\u00fa\u0004\u0000\u00ff\u0003\u0002\u00f9\u00d6+\u00d01\u00d4\u00fb-\u0002\u00d46\u0002\u00f1\"\u00ed\u00f2\u0004\u00fa\u0003\u000f\u00fe\t\u00eb\u00153\u00c0\t\u00f1F\u00d9\u0003\u0006\u0002\u00f1$\u00ef\u00ed\u000c\t\u00eb\u00153\u00c5\u00faA\u00ec\u00cd\u000f\u0000\u0001\u00f3\r\u0001\u001b\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\t\u00eb\u00153\u00c5\u00faA\u00e5\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\t\u00eb\u00153\u00c5\u00faA\u00ea\u00e3\u00ed\u0013\u0018\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\r\u0004\u00fd\u001e\u00d1\t\u0000\u00f3\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e80\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3D\u00c5\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5>\u00ed\u00fb\u00db:\u00bf\u001f\u000f\u00f9\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3D\u00c5\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5>\u00ed\u00fb\u00dd8\u00cf\u000f\u000f\u00f9\u00f8\u0000\u00fb\u0005\u00dd\u0012\u00ed\u00ef\u0011\u00f7\u00f9\u0010!\u00e3\u00ed\u0013\u0008\u0002\u00f9\r\u0004\u00fd\u000e\u00f1\"\u00ed\u0004\u00fd\u0015\u00e1\u0002\u00f3\u0015\u00fc\u0014\u00f8\u0005\t\u00f5\u000f\u0002\u00f1.\u0002\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007!\u00df\u00f2\u0010\u00f1\t\u00f9\u00fc\u0005\u00fd\u00fa\u000b\u000b\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ea\u00df\u00ed2\u00dd\u00fd\u0007\u00fd\u000e\u00fd \u00df\u00ed\u0002\u00f13\u00df\u00ef\u0004\u0003\u00f7\u0001\u000f\u0015\u00ef\u00ed\u000c\u00ff\u00f9\u0007\u00f1\u000f\u0002\u00f11\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\t\u00eb\u00153\u00b9\u0001\u000b\u00fd>\u00b4\u0011\u00f9B\u00d4\u00f1\u00f9\'\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0002\u00f1&\u00e9\u00ed\u0004/\u00d7\u00fa\u0002\u00f9\t\u00eb\u00153\u00b9\u0001\u000b\u00fd>\u00b4\u0011\u00f9B\u00d4\u00f1\u00f9+\u00d7\u00fa\u0002\u00f9\u0002\u00f1!\u00ea\u00ef\u0015\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8*\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0005-\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8\t\u00eb\u00153\u00c5\u00faA\u00eb\u00d7\u00fd\u00fc\u000e\u0004\u00ff\u00f6\u0007\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00e5\u00db!\u00e8\u00f8\u00fe\u00fd\u00f95\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\t\u00eb\u00153\u00c0\u0005\u00faA\u00ec\u00c9\u0005\u000f#\u00cd\u000f\u0000\u0001\u00f3\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00eb\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u0005\u0011\u00f1\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ec\u00e1\u00ee\u000e!\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u000f\u00ed\u000c\u001c\u00e3\u00f6\u00ff\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f95\u00db\u00f7\r\u0002\u00ef\u0005\u00fd\t\u0004\u00f2\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f9)\u00ef\u00ed\u000c#\u00d9\u0007\u00f8\u0008\u00f7\u00fa\u0001\u0002\u00f11\u00d4\u0002\u00fd\u0001\u0001\t\u00f7\u00fa \u00db\t\u000b\u0015\u00f8\u0018\u00f8\u00fd\u000e\u00fd!\u00d7\u000b\u00ee\u0000\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00ee\u00fb\u00dd8\u00cb\u0013\u000f\u00f9\'\u00ad\u00ce\u00ee\u0000\u000e\u00f1\u0001D\u00cc\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00cb3\u00cf\u0000/\u00fa\u0005\u00d2\u0001)\u00ff\u0008\u00fe\u00fb\u00d24\u00ce7\u0015\u00f9\u0017\u00f8\u00ba\u00ffO\u00ba\u0005\u00f5\u0000\n\u0001\u00fe\u00f8\u00f8S\u00b4\u0007\u00ff\u00f2K\u0002\u00f1\'\u00e8\u0001\u00fb\u0008\u00ed\u000b\u00fa\u0001 \u00e9\u00f1\u00fd\u0008\u00fd\u0007\u0002\u00f11\u00ce\u0003\u0000\r\u00f7\u000b\u00ea0\u00d6\u0004;\u0002\u0001\u00fa\u00f4\u00d4\u000b\u00ff\u0002\u00f1\"\u00ed\u00ef\u0011\u00f7\u00f9\u0010"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/16 v4, 0x49d

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-array v1, v4, [B

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 33
    .line 34
    const/16 v0, 0x45

    .line 35
    .line 36
    :goto_0
    sput v0, Lcom/appsflyer/internal/AFi1fSDK;->$$b:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-array v1, v4, [B

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    sput-object v1, Lcom/appsflyer/internal/AFi1fSDK;->$$a:[B

    .line 49
    .line 50
    const/16 v0, 0x70

    .line 51
    .line 52
    goto :goto_0
.end method

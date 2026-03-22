.class public Lcom/appsflyer/internal/AFa1hSDK;
.super Ljava/lang/Object;


# static fields
.field private static final $$a:[B = null

.field private static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static $12:I = 0x0

.field private static $13:I = 0x1

.field public static final AFInAppEventType:Ljava/util/Map;

.field private static afDebugLog:J

.field private static afErrorLog:I

.field private static afErrorLogForExcManagerOnly:[B

.field private static afInfoLog:I

.field private static afVerboseLog:I

.field private static afWarnLog:I

.field public static final d:Ljava/util/Map;

.field private static e:Ljava/lang/Object;

.field private static force:J

.field private static i:Ljava/lang/Object;

.field private static unregisterClient:[B

.field private static v:J

.field private static w:[B


# direct methods
.method private static $$c(SSI)Ljava/lang/String;
    .locals 6

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1hSDK;->$13:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x73

    .line 4
    .line 5
    rem-int/lit16 v1, v1, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFa1hSDK;->$12:I

    .line 8
    .line 9
    sget-object v1, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    .line 10
    .line 11
    add-int/lit8 v2, p0, 0x1

    .line 12
    .line 13
    rsub-int p2, p2, 0x495

    .line 14
    .line 15
    rsub-int/lit8 p1, p1, 0x77

    .line 16
    .line 17
    new-array v2, v2, [B

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x79

    .line 23
    .line 24
    rem-int/lit16 v4, v0, 0x80

    .line 25
    .line 26
    sput v4, Lcom/appsflyer/internal/AFa1hSDK;->$12:I

    .line 27
    .line 28
    rem-int/lit8 v0, v0, 0x2

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/16 v0, 0x3c

    .line 33
    .line 34
    div-int/2addr v0, v3

    .line 35
    :cond_0
    move v0, p2

    .line 36
    move-object v4, v1

    .line 37
    move v1, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v0, v3

    .line 40
    :goto_0
    int-to-byte v4, p1

    .line 41
    aput-byte v4, v2, v0

    .line 42
    .line 43
    if-ne v0, p0, :cond_2

    .line 44
    .line 45
    new-instance p0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {p0, v2, v3}, Ljava/lang/String;-><init>([BI)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    aget-byte v4, v1, p2

    .line 54
    .line 55
    move v5, v0

    .line 56
    move v0, p2

    .line 57
    move p2, v4

    .line 58
    move-object v4, v1

    .line 59
    move v1, v5

    .line 60
    :goto_1
    add-int/2addr p1, p2

    .line 61
    add-int/lit8 p1, p1, -0x3

    .line 62
    .line 63
    add-int/lit8 p2, v0, 0x1

    .line 64
    .line 65
    move v0, v1

    .line 66
    move-object v1, v4

    .line 67
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 70

    const-class v3, Ljava/lang/Throwable;

    const/16 v0, 0x3b8

    const-class v5, Ljava/lang/Class;

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-class v16, [B

    const/16 v17, 0x31

    const-class v1, Lcom/appsflyer/internal/AFa1hSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFa1hSDK;->init$0()V

    const/16 v18, 0x38

    .line 1
    :try_start_0
    new-array v4, v13, [Ljava/lang/Object;

    const/16 v19, 0x55

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v4, v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v4, v14

    sget-object v20, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 v21, 0xc2

    const/16 v22, 0x7e

    aget-byte v8, v20, v21

    int-to-byte v8, v8

    const/16 v21, 0x69

    const/16 v23, 0x72

    aget-byte v9, v20, v21

    int-to-byte v9, v9

    move/from16 v24, v14

    const/16 v14, 0x491

    int-to-short v14, v14

    invoke-static {v8, v9, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x1a

    aget-byte v14, v20, v9

    int-to-byte v14, v14

    move/from16 v25, v12

    const/16 v12, 0x2e

    aget-byte v2, v20, v12

    int-to-byte v2, v2

    const/16 v27, 0x5

    const/16 v11, 0x470

    int-to-short v11, v11

    invoke-static {v14, v2, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    new-array v11, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v11, v24

    aput-object v14, v11, v15

    invoke-virtual {v8, v2, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6c

    const/16 v4, 0xc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    const v11, -0x20000893

    xor-int v14, v11, v10

    and-int/2addr v11, v10

    or-int/2addr v11, v14

    not-int v11, v11

    mul-int/lit16 v11, v11, 0x26f

    neg-int v11, v11

    neg-int v11, v11

    const v14, 0x854cf16

    or-int v28, v14, v11

    shl-int/lit8 v28, v28, 0x1

    xor-int/2addr v11, v14

    sub-int v28, v28, v11

    not-int v11, v10

    const v14, 0x50b8c304

    or-int/2addr v11, v14

    mul-int/lit16 v11, v11, -0x26f

    and-int v14, v28, v11

    or-int v11, v28, v11

    add-int/2addr v14, v11

    const v11, -0x23072c9c

    or-int/2addr v11, v10

    not-int v11, v11

    const v28, 0x20000892

    or-int v11, v28, v11

    const v28, 0x53bfe70d

    xor-int v29, v28, v10

    and-int v10, v28, v10

    or-int v10, v29, v10

    not-int v10, v10

    or-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x26f

    neg-int v10, v10

    neg-int v10, v10

    or-int v11, v14, v10

    shl-int/2addr v11, v15

    xor-int/2addr v10, v14

    sub-int/2addr v11, v10

    not-int v10, v2

    const v14, 0x10dedcae

    xor-int v28, v14, v10

    and-int/2addr v10, v14

    or-int v10, v28, v10

    not-int v10, v10

    const v14, 0x9200351

    xor-int v28, v14, v10

    and-int/2addr v10, v14

    or-int v10, v28, v10

    const v14, -0x10c01c89

    xor-int v28, v14, v2

    and-int/2addr v14, v2

    or-int v14, v28, v14

    move/from16 v28, v4

    not-int v4, v14

    xor-int v29, v10, v4

    and-int/2addr v4, v10

    or-int v4, v29, v4

    mul-int/lit16 v4, v4, -0xfc

    neg-int v4, v4

    neg-int v4, v4

    xor-int v10, v11, v4

    and-int/2addr v4, v11

    shl-int/2addr v4, v15

    add-int/2addr v10, v4

    const v4, 0x7d1c16dc

    add-int/2addr v10, v4

    not-int v2, v2

    const v4, 0x10dedcae

    xor-int v11, v4, v2

    and-int/2addr v2, v4

    or-int/2addr v2, v11

    const v4, 0x93ec377

    or-int/2addr v2, v4

    not-int v2, v2

    not-int v4, v14

    or-int/2addr v2, v4

    mul-int/lit16 v4, v2, 0xfc

    move v14, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    const v7, 0x34e90

    mul-int/2addr v2, v7

    mul-int/lit16 v7, v10, -0x35a

    add-int/2addr v2, v7

    or-int v7, v4, v6

    mul-int/lit16 v7, v7, -0x35b

    not-int v7, v7

    sub-int/2addr v2, v7

    sub-int/2addr v2, v15

    not-int v7, v6

    xor-int v29, v7, v4

    and-int/2addr v7, v4

    or-int v7, v29, v7

    not-int v7, v7

    not-int v11, v4

    move/from16 v30, v14

    not-int v14, v10

    xor-int v31, v11, v14

    and-int/2addr v11, v14

    or-int v11, v31, v11

    xor-int v31, v11, v6

    and-int/2addr v11, v6

    or-int v11, v31, v11

    not-int v11, v11

    xor-int v31, v7, v11

    and-int/2addr v7, v11

    or-int v7, v31, v7

    mul-int/lit16 v7, v7, 0x35b

    add-int/2addr v2, v7

    not-int v6, v6

    or-int/2addr v6, v14

    not-int v6, v6

    not-int v7, v10

    xor-int v10, v7, v4

    and-int/2addr v4, v7

    or-int/2addr v4, v10

    not-int v4, v4

    xor-int v7, v6, v4

    and-int/2addr v4, v6

    or-int/2addr v4, v7

    mul-int/lit16 v4, v4, 0x35b

    not-int v4, v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v15

    if-nez v2, :cond_0

    goto/16 :goto_6f

    :cond_0
    const-wide v6, -0x35639f66afc09726L    # -2.654305789685746E51

    sput-wide v6, Lcom/appsflyer/internal/AFa1hSDK;->v:J

    const v2, 0x227a1884

    sput v2, Lcom/appsflyer/internal/AFa1hSDK;->afWarnLog:I

    sput v25, Lcom/appsflyer/internal/AFa1hSDK;->afVerboseLog:I

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/appsflyer/internal/AFa1hSDK;->afErrorLogForExcManagerOnly:[B

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/appsflyer/internal/AFa1hSDK;->AFInAppEventType:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const/16 v2, 0x1ff

    :try_start_1
    aget-byte v2, v20, v2

    int-to-byte v2, v2

    const/16 v6, 0x6b

    aget-byte v4, v20, v6

    int-to-byte v4, v4

    const/16 v7, 0x463

    int-to-short v7, v7

    invoke-static {v2, v4, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/appsflyer/internal/AFa1hSDK;->i:Ljava/lang/Object;

    if-nez v4, :cond_1

    const/16 v4, 0x7b

    aget-byte v4, v20, v4

    int-to-byte v4, v4

    aget-byte v7, v20, v6

    int-to-byte v7, v7

    const/16 v10, 0x443

    int-to-short v10, v10

    invoke-static {v4, v7, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    goto :goto_0

    :cond_1
    move-object v4, v8

    :goto_0
    const/16 v7, 0x17

    const/4 v10, 0x6

    const/16 v31, 0x4

    .line 2
    :try_start_2
    aget-byte v7, v20, v7

    int-to-byte v7, v7

    aget-byte v11, v20, v21

    int-to-byte v11, v11

    or-int/lit16 v14, v11, 0x421

    int-to-short v14, v14

    invoke-static {v7, v11, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v11, v20, v10

    int-to-byte v11, v11

    aget-byte v14, v20, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    int-to-byte v14, v14

    move/from16 v20, v6

    xor-int/lit16 v6, v14, 0x40a

    move/from16 v32, v10

    and-int/lit16 v10, v14, 0x40a

    or-int/2addr v6, v10

    int-to-short v6, v6

    :try_start_3
    invoke-static {v11, v14, v6}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v6, :cond_2

    goto :goto_1

    :catch_0
    move/from16 v20, v6

    move/from16 v32, v10

    :catch_1
    move-object v6, v8

    :cond_2
    :try_start_4
    sget-object v7, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 v10, 0x48

    aget-byte v10, v7, v10

    int-to-byte v10, v10

    aget-byte v11, v7, v21

    int-to-byte v11, v11

    const/16 v14, 0x40d

    int-to-short v14, v14

    invoke-static {v10, v11, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v11, v7, v20

    int-to-byte v11, v11

    aget-byte v7, v7, v31

    int-to-byte v7, v7

    xor-int/lit16 v14, v7, 0x3e8

    and-int/lit16 v12, v7, 0x3e8

    or-int/2addr v12, v14

    int-to-short v12, v12

    invoke-static {v11, v7, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_1
    const/16 v7, 0x4f

    if-eqz v6, :cond_3

    .line 3
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v12, v11, v7

    int-to-byte v12, v12

    aget-byte v11, v11, v31

    int-to-byte v11, v11

    const/16 v14, 0x3e4

    int-to-short v14, v14

    invoke-static {v12, v11, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    :cond_3
    move-object v10, v8

    :goto_2
    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v14, v12, v28

    int-to-byte v14, v14

    aget-byte v12, v12, v31
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    int-to-byte v12, v12

    move/from16 v34, v7

    or-int/lit16 v7, v12, 0x3ca

    int-to-short v7, v7

    :try_start_7
    invoke-static {v14, v12, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    :goto_3
    move-object v7, v8

    goto :goto_4

    :catch_5
    :cond_4
    move/from16 v34, v7

    goto :goto_3

    :goto_4
    if-eqz v6, :cond_5

    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v14, v12, v34

    int-to-byte v14, v14

    aget-byte v12, v12, v31
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    int-to-byte v12, v12

    move/from16 v35, v9

    const/16 v9, 0x3cc

    int-to-short v9, v9

    :try_start_9
    invoke-static {v14, v12, v9}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    :goto_5
    move-object v6, v8

    goto :goto_6

    :catch_7
    :cond_5
    move/from16 v35, v9

    goto :goto_5

    :goto_6
    const-class v9, Ljava/lang/String;

    if-eqz v10, :cond_6

    :goto_7
    const/16 v37, 0x50

    goto :goto_8

    :cond_6
    if-nez v4, :cond_7

    move-object v10, v8

    goto :goto_7

    :cond_7
    :try_start_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v14, v11, v34

    int-to-byte v14, v14

    const/16 v36, 0x2b6

    const/16 v37, 0x50

    aget-byte v12, v11, v36

    int-to-byte v12, v12

    const/16 v13, 0x3c2

    int-to-short v13, v13

    invoke-static {v14, v12, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_13

    :try_start_b
    new-array v10, v15, [Ljava/lang/Object;

    aput-object v4, v10, v24

    aget-byte v4, v11, v37

    int-to-byte v4, v4

    aget-byte v11, v11, v35

    int-to-byte v11, v11

    int-to-short v12, v0

    invoke-static {v4, v11, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v11, v15, [Ljava/lang/Class;

    aput-object v9, v11, v24

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6b

    :goto_8
    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    :try_start_c
    sget-object v4, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v6, v4, v35

    int-to-byte v6, v6

    int-to-byte v11, v6

    or-int/lit16 v12, v11, 0x3a0

    int-to-short v12, v12

    invoke-static {v6, v11, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13

    :try_start_d
    new-array v11, v15, [Ljava/lang/Object;

    aput-object v6, v11, v24

    aget-byte v6, v4, v24

    int-to-byte v6, v6

    aget-byte v12, v4, v35

    int-to-byte v12, v12

    const/16 v13, 0x3a0

    int-to-short v13, v13

    invoke-static {v6, v12, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v12, v4, v34

    int-to-byte v12, v12

    aget-byte v13, v4, v31

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0x381

    and-int/lit16 v8, v13, 0x381

    or-int/2addr v8, v14

    int-to-short v8, v8

    invoke-static {v12, v13, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    new-array v12, v15, [Ljava/lang/Class;

    aput-object v9, v12, v24

    invoke-virtual {v6, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6a

    :try_start_e
    new-array v8, v15, [Ljava/lang/Object;

    aput-object v6, v8, v24

    aget-byte v6, v4, v37

    int-to-byte v6, v6

    aget-byte v4, v4, v35

    int-to-byte v4, v4

    int-to-short v11, v0

    invoke-static {v6, v4, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v9, v6, v24

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_69

    :goto_9
    if-nez v7, :cond_a

    sget v4, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    or-int/lit8 v8, v4, 0x1

    shl-int/2addr v8, v15

    xor-int/2addr v4, v15

    sub-int/2addr v8, v4

    rem-int/lit16 v8, v8, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    if-eqz v10, :cond_a

    add-int/lit8 v8, v8, 0x7

    rem-int/lit16 v8, v8, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    :try_start_f
    sget-object v4, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 v7, 0x2f

    aget-byte v7, v4, v7

    int-to-byte v7, v7

    aget-byte v8, v4, v20

    int-to-byte v8, v8

    const/16 v11, 0x387

    int-to-short v11, v11

    invoke-static {v7, v8, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_13

    const/4 v8, 0x2

    :try_start_10
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v7, v11, v15

    aput-object v10, v11, v24

    aget-byte v7, v4, v37

    int-to-byte v7, v7

    aget-byte v8, v4, v35

    int-to-byte v8, v8

    int-to-short v12, v0

    invoke-static {v7, v8, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v8, v4, v37

    int-to-byte v8, v8

    aget-byte v4, v4, v35

    int-to-byte v4, v4

    invoke-static {v8, v4, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/Class;

    aput-object v4, v12, v24

    aput-object v9, v12, v15

    invoke-virtual {v7, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_9

    throw v1

    :cond_9
    throw v0

    :cond_a
    :goto_a
    sget-object v4, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v8, v4, v37

    int-to-byte v8, v8

    aget-byte v11, v4, v35

    int-to-byte v11, v11

    int-to-short v12, v0

    invoke-static {v8, v11, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move/from16 v14, v30

    invoke-static {v0, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/Object;

    const/16 v38, 0x0

    aput-object v38, v8, v24

    aput-object v7, v8, v15

    const/16 v36, 0x2

    aput-object v10, v8, v36

    aput-object v6, v8, v25

    aput-object v7, v8, v31

    aput-object v10, v8, v27

    aput-object v6, v8, v32

    const/4 v0, 0x7

    new-array v6, v0, [Z

    fill-array-data v6, :array_1

    const/4 v0, 0x7

    new-array v7, v0, [Z

    fill-array-data v7, :array_2

    const/4 v14, 0x7

    new-array v10, v14, [Z

    aput-boolean v24, v10, v24

    aput-boolean v24, v10, v15

    const/16 v36, 0x2

    aput-boolean v15, v10, v36

    aput-boolean v15, v10, v25

    aput-boolean v24, v10, v31

    aput-boolean v15, v10, v27

    aput-boolean v15, v10, v32
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_13

    :try_start_12
    aget-byte v0, v4, v23

    int-to-byte v0, v0

    aget-byte v11, v4, v21

    int-to-byte v11, v11

    xor-int/lit16 v13, v11, 0x368

    and-int/lit16 v14, v11, 0x368

    or-int/2addr v13, v14

    int-to-short v13, v13

    invoke-static {v0, v11, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v11, v4, v18

    int-to-byte v11, v11

    const/16 v13, 0x2c

    aget-byte v4, v4, v13

    int-to-byte v4, v4

    or-int/lit16 v13, v4, 0x343

    int-to-short v13, v13

    invoke-static {v11, v4, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_13

    const/16 v4, 0x22

    if-lt v0, v4, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move v4, v15

    goto :goto_b

    :cond_b
    move/from16 v4, v24

    :goto_b
    const/16 v11, 0x1d

    if-ne v0, v11, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v11, v35

    if-lt v0, v11, :cond_d

    move v11, v15

    goto :goto_d

    :cond_d
    :goto_c
    move/from16 v11, v24

    :goto_d
    :try_start_13
    aput-boolean v11, v10, v24

    const/16 v11, 0x15

    if-lt v0, v11, :cond_e

    move v11, v15

    goto :goto_e

    :cond_e
    move/from16 v11, v24

    :goto_e
    aput-boolean v11, v10, v15

    const/16 v11, 0x15

    if-lt v0, v11, :cond_f

    move v0, v15

    goto :goto_f

    :cond_f
    move/from16 v0, v24

    :goto_f
    aput-boolean v0, v10, v31
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    :catch_8
    :goto_10
    move v13, v4

    goto :goto_11

    :catch_9
    move/from16 v4, v24

    goto :goto_10

    :goto_11
    move/from16 v4, v24

    move/from16 v39, v4

    :goto_12
    xor-int/lit8 v0, v39, 0x1

    if-eq v0, v15, :cond_10

    goto/16 :goto_6f

    :cond_10
    const/16 v0, 0x9

    if-ge v4, v0, :cond_62

    sget v0, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v11, v0, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    const/16 v36, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_61

    :try_start_14
    aget-boolean v0, v10, v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    if-eqz v0, :cond_60

    const/16 v40, 0xe

    :try_start_15
    aget-boolean v11, v6, v4

    aget-object v0, v8, v4

    aget-boolean v41, v7, v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_66

    const/16 v42, 0x10

    if-eqz v11, :cond_15

    if-eqz v0, :cond_12

    .line 4
    :try_start_16
    sget-object v14, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v15, v14, v37
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    int-to-byte v15, v15

    move-object/from16 v44, v2

    const/16 v35, 0x1a

    :try_start_17
    aget-byte v2, v14, v35

    int-to-byte v2, v2

    invoke-static {v15, v2, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v15, 0x112

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    aget-byte v14, v14, v20
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    int-to-byte v14, v14

    move-object/from16 v45, v3

    const/16 v3, 0x361

    int-to-short v3, v3

    :try_start_18
    invoke-static {v15, v14, v3}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-eqz v2, :cond_13

    :goto_13
    move v2, v11

    goto/16 :goto_17

    :catchall_1
    move-exception v0

    goto :goto_15

    :catchall_2
    move-exception v0

    :goto_14
    move-object/from16 v45, v3

    goto :goto_15

    :catchall_3
    move-exception v0

    move-object/from16 v44, v2

    goto :goto_14

    :goto_15
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_11

    throw v2

    :catchall_4
    move-exception v0

    :goto_16
    move/from16 v63, v4

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v41, v10

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v33, 0x2e

    move-object v6, v5

    goto/16 :goto_69

    :cond_11
    throw v0

    :cond_12
    move-object/from16 v44, v2

    move-object/from16 v45, v3

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v11, v3, v42

    int-to-byte v11, v11

    aget-byte v14, v3, v22

    int-to-byte v14, v14

    const/16 v15, 0x35a

    int-to-short v15, v15

    invoke-static {v11, v14, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v14, 0x7

    aget-byte v0, v3, v14

    int-to-byte v0, v0

    aget-byte v11, v3, v25

    int-to-byte v15, v11

    const/16 v11, 0x356

    int-to-short v14, v11

    invoke-static {v0, v15, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    const/4 v2, 0x1

    :try_start_1a
    new-array v15, v2, [Ljava/lang/Object;

    aput-object v0, v15, v24

    aget-byte v0, v3, v40

    int-to-byte v0, v0

    const/16 v35, 0x1a

    aget-byte v2, v3, v35

    int-to-byte v2, v2

    invoke-static {v0, v2, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v9, v3, v24

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_14

    throw v2

    :cond_14
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :cond_15
    move-object/from16 v44, v2

    move-object/from16 v45, v3

    goto/16 :goto_13

    :goto_17
    if-eqz v2, :cond_2a

    :try_start_1c
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_15

    :try_start_1d
    sget-object v14, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v15, v14, v24

    int-to-byte v15, v15

    const/16 v35, 0x1a

    aget-byte v11, v14, v35
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    int-to-byte v11, v11

    move/from16 v46, v4

    const/16 v4, 0x3a0

    int-to-short v4, v4

    :try_start_1e
    invoke-static {v15, v11, v4}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v11, v14, v31

    int-to-byte v11, v11

    aget-byte v14, v14, v20

    int-to-byte v14, v14

    const/16 v15, 0x344

    int-to-short v15, v15

    invoke-static {v11, v14, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v4, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v14, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    const-wide/32 v47, -0x6069e416

    xor-long v14, v14, v47

    :try_start_1f
    invoke-virtual {v3, v14, v15}, Ljava/util/Random;->setSeed(J)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    const/4 v15, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    :goto_18
    if-nez v15, :cond_28

    .line 5
    sget v4, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    add-int/lit8 v4, v4, 0x19

    rem-int/lit16 v11, v4, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    const/16 v36, 0x2

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_27

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    if-nez v47, :cond_16

    move-object/from16 v52, v8

    move/from16 v6, v32

    goto/16 :goto_1a

    :cond_16
    if-nez v48, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v4, v6

    not-int v4, v4

    const v6, -0x768b448

    xor-int v7, v6, v4

    and-int/2addr v6, v4

    or-int/2addr v6, v7

    not-int v6, v6

    const v7, 0x132302cf

    or-int/2addr v6, v7

    mul-int/lit16 v6, v6, -0x3a5

    const v7, -0x4c8807b6

    add-int/2addr v7, v6

    const v6, 0x132302cf

    or-int/2addr v4, v6

    not-int v4, v4

    const v6, -0x176bb6d0

    xor-int v11, v4, v6

    and-int/2addr v4, v6

    or-int/2addr v4, v11

    mul-int/lit16 v4, v4, 0x3a5

    add-int/2addr v7, v4

    const v4, 0x5af839a8

    and-int v6, v7, v4

    or-int/2addr v4, v7

    add-int/2addr v6, v4

    move-object/from16 v52, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v4, v7

    const v7, 0x59dca44d

    xor-int v8, v7, v4

    and-int v11, v7, v4

    or-int/2addr v8, v11

    not-int v11, v8

    const v14, 0x1162a0e0

    or-int/2addr v11, v14

    mul-int/lit16 v11, v11, -0x29c

    neg-int v11, v11

    neg-int v11, v11

    const v53, -0x51a3a350

    or-int v54, v53, v11

    const/16 v43, 0x1

    shl-int/lit8 v54, v54, 0x1

    xor-int v11, v53, v11

    sub-int v54, v54, v11

    const v11, 0x1162a0e0

    xor-int v53, v11, v4

    and-int/2addr v4, v11

    or-int v4, v53, v4

    not-int v4, v4

    xor-int v11, v7, v4

    and-int/2addr v4, v7

    or-int/2addr v4, v11

    mul-int/lit16 v4, v4, 0x538

    neg-int v4, v4

    neg-int v4, v4

    xor-int v7, v54, v4

    and-int v4, v54, v4

    const/16 v43, 0x1

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v7, v4

    or-int v4, v8, v14

    mul-int/lit16 v4, v4, 0x29c

    add-int/2addr v7, v4

    if-le v6, v7, :cond_17

    :goto_19
    move/from16 v6, v31

    goto :goto_1a

    :cond_17
    move/from16 v6, v27

    goto :goto_1a

    :cond_18
    move-object/from16 v52, v8

    if-nez v49, :cond_19

    goto :goto_19

    :cond_19
    move/from16 v6, v25

    .line 6
    :goto_1a
    :try_start_20
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v43, 0x1

    xor-int/lit8 v4, v6, 0x1

    and-int/lit8 v8, v6, 0x1

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x2e

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    move/from16 v8, v24

    :goto_1b
    if-ge v8, v6, :cond_1c

    if-eqz v41, :cond_1b

    const/16 v11, 0x1a

    :try_start_21
    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Random;->nextBoolean()Z

    move-result v11
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    const/4 v14, 0x1

    xor-int/2addr v11, v14

    if-eq v11, v14, :cond_1a

    neg-int v4, v4

    neg-int v4, v4

    xor-int/lit8 v11, v4, 0x41

    and-int/lit8 v4, v4, 0x41

    shl-int/2addr v4, v14

    add-int/2addr v11, v4

    move-object/from16 v53, v9

    move v4, v11

    move v11, v8

    goto :goto_1c

    :cond_1a
    move v11, v8

    move-object/from16 v53, v9

    :try_start_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    mul-int/lit16 v9, v4, 0x212

    not-int v9, v9

    rsub-int v9, v9, 0x421

    const v14, 0xc6c0

    xor-int v54, v9, v14

    and-int/2addr v9, v14

    const/16 v43, 0x1

    shl-int/lit8 v9, v9, 0x1

    add-int v54, v54, v9

    not-int v9, v8

    or-int/2addr v9, v4

    not-int v9, v9

    xor-int/lit8 v14, v4, 0x60

    and-int/lit8 v55, v4, 0x60

    or-int v14, v14, v55

    not-int v14, v14

    or-int/2addr v9, v14

    mul-int/lit16 v9, v9, 0x211

    xor-int v14, v54, v9

    and-int v9, v54, v9

    const/16 v43, 0x1

    shl-int/lit8 v9, v9, 0x1

    add-int/2addr v14, v9

    xor-int v9, v4, v8

    and-int/2addr v4, v8

    or-int/2addr v4, v9

    not-int v4, v4

    const/16 v8, -0x61

    xor-int v9, v8, v4

    and-int/2addr v4, v8

    or-int/2addr v4, v9

    mul-int/lit16 v4, v4, 0x211

    neg-int v4, v4

    neg-int v4, v4

    and-int v8, v14, v4

    or-int/2addr v4, v14

    add-int/2addr v4, v8

    :goto_1c
    int-to-char v4, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    move-object/from16 v55, v3

    move-object/from16 v28, v5

    move/from16 v9, v46

    :goto_1d
    const/16 v43, 0x1

    goto/16 :goto_20

    :catchall_6
    move-exception v0

    :goto_1e
    move-object v6, v5

    move-object/from16 v41, v10

    move/from16 v54, v12

    move/from16 v56, v13

    move/from16 v63, v46

    :goto_1f
    const/16 v33, 0x2e

    goto/16 :goto_69

    :catchall_7
    move-exception v0

    move-object/from16 v53, v9

    goto :goto_1e

    :cond_1b
    move v11, v8

    move-object/from16 v53, v9

    move/from16 v4, v28

    :try_start_23
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v8
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    move/from16 v9, v46

    move-object/from16 v28, v5

    :try_start_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    mul-int/lit8 v5, v8, 0x46

    const v14, -0x88000

    and-int v54, v5, v14

    or-int/2addr v5, v14

    add-int v54, v54, v5

    not-int v5, v8

    xor-int/lit16 v14, v5, -0x2001

    and-int/lit16 v5, v5, -0x2001

    or-int/2addr v5, v14

    xor-int v14, v5, v4

    and-int/2addr v5, v4

    or-int/2addr v5, v14

    not-int v5, v5

    xor-int/lit16 v14, v8, 0x2000

    move-object/from16 v55, v3

    and-int/lit16 v3, v8, 0x2000

    or-int/2addr v3, v14

    xor-int v14, v3, v4

    and-int/2addr v3, v4

    or-int/2addr v3, v14

    not-int v3, v3

    or-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x45

    and-int v5, v54, v3

    or-int v3, v54, v3

    add-int/2addr v5, v3

    not-int v3, v8

    xor-int/lit16 v14, v3, 0x2000

    move/from16 v54, v5

    and-int/lit16 v5, v3, 0x2000

    or-int/2addr v5, v14

    not-int v5, v5

    xor-int v14, v3, v4

    and-int/2addr v3, v4

    or-int/2addr v3, v14

    not-int v3, v3

    xor-int v14, v5, v3

    and-int/2addr v3, v5

    or-int/2addr v3, v14

    xor-int/lit16 v5, v4, 0x2000

    and-int/lit16 v4, v4, 0x2000

    or-int/2addr v4, v5

    not-int v4, v4

    or-int/2addr v3, v4

    mul-int/lit8 v3, v3, -0x45

    add-int v5, v54, v3

    const/16 v3, -0x2001

    or-int/2addr v3, v8

    not-int v3, v3

    mul-int/lit8 v3, v3, 0x45

    add-int/2addr v5, v3

    int-to-char v3, v5

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :goto_20
    add-int/lit8 v8, v11, 0x1

    move/from16 v46, v9

    move-object/from16 v5, v28

    move-object/from16 v9, v53

    move-object/from16 v3, v55

    const/16 v28, 0xc

    goto/16 :goto_1b

    :catchall_8
    move-exception v0

    :goto_21
    move/from16 v63, v9

    move-object/from16 v41, v10

    move/from16 v54, v12

    move/from16 v56, v13

    move-object/from16 v6, v28

    goto/16 :goto_1f

    :catchall_9
    move-exception v0

    move-object/from16 v28, v5

    :goto_22
    move/from16 v9, v46

    goto :goto_21

    :cond_1c
    move-object/from16 v55, v3

    move-object/from16 v28, v5

    move-object/from16 v53, v9

    move/from16 v9, v46

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    if-nez v47, :cond_1e

    const/4 v8, 0x2

    :try_start_25
    new-array v4, v8, [Ljava/lang/Object;

    const/16 v43, 0x1

    aput-object v3, v4, v43

    aput-object v0, v4, v24

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v5, v3, v37

    int-to-byte v5, v5

    const/16 v35, 0x1a

    aget-byte v6, v3, v35

    int-to-byte v6, v6

    invoke-static {v5, v6, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v3, v37

    int-to-byte v6, v6

    aget-byte v3, v3, v35

    int-to-byte v3, v3

    invoke-static {v6, v3, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Class;

    aput-object v3, v6, v24

    const/16 v43, 0x1

    aput-object v53, v6, v43

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    move-object/from16 v47, v3

    goto/16 :goto_23

    :catchall_a
    move-exception v0

    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1d

    throw v2

    :cond_1d
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    :cond_1e
    if-nez v48, :cond_20

    .line 7
    sget v4, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    or-int/lit8 v5, v4, 0x55

    const/16 v43, 0x1

    shl-int/lit8 v5, v5, 0x1

    xor-int/lit8 v4, v4, 0x55

    sub-int/2addr v5, v4

    rem-int/lit16 v5, v5, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    const/4 v8, 0x2

    .line 8
    :try_start_27
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v43

    aput-object v0, v4, v24

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v5, v3, v37

    int-to-byte v5, v5

    const/16 v35, 0x1a

    aget-byte v6, v3, v35

    int-to-byte v6, v6

    invoke-static {v5, v6, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v3, v37

    int-to-byte v6, v6

    aget-byte v3, v3, v35

    int-to-byte v3, v3

    invoke-static {v6, v3, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Class;

    aput-object v3, v6, v24

    const/16 v43, 0x1

    aput-object v53, v6, v43

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    move-object/from16 v48, v3

    goto/16 :goto_23

    :catchall_b
    move-exception v0

    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1f

    throw v2

    :cond_1f
    throw v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    :cond_20
    if-nez v49, :cond_22

    const/4 v8, 0x2

    :try_start_29
    new-array v4, v8, [Ljava/lang/Object;

    const/16 v43, 0x1

    aput-object v3, v4, v43

    aput-object v0, v4, v24

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v5, v3, v37

    int-to-byte v5, v5

    const/16 v35, 0x1a

    aget-byte v6, v3, v35

    int-to-byte v6, v6

    invoke-static {v5, v6, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v3, v37

    int-to-byte v6, v6

    aget-byte v3, v3, v35

    int-to-byte v3, v3

    invoke-static {v6, v3, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Class;

    aput-object v3, v6, v24

    const/16 v43, 0x1

    aput-object v53, v6, v43

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    move-object/from16 v49, v3

    goto/16 :goto_23

    :catchall_c
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_21

    throw v2

    :cond_21
    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    :cond_22
    const/4 v8, 0x2

    :try_start_2b
    new-array v4, v8, [Ljava/lang/Object;

    const/16 v43, 0x1

    aput-object v3, v4, v43

    aput-object v0, v4, v24

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v5, v3, v37

    int-to-byte v5, v5

    const/16 v35, 0x1a

    aget-byte v6, v3, v35

    int-to-byte v6, v6

    invoke-static {v5, v6, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v3, v37

    int-to-byte v6, v6

    aget-byte v7, v3, v35

    int-to-byte v7, v7

    invoke-static {v6, v7, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/Class;

    aput-object v6, v7, v24

    const/4 v14, 0x1

    aput-object v53, v7, v14

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    :try_start_2c
    new-array v5, v14, [Ljava/lang/Object;

    aput-object v4, v5, v24

    aget-byte v6, v3, v23

    int-to-byte v6, v6

    const/16 v35, 0x1a

    aget-byte v7, v3, v35

    int-to-byte v7, v7

    const/16 v8, 0x334

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v3, v37

    int-to-byte v7, v7

    const/16 v35, 0x1a

    aget-byte v11, v3, v35

    int-to-byte v11, v11

    invoke-static {v7, v11, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Class;

    aput-object v7, v11, v24

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    :try_start_2d
    aget-byte v6, v3, v23

    int-to-byte v6, v6

    const/16 v35, 0x1a

    aget-byte v7, v3, v35

    int-to-byte v7, v7

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v3, v42

    int-to-byte v7, v7

    aget-byte v3, v3, v20

    int-to-byte v3, v3

    xor-int/lit16 v8, v3, 0x309

    and-int/lit16 v11, v3, 0x309

    or-int/2addr v8, v11

    int-to-short v8, v8

    invoke-static {v7, v3, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    invoke-virtual {v6, v3, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    move-object v15, v4

    :goto_23
    move/from16 v46, v9

    move-object/from16 v5, v28

    move-object/from16 v6, v50

    move-object/from16 v7, v51

    move-object/from16 v8, v52

    move-object/from16 v9, v53

    move-object/from16 v3, v55

    const/16 v28, 0xc

    goto/16 :goto_18

    :catchall_d
    move-exception v0

    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_23

    throw v2

    :catch_a
    move-exception v0

    goto :goto_24

    :cond_23
    throw v0

    :catchall_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_24

    throw v2

    :cond_24
    throw v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_a
    .catchall {:try_start_2e .. :try_end_2e} :catchall_8

    :goto_24
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v5, v3, v42

    int-to-byte v5, v5

    aget-byte v6, v3, v22

    int-to-byte v6, v6

    const/16 v7, 0x319

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v14, 0x7

    aget-byte v4, v3, v14

    int-to-byte v4, v4

    aget-byte v5, v3, v25

    int-to-byte v5, v5

    const/16 v11, 0x356

    int-to-short v6, v11

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_8

    const/4 v8, 0x2

    :try_start_30
    new-array v4, v8, [Ljava/lang/Object;

    const/16 v43, 0x1

    aput-object v0, v4, v43

    aput-object v2, v4, v24

    aget-byte v0, v3, v40

    int-to-byte v0, v0

    const/16 v35, 0x1a

    aget-byte v2, v3, v35

    int-to-byte v2, v2

    invoke-static {v0, v2, v6}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/Class;

    aput-object v53, v2, v24

    const/16 v43, 0x1

    aput-object v45, v2, v43

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    :catchall_f
    move-exception v0

    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_25

    throw v2

    :cond_25
    throw v0

    :catchall_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_26

    throw v2

    :cond_26
    throw v0

    :catchall_11
    move-exception v0

    move-object/from16 v28, v5

    :goto_25
    move-object/from16 v53, v9

    goto/16 :goto_22

    :cond_27
    move-object/from16 v28, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move/from16 v9, v46

    const/16 v38, 0x0

    .line 9
    throw v38

    :cond_28
    move-object/from16 v53, v9

    move/from16 v9, v46

    :goto_26
    move-object/from16 v28, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v8

    goto :goto_28

    :catchall_12
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v8

    goto :goto_25

    :catchall_13
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move/from16 v9, v46

    goto :goto_27

    :catchall_14
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move v9, v4

    .line 10
    :goto_27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_29

    throw v2

    :cond_29
    throw v0

    :catchall_15
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move v9, v4

    goto/16 :goto_21

    :cond_2a
    move-object/from16 v53, v9

    move v9, v4

    const/4 v15, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    goto :goto_26

    :goto_28
    sget-object v0, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 v3, 0x1aa

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v4, 0x2b6

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v5, 0x315

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_8

    const/4 v4, 0x1

    :try_start_32
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v24

    aget-byte v4, v0, v34

    int-to-byte v4, v4

    aget-byte v6, v0, v31

    int-to-byte v6, v6

    const/16 v7, 0x2e5

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v53, v7, v24
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_65

    move-object/from16 v6, v28

    :try_start_33
    invoke-virtual {v6, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_64

    :try_start_34
    aget-byte v5, v0, v37

    int-to-byte v5, v5

    const/16 v35, 0x1a

    aget-byte v7, v0, v35

    int-to-byte v7, v7

    const/16 v8, 0x2db

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v7, v0, v18

    int-to-byte v7, v7

    aget-byte v8, v0, v31

    int-to-byte v8, v8

    xor-int/lit16 v11, v8, 0x2c0

    and-int/lit16 v14, v8, 0x2c0

    or-int/2addr v11, v14

    int-to-short v11, v11

    invoke-static {v7, v8, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    invoke-virtual {v5, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_63

    :try_start_35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x7

    aget-byte v7, v0, v14

    int-to-byte v7, v7

    xor-int/lit8 v8, v7, 0x56

    and-int/lit8 v11, v7, 0x56

    or-int/2addr v8, v11

    int-to-byte v8, v8

    const/16 v11, 0x2ca

    int-to-short v11, v11

    invoke-static {v7, v8, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_62

    move/from16 v7, v27

    :try_start_36
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_61

    :try_start_37
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_60

    const/16 v4, 0x1c8c

    :try_start_38
    new-array v4, v4, [B

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_5d

    .line 11
    sget v7, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    add-int/lit8 v7, v7, 0x21

    rem-int/lit16 v7, v7, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    const/4 v7, 0x1

    .line 12
    :try_start_39
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v3, v8, v24

    const/16 v3, 0x308

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v7, v0, v35

    int-to-byte v7, v7

    invoke-static {v3, v7, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v7, v0, v40

    int-to-byte v7, v7

    aget-byte v14, v0, v35
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_5c

    int-to-byte v14, v14

    move-object/from16 v28, v4

    move-object/from16 v41, v10

    const/16 v4, 0x2b0

    int-to-short v10, v4

    :try_start_3a
    invoke-static {v7, v14, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v14, 0x1

    new-array v7, v14, [Ljava/lang/Class;

    aput-object v4, v7, v24

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_5b

    :try_start_3b
    new-array v4, v14, [Ljava/lang/Object;

    aput-object v3, v4, v24

    aget-byte v3, v0, v21

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v7, v0, v35

    int-to-byte v7, v7

    const/16 v8, 0x29e

    int-to-short v8, v8

    invoke-static {v3, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v7, v0, v40

    int-to-byte v7, v7

    const/16 v35, 0x1a

    aget-byte v14, v0, v35

    int-to-byte v14, v14

    invoke-static {v7, v14, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/Class;

    aput-object v7, v10, v24

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_5a

    .line 13
    sget v4, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    add-int/lit8 v4, v4, 0x9

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    const/4 v14, 0x1

    .line 14
    :try_start_3c
    new-array v4, v14, [Ljava/lang/Object;

    aput-object v28, v4, v24

    aget-byte v7, v0, v21

    int-to-byte v7, v7

    const/16 v35, 0x1a

    aget-byte v10, v0, v35

    int-to-byte v10, v10

    invoke-static {v7, v10, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v10, v0, v17
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_58

    int-to-byte v10, v10

    const/16 v33, 0x2e

    :try_start_3d
    aget-byte v14, v0, v33
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_59

    int-to-byte v14, v14

    move/from16 v54, v11

    const/16 v11, 0x288

    int-to-short v11, v11

    :try_start_3e
    invoke-static {v10, v14, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Class;

    aput-object v16, v11, v24

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_58

    :try_start_3f
    aget-byte v4, v0, v21

    int-to-byte v4, v4

    const/16 v35, 0x1a

    aget-byte v7, v0, v35

    int-to-byte v7, v7

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v7, v0, v42

    int-to-byte v7, v7

    aget-byte v0, v0, v20

    int-to-byte v0, v0

    xor-int/lit16 v8, v0, 0x309

    and-int/lit16 v10, v0, 0x309

    or-int/2addr v8, v10

    int-to-short v8, v8

    invoke-static {v7, v0, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v4, v0, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_57

    const/16 v0, 0x14

    const/16 v3, 0x1c5a

    move v4, v3

    move v3, v0

    move v0, v4

    move-object/from16 v4, v28

    move-object/from16 v8, v44

    const/4 v7, 0x0

    :goto_29
    const/4 v14, 0x1

    int-to-long v10, v14

    .line 15
    :try_start_40
    array-length v14, v4
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_56

    move-object/from16 v28, v8

    move/from16 v8, v24

    :goto_2a
    if-ge v8, v14, :cond_2b

    move/from16 v55, v8

    :try_start_41
    aget-byte v8, v4, v55
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_16

    move-wide/from16 v56, v10

    int-to-long v10, v8

    shl-long v58, v56, v32

    add-long v10, v10, v58

    shl-long v58, v56, v42

    add-long v10, v10, v58

    sub-long v10, v10, v56

    add-int/lit8 v8, v55, 0x34

    xor-int/lit8 v55, v8, -0x33

    and-int/lit8 v8, v8, -0x33

    const/16 v43, 0x1

    shl-int/lit8 v8, v8, 0x1

    add-int v8, v55, v8

    goto :goto_2a

    :catchall_16
    move-exception v0

    move-object v2, v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v27, 0x5

    :goto_2b
    const/16 v33, 0x2e

    goto/16 :goto_64

    :cond_2b
    move-wide/from16 v56, v10

    add-int/lit16 v8, v3, 0xa4

    add-int/lit16 v10, v3, 0x1c77

    .line 16
    :try_start_42
    aget-byte v10, v4, v10

    add-int/lit8 v10, v10, -0x22

    int-to-byte v10, v10

    aput-byte v10, v4, v8

    array-length v8, v4

    neg-int v10, v3

    move/from16 v55, v3

    move-object v11, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_56

    long-to-int v3, v3

    mul-int/lit16 v4, v10, -0xa7

    mul-int/lit16 v14, v8, -0xa7

    or-int v58, v4, v14

    const/16 v43, 0x1

    shl-int/lit8 v58, v58, 0x1

    xor-int/2addr v4, v14

    sub-int v58, v58, v4

    not-int v4, v10

    not-int v14, v8

    xor-int v59, v4, v14

    and-int/2addr v4, v14

    or-int v4, v59, v4

    not-int v4, v4

    xor-int v59, v14, v3

    and-int/2addr v14, v3

    or-int v14, v59, v14

    not-int v14, v14

    xor-int v59, v4, v14

    and-int/2addr v4, v14

    or-int v4, v59, v4

    mul-int/lit16 v4, v4, 0x150

    and-int v14, v58, v4

    or-int v4, v58, v4

    add-int/2addr v14, v4

    or-int v4, v10, v8

    not-int v4, v4

    move/from16 v58, v4

    or-int v4, v10, v3

    not-int v4, v4

    xor-int v59, v58, v4

    and-int v4, v58, v4

    or-int v4, v59, v4

    mul-int/lit16 v4, v4, -0xa8

    neg-int v4, v4

    neg-int v4, v4

    and-int v58, v14, v4

    or-int/2addr v4, v14

    add-int v58, v58, v4

    not-int v4, v8

    not-int v3, v3

    or-int/2addr v3, v10

    not-int v3, v3

    xor-int v8, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v8

    mul-int/lit16 v3, v3, 0xa8

    and-int v4, v58, v3

    or-int v3, v58, v3

    add-int/2addr v4, v3

    move/from16 v3, v25

    :try_start_43
    new-array v8, v3, [Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_55

    :try_start_44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v36, 0x2

    aput-object v3, v8, v36

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v43, 0x1

    aput-object v3, v8, v43

    aput-object v11, v8, v24

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 v4, 0xe4

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v35, 0x1a

    aget-byte v10, v3, v35

    int-to-byte v10, v10

    const/16 v11, 0x280

    int-to-short v11, v11

    invoke-static {v4, v10, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_53

    const/4 v11, 0x3

    :try_start_45
    new-array v14, v11, [Ljava/lang/Class;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_54

    :try_start_46
    aput-object v16, v14, v24

    const/16 v43, 0x1

    aput-object v10, v14, v43

    const/16 v36, 0x2

    aput-object v10, v14, v36

    invoke-virtual {v4, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_53

    :try_start_47
    sget-object v8, Lcom/appsflyer/internal/AFa1hSDK;->i:Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_52

    if-nez v8, :cond_2d

    :try_start_48
    sput-wide v56, Lcom/appsflyer/internal/AFa1hSDK;->force:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v58

    const/16 v8, 0x30

    shr-long v58, v58, v8

    const-wide v60, 0x293ed8cc5f5ab664L

    add-long v58, v58, v60

    move-object/from16 v60, v3

    move-object v11, v4

    xor-long v3, v56, v58

    long-to-int v3, v3

    sget-wide v56, Lcom/appsflyer/internal/AFa1hSDK;->force:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v58

    const/16 v4, 0x20

    shr-long v58, v58, v4

    const-wide v61, -0x293ed8cc79589703L    # -8.056971234472684E109

    sub-long v61, v61, v58

    move-object/from16 v58, v10

    move-object v4, v11

    xor-long v10, v56, v61

    long-to-int v8, v10

    sget-wide v10, Lcom/appsflyer/internal/AFa1hSDK;->force:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v56

    const/16 v14, 0x30

    shr-long v56, v56, v14

    const-wide v61, -0x293ed8cc79589706L    # -8.056971234472679E109

    add-long v56, v56, v61

    xor-long v10, v10, v56

    long-to-int v10, v10

    new-array v10, v10, [I

    sget-wide v56, Lcom/appsflyer/internal/AFa1hSDK;->force:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v61

    const/16 v11, 0x30

    shr-long v61, v61, v11

    const-wide v63, -0x293ed8cc79589708L    # -8.056971234472676E109

    sub-long v63, v63, v61

    move-object v14, v10

    xor-long v10, v56, v63

    long-to-int v10, v10

    sget-wide v56, Lcom/appsflyer/internal/AFa1hSDK;->v:J

    move-object/from16 v59, v4

    move/from16 v11, v24

    invoke-static {v11, v11}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    neg-int v4, v4

    move/from16 v61, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v10, v10

    mul-int/lit16 v11, v4, -0x13d

    add-int/lit16 v11, v11, 0x27e0

    move/from16 v62, v8

    not-int v8, v4

    xor-int/lit8 v63, v8, -0x21

    and-int/lit8 v8, v8, -0x21

    or-int v8, v63, v8

    or-int/2addr v8, v10

    not-int v8, v8

    move/from16 v63, v8

    not-int v8, v10

    or-int/2addr v8, v4

    xor-int/lit8 v64, v8, 0x20

    and-int/lit8 v8, v8, 0x20

    or-int v8, v64, v8

    not-int v8, v8

    xor-int v64, v63, v8

    and-int v8, v63, v8

    or-int v8, v64, v8

    mul-int/lit16 v8, v8, -0x13e

    add-int/2addr v11, v8

    const/16 v8, -0x21

    xor-int v63, v8, v4

    and-int/2addr v8, v4

    or-int v8, v63, v8

    not-int v8, v8

    move/from16 v63, v8

    or-int v8, v4, v10

    not-int v8, v8

    xor-int v64, v63, v8

    and-int v8, v63, v8

    or-int v8, v64, v8

    mul-int/lit16 v8, v8, -0x13e

    add-int/2addr v11, v8

    not-int v4, v4

    xor-int v8, v4, v10

    and-int/2addr v4, v10

    or-int/2addr v4, v8

    not-int v4, v4

    const/16 v8, -0x21

    xor-int v10, v8, v4

    and-int/2addr v4, v8

    or-int/2addr v4, v10

    mul-int/lit16 v4, v4, 0x13e

    neg-int v4, v4

    neg-int v4, v4

    and-int v8, v11, v4

    or-int/2addr v4, v11

    add-int/2addr v8, v4

    int-to-byte v4, v8

    ushr-long v10, v56, v4

    long-to-int v4, v10

    and-int v8, v4, v3

    not-int v8, v8

    or-int/2addr v4, v3

    and-int/2addr v4, v8

    aput v4, v14, v61

    sget-wide v10, Lcom/appsflyer/internal/AFa1hSDK;->force:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v56

    const/16 v4, 0x3c

    shr-long v56, v56, v4

    const-wide v63, -0x293ed8cc79589707L    # -8.056971234472677E109

    add-long v56, v56, v63

    xor-long v10, v10, v56

    long-to-int v4, v10

    sget-wide v10, Lcom/appsflyer/internal/AFa1hSDK;->v:J

    long-to-int v8, v10

    not-int v10, v3

    and-int/2addr v10, v8

    not-int v8, v8

    and-int/2addr v3, v8

    or-int/2addr v3, v10

    aput v3, v14, v4

    sget v3, Lcom/appsflyer/internal/AFa1hSDK;->afWarnLog:I

    sget-object v4, Lcom/appsflyer/internal/AFa1hSDK;->afErrorLogForExcManagerOnly:[B

    sget v8, Lcom/appsflyer/internal/AFa1hSDK;->afVerboseLog:I
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1a

    move/from16 v10, v32

    :try_start_49
    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_18

    const/16 v27, 0x5

    :try_start_4a
    aput-object v8, v11, v27
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_17

    :try_start_4b
    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v31

    const/16 v25, 0x3

    aput-object v4, v11, v25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v36, 0x2

    aput-object v3, v11, v36

    const/16 v43, 0x1

    aput-object v14, v11, v43

    const/16 v24, 0x0

    aput-object v59, v11, v24

    const/16 v3, 0x4a

    aget-byte v3, v60, v3

    int-to-byte v3, v3

    aget-byte v4, v60, v20

    int-to-byte v4, v4

    const/16 v8, 0x265

    int-to-short v8, v8

    invoke-static {v3, v4, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v60, v40

    int-to-byte v4, v4

    const/16 v35, 0x1a

    aget-byte v8, v60, v35

    int-to-byte v8, v8

    const/16 v14, 0x2b0

    int-to-short v10, v14

    invoke-static {v4, v8, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v4, v8, v24

    const-class v4, [I

    const/16 v43, 0x1

    aput-object v4, v8, v43

    const/16 v36, 0x2

    aput-object v58, v8, v36

    const-class v4, [B

    const/16 v25, 0x3

    aput-object v4, v8, v25

    const/4 v4, 0x4

    aput-object v58, v8, v4
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_18

    const/16 v27, 0x5

    :try_start_4c
    aput-object v58, v8, v27

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_17

    move/from16 v56, v13

    move-object/from16 v57, v15

    goto/16 :goto_2f

    :catchall_17
    move-exception v0

    goto :goto_2c

    :catchall_18
    move-exception v0

    const/16 v27, 0x5

    :goto_2c
    :try_start_4d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2c

    throw v2

    :catchall_19
    move-exception v0

    :goto_2d
    move-object v2, v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    :goto_2e
    const/16 v25, 0x3

    goto/16 :goto_2b

    :cond_2c
    throw v0
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_19

    :catchall_1a
    move-exception v0

    const/16 v27, 0x5

    goto :goto_2d

    :cond_2d
    move-object/from16 v60, v3

    move-object/from16 v59, v4

    move-object/from16 v58, v10

    const/16 v27, 0x5

    :try_start_4e
    sput-wide v56, Lcom/appsflyer/internal/AFa1hSDK;->afDebugLog:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const/16 v10, 0x20

    shr-long/2addr v3, v10

    const-wide v10, 0x782a669f938e00a1L    # 6.973718264266756E270

    sub-long/2addr v10, v3

    xor-long v3, v56, v10

    long-to-int v3, v3

    sget-wide v10, Lcom/appsflyer/internal/AFa1hSDK;->afDebugLog:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v56
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_51

    const/16 v4, 0x30

    shr-long v56, v56, v4

    const-wide v61, -0x782a669fcb513097L    # -6.38822278604863E-271

    sub-long v61, v61, v56

    xor-long v10, v10, v61

    long-to-int v4, v10

    const/4 v11, 0x3

    :try_start_4f
    new-array v10, v11, [Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_50

    :try_start_50
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    const/16 v36, 0x2

    aput-object v4, v10, v36

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v43, 0x1

    aput-object v3, v10, v43

    const/16 v24, 0x0

    aput-object v59, v10, v24

    const/16 v3, 0x1ff

    aget-byte v3, v60, v3

    int-to-byte v3, v3

    aget-byte v4, v60, v20

    int-to-byte v4, v4

    const/16 v11, 0x247

    int-to-short v11, v11

    invoke-static {v3, v4, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/AFa1hSDK;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    const/4 v14, 0x1

    invoke-static {v3, v14, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0xc

    aget-byte v11, v60, v4

    int-to-byte v11, v11

    aget-byte v14, v60, v19

    int-to-byte v14, v14

    const/16 v4, 0x227

    int-to-short v4, v4

    invoke-static {v11, v14, v4}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    aget-byte v11, v60, v40

    int-to-byte v11, v11

    const/16 v35, 0x1a

    aget-byte v14, v60, v35
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_4f

    int-to-byte v14, v14

    move/from16 v56, v13

    move-object/from16 v57, v15

    const/16 v13, 0x2b0

    int-to-short v15, v13

    :try_start_51
    invoke-static {v11, v14, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_4d

    const/4 v13, 0x3

    :try_start_52
    new-array v14, v13, [Ljava/lang/Class;
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_4e

    const/16 v24, 0x0

    :try_start_53
    aput-object v11, v14, v24

    const/16 v43, 0x1

    aput-object v58, v14, v43

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v36, 0x2

    aput-object v11, v14, v36

    invoke-virtual {v3, v4, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_4d

    :goto_2f
    :try_start_54
    aget-byte v4, v60, v40

    int-to-byte v4, v4

    const/16 v35, 0x1a

    aget-byte v8, v60, v35

    int-to-byte v8, v8

    const/16 v13, 0x2b0

    int-to-short v10, v13

    invoke-static {v4, v8, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x37

    aget-byte v11, v60, v8

    int-to-byte v11, v11

    aget-byte v14, v60, v42

    int-to-byte v14, v14

    const/16 v15, 0x219

    int-to-short v15, v15

    invoke-static {v11, v14, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_4b

    const/4 v14, 0x1

    :try_start_55
    new-array v15, v14, [Ljava/lang/Class;

    sget-object v26, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v26, v15, v24
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_4c

    :try_start_56
    invoke-virtual {v4, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/16 v11, 0x16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_4b

    :try_start_57
    new-array v15, v14, [Ljava/lang/Object;

    aput-object v11, v15, v24
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_4c

    :try_start_58
    invoke-virtual {v4, v3, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_4b

    xor-int/lit8 v4, v2, 0x1

    if-eq v4, v14, :cond_3e

    :try_start_59
    sget-object v4, Lcom/appsflyer/internal/AFa1hSDK;->i:Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_32

    if-nez v4, :cond_2e

    .line 17
    sget v11, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    or-int/lit8 v26, v11, 0x7d

    shl-int/lit8 v26, v26, 0x1

    xor-int/lit8 v11, v11, 0x7d

    sub-int v11, v26, v11

    rem-int/lit16 v11, v11, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    move-object/from16 v11, v47

    goto :goto_30

    :cond_2e
    move-object/from16 v11, v48

    :goto_30
    if-nez v4, :cond_30

    sget v4, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    xor-int/lit8 v14, v4, 0x55

    and-int/lit8 v4, v4, 0x55

    const/16 v43, 0x1

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v14, v4

    rem-int/lit16 v4, v14, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    const/16 v36, 0x2

    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_2f

    const/16 v4, 0x57

    const/16 v24, 0x0

    :try_start_5a
    div-int/lit8 v4, v4, 0x0
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1b

    goto :goto_32

    :catchall_1b
    move-exception v0

    move-object v2, v0

    move/from16 v63, v9

    :goto_31
    move/from16 v54, v12

    goto/16 :goto_2e

    :cond_2f
    :goto_32
    move-object/from16 v4, v49

    goto :goto_33

    :cond_30
    move-object/from16 v4, v57

    .line 18
    :goto_33
    :try_start_5b
    aget-byte v14, v60, v40

    int-to-byte v14, v14

    move/from16 v26, v8

    const/16 v35, 0x1a

    aget-byte v8, v60, v35

    int-to-byte v8, v8

    invoke-static {v14, v8, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aget-byte v14, v60, v26

    int-to-byte v14, v14

    const/16 v33, 0x2e

    aget-byte v13, v60, v33

    int-to-byte v13, v13

    const/16 v61, 0x12

    const/16 v15, 0x216

    int-to-short v15, v15

    invoke-static {v14, v13, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v16, v15, v24

    const/16 v43, 0x1

    aput-object v58, v15, v43

    const/16 v36, 0x2

    aput-object v58, v15, v36

    invoke-virtual {v8, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    aget-byte v13, v60, v23

    int-to-byte v13, v13

    const/16 v35, 0x1a

    aget-byte v14, v60, v35

    int-to-byte v14, v14

    const/16 v15, 0x334

    int-to-short v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_32

    :try_start_5c
    aget-byte v14, v60, v37

    int-to-byte v14, v14

    const/16 v35, 0x1a

    aget-byte v15, v60, v35

    int-to-byte v15, v15

    invoke-static {v14, v15, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_d
    .catchall {:try_start_5c .. :try_end_5c} :catchall_2d

    move-object/from16 v62, v4

    const/4 v15, 0x1

    :try_start_5d
    new-array v4, v15, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v14, v4, v24
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_c
    .catchall {:try_start_5d .. :try_end_5d} :catchall_2c

    :try_start_5e
    invoke-virtual {v13, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_c
    .catchall {:try_start_5e .. :try_end_5e} :catchall_2b

    :try_start_5f
    new-array v14, v15, [Ljava/lang/Object;

    aput-object v11, v14, v24
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_c
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2c

    :try_start_60
    invoke-virtual {v4, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_c
    .catchall {:try_start_60 .. :try_end_60} :catchall_2b

    if-eqz v56, :cond_32

    .line 19
    sget v14, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    and-int/lit8 v15, v14, 0x7b

    or-int/lit8 v14, v14, 0x7b

    add-int/2addr v15, v14

    rem-int/lit16 v15, v15, 0x80

    sput v15, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    .line 20
    :try_start_61
    aget-byte v14, v60, v37

    int-to-byte v14, v14

    const/16 v35, 0x1a

    aget-byte v15, v60, v35

    int-to-byte v15, v15

    invoke-static {v14, v15, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aget-byte v15, v60, v34
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1d

    int-to-byte v15, v15

    move/from16 v63, v9

    :try_start_62
    aget-byte v9, v60, v42

    int-to-byte v9, v9

    move/from16 v64, v2

    const/16 v2, 0x213

    int-to-short v2, v2

    invoke-static {v15, v9, v2}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v14, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v11, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_1c

    goto :goto_37

    :catchall_1c
    move-exception v0

    goto :goto_34

    :catchall_1d
    move-exception v0

    move/from16 v63, v9

    :goto_34
    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_31

    throw v2

    :catchall_1e
    move-exception v0

    move-object v10, v11

    move-object/from16 v9, v62

    const/16 v4, 0xc

    goto/16 :goto_43

    :catch_b
    move-exception v0

    :goto_35
    move-object/from16 v9, v62

    :goto_36
    const/16 v4, 0xc

    goto/16 :goto_42

    :cond_31
    throw v0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_b
    .catchall {:try_start_63 .. :try_end_63} :catchall_1e

    :cond_32
    move/from16 v64, v2

    move/from16 v63, v9

    :goto_37
    const/16 v2, 0x400

    :try_start_64
    new-array v9, v2, [B

    aget-byte v14, v60, v42

    int-to-byte v15, v14

    const/16 v30, 0x7

    aget-byte v14, v60, v30

    int-to-byte v14, v14

    xor-int/lit16 v2, v14, 0x205

    move/from16 v60, v2

    and-int/lit16 v2, v14, 0x205

    or-int v2, v60, v2

    int-to-short v2, v2

    invoke-static {v15, v14, v2}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_29

    const/4 v14, 0x3

    :try_start_65
    new-array v15, v14, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v16, v15, v24

    const/16 v43, 0x1

    aput-object v58, v15, v43

    const/16 v36, 0x2

    aput-object v58, v15, v36
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_2a

    :try_start_66
    invoke-virtual {v13, v2, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_29

    :goto_38
    if-lez v0, :cond_33

    :try_start_67
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x400

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    move-object/from16 v66, v9

    const/4 v15, 0x3

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v66, v9, v24

    const/16 v43, 0x1

    aput-object v14, v9, v43

    const/16 v36, 0x2

    aput-object v58, v9, v36

    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_33

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v67, v3

    move-object/from16 v68, v8

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v66, v8, v24

    const/16 v43, 0x1

    aput-object v15, v8, v43

    const/16 v36, 0x2

    aput-object v9, v8, v36

    invoke-virtual {v2, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    neg-int v3, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_1e

    long-to-int v8, v8

    mul-int/lit16 v9, v3, -0xd1

    mul-int/lit16 v14, v0, -0xd1

    add-int/2addr v9, v14

    not-int v14, v3

    not-int v15, v0

    xor-int v58, v14, v15

    and-int v60, v14, v15

    move-object/from16 v69, v2

    or-int v2, v58, v60

    not-int v2, v2

    mul-int/lit16 v2, v2, 0xd2

    add-int/2addr v9, v2

    not-int v2, v0

    move/from16 v58, v2

    not-int v2, v8

    xor-int v60, v58, v2

    and-int v2, v58, v2

    or-int v2, v60, v2

    not-int v2, v2

    move/from16 v58, v2

    not-int v2, v3

    or-int/2addr v2, v8

    not-int v2, v2

    xor-int v60, v58, v2

    and-int v2, v58, v2

    or-int v2, v60, v2

    mul-int/lit16 v2, v2, 0xd2

    neg-int v2, v2

    neg-int v2, v2

    and-int v58, v9, v2

    or-int/2addr v2, v9

    add-int v58, v58, v2

    not-int v2, v8

    xor-int v9, v14, v2

    and-int/2addr v2, v14

    or-int/2addr v2, v9

    or-int/2addr v0, v2

    not-int v0, v0

    xor-int v2, v15, v3

    and-int/2addr v3, v15

    or-int/2addr v2, v3

    or-int/2addr v2, v8

    not-int v2, v2

    xor-int v3, v0, v2

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0xd2

    and-int v2, v58, v0

    or-int v0, v58, v0

    add-int/2addr v0, v2

    move-object/from16 v9, v66

    move-object/from16 v3, v67

    move-object/from16 v8, v68

    move-object/from16 v2, v69

    const/16 v24, 0x0

    goto/16 :goto_38

    :cond_33
    :try_start_68
    sget-object v0, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v2, v0, v42

    int-to-byte v2, v2

    aget-byte v3, v0, v31

    int-to-byte v3, v3

    const/16 v8, 0x201

    int-to-short v8, v8

    invoke-static {v2, v3, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x48

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v8, v0, v35

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x1f0

    and-int/lit16 v14, v8, 0x1f0

    or-int/2addr v9, v14

    int-to-short v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v8, v0, v26

    int-to-byte v8, v8

    aget-byte v9, v0, v42

    int-to-byte v9, v9

    const/16 v14, 0x1e8

    int-to-short v14, v14

    invoke-static {v8, v9, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v3, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aget-byte v2, v0, v42

    int-to-byte v2, v2

    aget-byte v3, v0, v20

    int-to-byte v3, v3

    xor-int/lit16 v8, v3, 0x309

    and-int/lit16 v9, v3, 0x309

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v2, v3, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    aget-byte v2, v0, v20

    int-to-byte v2, v2

    aget-byte v3, v0, v61

    int-to-byte v3, v3

    const/16 v4, 0x1e5

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v0, v18

    int-to-byte v3, v3

    aget-byte v4, v0, v37

    int-to-byte v4, v4

    const/16 v8, 0x1d1

    int-to-short v8, v8

    invoke-static {v3, v4, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_29

    const/4 v14, 0x3

    :try_start_69
    new-array v4, v14, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v53, v4, v24

    const/16 v43, 0x1

    aput-object v53, v4, v43

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v36, 0x2

    aput-object v8, v4, v36
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2a

    :try_start_6a
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_29

    :try_start_6b
    aget-byte v3, v0, v37

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v4, v0, v35

    int-to-byte v4, v4

    invoke-static {v3, v4, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_28

    const/16 v4, 0xc

    :try_start_6c
    aget-byte v8, v0, v4
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_27

    move-object/from16 v9, v62

    int-to-byte v8, v8

    :try_start_6d
    aget-byte v13, v0, v31

    int-to-byte v13, v13

    const/16 v14, 0x1cb

    int-to-short v14, v14

    invoke-static {v8, v13, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v3, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_26

    .line 21
    sget v8, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    add-int/lit8 v8, v8, 0x49

    rem-int/lit16 v8, v8, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    .line 22
    :try_start_6e
    aget-byte v8, v0, v37

    int-to-byte v8, v8

    const/16 v35, 0x1a

    aget-byte v13, v0, v35

    int-to-byte v13, v13

    invoke-static {v8, v13, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_25

    const/16 v4, 0xc

    :try_start_6f
    aget-byte v13, v0, v4

    int-to-byte v13, v13

    aget-byte v15, v0, v31

    int-to-byte v15, v15

    invoke-static {v13, v15, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_24

    const/16 v24, 0x0

    :try_start_70
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v3, v15, v24

    const/16 v43, 0x1

    aput-object v8, v15, v43

    const/16 v36, 0x2

    aput-object v13, v15, v36

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_23

    :try_start_71
    aget-byte v3, v0, v37

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v8, v0, v35

    int-to-byte v8, v8

    invoke-static {v3, v8, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v33, 0x2e

    aget-byte v8, v0, v33

    int-to-byte v8, v8

    aget-byte v13, v0, v61

    int-to-byte v13, v13

    const/16 v14, 0x1bd

    int-to-short v14, v14

    invoke-static {v8, v13, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v3, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v11, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_22

    :try_start_72
    aget-byte v3, v0, v37

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v8, v0, v35

    int-to-byte v8, v8

    invoke-static {v3, v8, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v33, 0x2e

    aget-byte v8, v0, v33

    int-to-byte v8, v8

    aget-byte v11, v0, v61

    int-to-byte v11, v11

    invoke-static {v8, v11, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v3, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_21

    :try_start_73
    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->e:Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_1f

    if-nez v3, :cond_36

    .line 23
    sget v3, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    add-int/lit8 v3, v3, 0x69

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    const/16 v36, 0x2

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_35

    const/16 v35, 0x1a

    .line 24
    :try_start_74
    aget-byte v3, v0, v35

    int-to-byte v3, v3

    aget-byte v0, v0, v31

    int-to-byte v0, v0

    xor-int/lit16 v8, v0, 0x1a8

    and-int/lit16 v9, v0, 0x1a8

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v3, v0, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v6, v0, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_20

    :try_start_75
    sput-object v0, Lcom/appsflyer/internal/AFa1hSDK;->e:Ljava/lang/Object;

    goto :goto_3a

    :catchall_1f
    move-exception v0

    :goto_39
    move-object v2, v0

    goto/16 :goto_31

    :catchall_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_34

    throw v2

    :cond_34
    throw v0

    :cond_35
    const/16 v38, 0x0

    .line 25
    throw v38

    :cond_36
    :goto_3a
    move-object/from16 v58, v7

    move/from16 v60, v10

    move/from16 v11, v54

    move/from16 v54, v12

    goto/16 :goto_49

    :catchall_21
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_37

    throw v2

    :cond_37
    throw v0

    :catchall_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_38

    throw v2

    :cond_38
    throw v0
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_1f

    :catchall_23
    move-exception v0

    :goto_3b
    move-object v10, v11

    goto/16 :goto_43

    :catchall_24
    move-exception v0

    goto :goto_3c

    :catchall_25
    move-exception v0

    const/16 v4, 0xc

    :goto_3c
    :try_start_76
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_39

    throw v2

    :cond_39
    throw v0

    :catchall_26
    move-exception v0

    :goto_3d
    const/16 v4, 0xc

    goto :goto_3e

    :catchall_27
    move-exception v0

    move-object/from16 v9, v62

    goto :goto_3e

    :catchall_28
    move-exception v0

    move-object/from16 v9, v62

    goto :goto_3d

    :goto_3e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3a

    throw v2

    :cond_3a
    throw v0

    :catchall_29
    move-exception v0

    :goto_3f
    move-object/from16 v9, v62

    :goto_40
    const/16 v4, 0xc

    goto :goto_3b

    :catchall_2a
    move-exception v0

    :goto_41
    move-object/from16 v9, v62

    goto :goto_40

    :catchall_2b
    move-exception v0

    move/from16 v63, v9

    goto :goto_3f

    :catch_c
    move-exception v0

    move/from16 v63, v9

    goto/16 :goto_35

    :catchall_2c
    move-exception v0

    move/from16 v63, v9

    goto :goto_41

    :catchall_2d
    move-exception v0

    move/from16 v63, v9

    move-object v9, v4

    goto :goto_40

    :catch_d
    move-exception v0

    move/from16 v63, v9

    move-object v9, v4

    goto/16 :goto_36

    :goto_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v7, v3, v42

    int-to-byte v7, v7

    aget-byte v8, v3, v22

    int-to-byte v8, v8

    const/16 v10, 0x209

    int-to-short v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v14, 0x7

    aget-byte v7, v3, v14

    int-to-byte v7, v7

    const/16 v25, 0x3

    aget-byte v8, v3, v25
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_23

    int-to-byte v8, v8

    const/16 v10, 0x356

    int-to-short v13, v10

    move-object v10, v11

    :try_start_77
    invoke-static {v7, v8, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_2f

    const/4 v8, 0x2

    :try_start_78
    new-array v7, v8, [Ljava/lang/Object;

    const/16 v43, 0x1

    aput-object v0, v7, v43

    const/16 v24, 0x0

    aput-object v2, v7, v24

    aget-byte v0, v3, v40

    int-to-byte v0, v0

    const/16 v35, 0x1a

    aget-byte v2, v3, v35

    int-to-byte v2, v2

    invoke-static {v0, v2, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v53, v2, v24

    const/16 v43, 0x1

    aput-object v45, v2, v43

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_2e

    :catchall_2e
    move-exception v0

    :try_start_79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3b

    throw v2

    :catchall_2f
    move-exception v0

    goto :goto_43

    :cond_3b
    throw v0
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_2f

    :goto_43
    :try_start_7a
    sget-object v2, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v3, v2, v37

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v7, v2, v35

    int-to-byte v7, v7

    invoke-static {v3, v7, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v33, 0x2e

    aget-byte v7, v2, v33

    int-to-byte v7, v7

    aget-byte v8, v2, v61

    int-to-byte v8, v8

    const/16 v13, 0x1bd

    int-to-short v13, v13

    invoke-static {v7, v8, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_31

    :try_start_7b
    aget-byte v3, v2, v37

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v7, v2, v35

    int-to-byte v7, v7

    invoke-static {v3, v7, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v33, 0x2e

    aget-byte v7, v2, v33

    int-to-byte v7, v7

    aget-byte v2, v2, v61

    int-to-byte v2, v2

    invoke-static {v7, v2, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_30

    :try_start_7c
    throw v0

    :catchall_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3c

    throw v2

    :cond_3c
    throw v0

    :catchall_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3d

    throw v2

    :cond_3d
    throw v0
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_1f

    :catchall_32
    move-exception v0

    move/from16 v63, v9

    const/16 v4, 0xc

    goto/16 :goto_39

    :cond_3e
    move/from16 v64, v2

    move-object/from16 v67, v3

    move/from16 v26, v8

    move/from16 v63, v9

    move/from16 v2, v54

    const/16 v4, 0xc

    const/16 v61, 0x12

    const/16 v0, 0xe4

    .line 27
    :try_start_7d
    aget-byte v0, v60, v0

    int-to-byte v0, v0

    const/16 v35, 0x1a

    aget-byte v3, v60, v35

    int-to-byte v3, v3

    const/16 v8, 0x1ab

    int-to-short v8, v8

    invoke-static {v0, v3, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v3, v60, v40

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v8, v60, v35

    int-to-byte v8, v8

    invoke-static {v3, v8, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_46

    const/4 v15, 0x1

    :try_start_7e
    new-array v8, v15, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v3, v8, v24
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_49

    :try_start_7f
    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_46

    :try_start_80
    new-array v9, v15, [Ljava/lang/Object;

    aput-object v67, v9, v24
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_49

    :try_start_81
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aget-byte v9, v60, v37

    int-to-byte v9, v9

    aget-byte v13, v60, v31

    int-to-byte v13, v13

    xor-int/lit16 v15, v13, 0x180

    and-int/lit16 v4, v13, 0x180

    or-int/2addr v4, v15

    int-to-short v4, v4

    invoke-static {v9, v13, v4}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v0, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v4, 0x48

    aget-byte v4, v60, v4

    int-to-byte v4, v4

    const/16 v35, 0x1a

    aget-byte v9, v60, v35

    int-to-byte v9, v9

    const/16 v13, 0x185

    int-to-short v13, v13

    invoke-static {v4, v9, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v9, v60, v18

    int-to-byte v9, v9

    aget-byte v13, v60, v31

    int-to-byte v13, v13

    or-int/lit16 v15, v13, 0x160

    int-to-short v15, v15

    invoke-static {v9, v13, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v4, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    aget-byte v9, v60, v26
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_46

    int-to-byte v9, v9

    const/16 v33, 0x2e

    :try_start_82
    aget-byte v13, v60, v33
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_4a

    int-to-byte v13, v13

    const/16 v15, 0x216

    int-to-short v15, v15

    :try_start_83
    invoke-static {v9, v13, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_46

    const/4 v15, 0x1

    :try_start_84
    new-array v13, v15, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v16, v13, v24
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_49

    :try_start_85
    invoke-virtual {v3, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_46

    :try_start_86
    new-array v9, v15, [Ljava/lang/Object;

    aput-object v8, v9, v24

    const/16 v8, 0x308

    aget-byte v8, v60, v8

    int-to-byte v8, v8

    const/16 v35, 0x1a

    aget-byte v13, v60, v35

    int-to-byte v13, v13

    invoke-static {v8, v13, v2}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aget-byte v13, v60, v40

    int-to-byte v13, v13

    aget-byte v15, v60, v35

    int-to-byte v15, v15

    invoke-static {v13, v15, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v13, v11, v24

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_48

    const/16 v35, 0x1a

    :try_start_87
    aget-byte v9, v60, v35

    int-to-byte v9, v9

    aget-byte v11, v60, v31

    int-to-byte v11, v11

    xor-int/lit16 v13, v11, 0x1a8

    and-int/lit16 v15, v11, 0x1a8

    or-int/2addr v13, v15

    int-to-short v13, v13

    invoke-static {v9, v11, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v6, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_47

    const/16 v11, 0x24b

    :try_start_88
    aget-byte v11, v60, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v35, 0x1a

    aget-byte v13, v60, v35

    int-to-byte v13, v13

    const/16 v15, 0x16a

    int-to-short v15, v15

    invoke-static {v11, v13, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    aget-byte v13, v60, v42

    int-to-byte v13, v13

    const/16 v30, 0x7

    aget-byte v14, v60, v30
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_46

    int-to-byte v14, v14

    move/from16 v54, v12

    xor-int/lit16 v12, v14, 0x205

    move/from16 v62, v12

    and-int/lit16 v12, v14, 0x205

    or-int v12, v62, v12

    int-to-short v12, v12

    :try_start_89
    invoke-static {v13, v14, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_41

    const/4 v14, 0x3

    :try_start_8a
    new-array v13, v14, [Ljava/lang/Class;
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_45

    const/16 v24, 0x0

    :try_start_8b
    aput-object v16, v13, v24

    const/16 v43, 0x1

    aput-object v58, v13, v43

    const/16 v36, 0x2

    aput-object v58, v13, v36
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_44

    :try_start_8c
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aget-byte v13, v60, v34

    int-to-byte v13, v13

    aget-byte v14, v60, v26

    int-to-byte v14, v14

    move-object/from16 v58, v7

    const/16 v7, 0x14e

    int-to-short v7, v7

    invoke-static {v13, v14, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    invoke-virtual {v11, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    aget-byte v11, v60, v31

    int-to-byte v11, v11

    const/16 v35, 0x1a

    aget-byte v13, v60, v35

    int-to-byte v13, v13

    const/16 v14, 0x144

    int-to-short v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v13, v60, v42

    int-to-byte v13, v13

    aget-byte v14, v60, v20

    int-to-byte v14, v14

    move/from16 v60, v10

    or-int/lit16 v10, v14, 0x309

    int-to-short v10, v10

    invoke-static {v13, v14, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    invoke-virtual {v11, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/16 v11, 0x400

    new-array v11, v11, [B
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_41

    move-object/from16 v62, v11

    const/4 v13, 0x0

    :goto_44
    const/4 v14, 0x1

    :try_start_8d
    new-array v11, v14, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v62, v11, v24
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_42

    :try_start_8e
    invoke-virtual {v3, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_41

    if-lez v14, :cond_41

    .line 28
    sget v65, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    move-object/from16 v66, v3

    add-int/lit8 v3, v65, 0x11

    move-object/from16 v65, v11

    rem-int/lit16 v11, v3, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    const/16 v36, 0x2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_40

    move v11, v2

    int-to-long v2, v13

    move-wide/from16 v67, v2

    const/4 v2, 0x1

    :try_start_8f
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v67, v2

    if-gez v2, :cond_3f

    goto :goto_46

    :cond_3f
    :goto_45
    const/4 v14, 0x0

    goto :goto_47

    :catchall_33
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2e

    :cond_40
    move v11, v2

    int-to-long v2, v13

    move-wide/from16 v67, v2

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_33

    cmp-long v2, v67, v2

    if-gez v2, :cond_3f

    .line 30
    :goto_46
    sget v2, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    add-int/lit8 v2, v2, 0x5b

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    const/16 v24, 0x0

    .line 31
    :try_start_90
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v67, v2

    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v62, v2, v24

    const/16 v43, 0x1

    aput-object v67, v2, v43

    const/16 v36, 0x2

    aput-object v65, v2, v36

    invoke-virtual {v12, v15, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_33

    neg-int v2, v14

    neg-int v2, v2

    or-int v3, v13, v2

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v2, v13

    sub-int v13, v3, v2

    move v2, v11

    move-object/from16 v3, v66

    goto/16 :goto_44

    :cond_41
    move v11, v2

    goto :goto_45

    :goto_47
    :try_start_91
    invoke-virtual {v7, v15, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_41

    :try_start_92
    invoke-virtual {v10, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v15, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_e
    .catchall {:try_start_92 .. :try_end_92} :catchall_33

    :catch_e
    :try_start_93
    sget-object v2, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 v3, 0x307

    aget-byte v3, v2, v3

    neg-int v3, v3

    int-to-byte v3, v3

    aget-byte v4, v2, v61

    int-to-byte v4, v4

    const/16 v7, 0x134

    int-to-short v7, v7

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v2, v40

    int-to-byte v4, v4

    const/16 v35, 0x1a

    aget-byte v7, v2, v35

    int-to-byte v7, v7

    const/16 v8, 0x111

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v7, v2, v20

    int-to-byte v7, v7

    const/16 v35, 0x1a

    aget-byte v10, v2, v35

    int-to-byte v10, v10

    xor-int/lit16 v12, v10, 0xf2

    and-int/lit16 v13, v10, 0xf2

    or-int/2addr v12, v13

    int-to-short v12, v12

    invoke-static {v7, v10, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_41

    const/4 v10, 0x2

    :try_start_94
    new-array v12, v10, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v4, v12, v24

    const/4 v14, 0x1

    aput-object v7, v12, v14
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_42

    :try_start_95
    invoke-virtual {v3, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_41

    :try_start_96
    new-array v4, v14, [Ljava/lang/Object;

    aput-object v0, v4, v24

    aget-byte v0, v2, v40

    int-to-byte v0, v0

    const/16 v35, 0x1a

    aget-byte v7, v2, v35

    int-to-byte v7, v7

    invoke-static {v0, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aget-byte v7, v2, v26

    int-to-byte v7, v7

    const/4 v14, 0x7

    aget-byte v8, v2, v14

    int-to-byte v8, v8

    or-int/lit16 v10, v8, 0xeb

    int-to-short v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x1

    new-array v8, v15, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v16, v8, v24

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_43

    const/4 v8, 0x2

    :try_start_97
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v24

    const/16 v43, 0x1

    aput-object v9, v4, v43
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_42

    :try_start_98
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_41

    const/16 v3, 0x15c

    :try_start_99
    aget-byte v3, v2, v3

    int-to-byte v3, v3

    aget-byte v4, v2, v61

    int-to-byte v4, v4

    const/16 v7, 0xe8

    int-to-short v7, v7

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x112

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    int-to-byte v7, v4

    const/16 v8, 0xc9

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aget-byte v8, v2, v23

    int-to-byte v8, v8

    const/16 v10, 0x2f

    aget-byte v10, v2, v10

    int-to-byte v10, v10

    sget v12, Lcom/appsflyer/internal/AFa1hSDK;->$$b:I

    and-int/lit16 v12, v12, 0x3cb

    int-to-short v12, v12

    invoke-static {v8, v10, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v10, 0xde

    aget-byte v10, v2, v10

    int-to-byte v10, v10

    const/16 v12, 0x2f

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0xa2

    and-int/lit16 v15, v12, 0xa2

    or-int/2addr v13, v15

    int-to-short v13, v13

    invoke-static {v10, v12, v13}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v12, Ljava/util/ArrayList;

    check-cast v10, Ljava/util/List;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_99} :catch_f
    .catchall {:try_start_99 .. :try_end_99} :catchall_3b

    const/16 v24, 0x0

    :try_start_9a
    aget-byte v13, v2, v24

    int-to-byte v13, v13

    aget-byte v2, v2, v31

    int-to-byte v2, v2

    or-int/lit16 v15, v2, 0x83

    int-to-short v15, v15

    invoke-static {v13, v2, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v6, v2, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_3d

    :try_start_9b
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9b} :catch_f
    .catchall {:try_start_9b .. :try_end_9b} :catchall_3b

    const/4 v13, 0x0

    :goto_48
    if-ge v13, v10, :cond_42

    .line 32
    sget v15, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    const/16 v25, 0x3

    xor-int/lit8 v26, v15, 0x3

    and-int/lit8 v15, v15, 0x3

    const/16 v43, 0x1

    shl-int/lit8 v15, v15, 0x1

    add-int v15, v26, v15

    rem-int/lit16 v15, v15, 0x80

    sput v15, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    .line 33
    :try_start_9c
    invoke-static {v4, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v2, v13, v15}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9c} :catch_f
    .catchall {:try_start_9c .. :try_end_9c} :catchall_33

    add-int/lit8 v13, v13, 0x1

    goto :goto_48

    :catch_f
    move-exception v0

    const/16 v33, 0x2e

    goto/16 :goto_51

    :cond_42
    :try_start_9d
    invoke-virtual {v8, v3, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9d} :catch_f
    .catchall {:try_start_9d .. :try_end_9d} :catchall_3b

    .line 34
    sget v2, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v2, v2, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    .line 35
    :try_start_9e
    sget-object v2, Lcom/appsflyer/internal/AFa1hSDK;->e:Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_3b

    if-nez v2, :cond_43

    :try_start_9f
    sput-object v0, Lcom/appsflyer/internal/AFa1hSDK;->e:Ljava/lang/Object;
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_33

    :cond_43
    move-object v2, v0

    :goto_49
    if-eqz v64, :cond_46

    .line 36
    sget v0, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    xor-int/lit8 v3, v0, 0x43

    and-int/lit8 v0, v0, 0x43

    const/16 v43, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    .line 37
    :try_start_a0
    sget-object v0, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v3, v0, v20

    int-to-byte v3, v3

    aget-byte v4, v0, v61

    int-to-byte v4, v4

    const/16 v7, 0x1e5

    int-to-short v7, v7

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v0, v17

    int-to-byte v4, v4

    aget-byte v7, v0, v37

    int-to-byte v7, v7

    sget v8, Lcom/appsflyer/internal/AFa1hSDK;->$$b:I

    and-int/lit16 v8, v8, 0x380

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    aget-byte v7, v0, v20

    int-to-byte v7, v7

    const/16 v35, 0x1a

    aget-byte v8, v0, v35

    int-to-byte v8, v8

    or-int/lit16 v9, v8, 0xf2

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v53, v9, v24

    const/4 v15, 0x1

    aput-object v7, v9, v15

    invoke-virtual {v3, v4, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_33

    const/16 v35, 0x1a

    :try_start_a1
    aget-byte v7, v0, v35

    int-to-byte v7, v7

    aget-byte v8, v0, v31

    int-to-byte v8, v8

    or-int/lit16 v9, v8, 0x1a8

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    invoke-virtual {v6, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_34

    const/4 v8, 0x2

    :try_start_a2
    new-array v9, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v28, v9, v24

    const/16 v43, 0x1

    aput-object v7, v9, v43

    invoke-virtual {v4, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_33

    if-eqz v4, :cond_44

    .line 38
    sget v7, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    or-int/lit8 v8, v7, 0x3f

    shl-int/lit8 v8, v8, 0x1

    xor-int/lit8 v7, v7, 0x3f

    sub-int/2addr v8, v7

    rem-int/lit16 v8, v8, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    .line 39
    :try_start_a3
    aget-byte v7, v0, v42

    int-to-byte v7, v7

    aget-byte v0, v0, v20

    int-to-byte v0, v0

    xor-int/lit16 v8, v0, 0x309

    and-int/lit16 v9, v0, 0x309

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v7, v0, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v3, v0, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    move-object v0, v4

    goto :goto_4a

    :catchall_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_45

    throw v2

    :cond_45
    throw v0
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_33

    :cond_46
    :try_start_a4
    sget-object v0, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v3, v0, v20

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v4, v0, v35

    int-to-byte v4, v4

    xor-int/lit16 v7, v4, 0xf2

    and-int/lit16 v8, v4, 0xf2

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v0, v17

    int-to-byte v4, v4

    aget-byte v0, v0, v37

    int-to-byte v0, v0

    sget v7, Lcom/appsflyer/internal/AFa1hSDK;->$$b:I

    and-int/lit16 v7, v7, 0x380

    int-to-short v7, v7

    invoke-static {v4, v0, v7}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x1

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v53, v4, v24

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_3b

    :try_start_a5
    invoke-virtual {v0, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v28, v3, v24

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a5 .. :try_end_a5} :catch_10
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_33

    goto :goto_4a

    :catch_10
    move-exception v0

    :try_start_a6
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0
    :try_end_a6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a6 .. :try_end_a6} :catch_11
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_33

    :catch_11
    const/4 v0, 0x0

    :goto_4a
    if-eqz v0, :cond_4c

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    :try_start_a7
    move-object v7, v0

    check-cast v7, Ljava/lang/Class;

    sget-object v0, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 v3, 0x1ff

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    aget-byte v4, v0, v20

    int-to-byte v4, v4

    const/16 v8, 0x78

    int-to-short v8, v8

    invoke-static {v3, v4, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v4, v3, v24

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v4, v3, v15

    invoke-virtual {v7, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    xor-int/lit8 v4, v64, 0x1

    if-eq v4, v15, :cond_47

    const/4 v4, 0x0

    goto :goto_4b

    :cond_47
    move v4, v15

    :goto_4b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v2, v9, v24

    aput-object v4, v9, v15

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFa1hSDK;->i:Ljava/lang/Object;

    const/16 v2, 0x3494

    new-array v4, v2, [B

    const/16 v2, 0x1aa

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v3, 0x2b6

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    xor-int/lit8 v9, v3, 0x10

    and-int/lit8 v10, v3, 0x10

    or-int/2addr v9, v10

    int-to-short v9, v9

    invoke-static {v2, v3, v9}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_3b

    :try_start_a8
    new-array v3, v15, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v2, v3, v24

    const/16 v2, 0x308

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v35, 0x1a

    aget-byte v9, v0, v35

    int-to-byte v9, v9

    invoke-static {v2, v9, v11}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v9, v0, v40

    int-to-byte v9, v9

    aget-byte v10, v0, v35

    int-to-byte v10, v10

    move/from16 v12, v60

    invoke-static {v9, v10, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v15, 0x1

    new-array v10, v15, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v9, v10, v24

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_3a

    .line 42
    sget v3, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    add-int/lit8 v3, v3, 0x6d

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    const/4 v15, 0x1

    .line 43
    :try_start_a9
    new-array v3, v15, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v2, v3, v24

    aget-byte v2, v0, v21

    int-to-byte v2, v2

    const/16 v35, 0x1a

    aget-byte v9, v0, v35

    int-to-byte v9, v9

    const/16 v10, 0x29e

    int-to-short v10, v10

    invoke-static {v2, v9, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v9, v0, v40

    int-to-byte v9, v9

    const/16 v35, 0x1a

    aget-byte v13, v0, v35

    int-to-byte v13, v13

    invoke-static {v9, v13, v12}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v9, v12, v24

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_39

    :try_start_aa
    new-array v3, v15, [Ljava/lang/Object;

    aput-object v4, v3, v24

    aget-byte v9, v0, v21

    int-to-byte v9, v9

    const/16 v35, 0x1a

    aget-byte v12, v0, v35

    int-to-byte v12, v12

    invoke-static {v9, v12, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aget-byte v12, v0, v17
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_38

    int-to-byte v12, v12

    const/16 v33, 0x2e

    :try_start_ab
    aget-byte v13, v0, v33

    int-to-byte v13, v13

    const/16 v15, 0x288

    int-to-short v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v16, v13, v24

    invoke-virtual {v9, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_37

    :try_start_ac
    aget-byte v3, v0, v21

    int-to-byte v3, v3

    const/16 v35, 0x1a

    aget-byte v9, v0, v35

    int-to-byte v9, v9

    invoke-static {v3, v9, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v9, v0, v42

    int-to-byte v9, v9

    aget-byte v0, v0, v20

    int-to-byte v0, v0

    xor-int/lit16 v10, v0, 0x309

    and-int/lit16 v12, v0, 0x309

    or-int/2addr v10, v12

    int-to-short v10, v10

    invoke-static {v9, v0, v10}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v3, v0, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_36

    :try_start_ad
    invoke-static/range {v55 .. v55}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v0, 0x3465

    move/from16 v12, v54

    move/from16 v13, v56

    move-object/from16 v15, v57

    move/from16 v9, v63

    move/from16 v2, v64

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v32, 0x6

    move/from16 v54, v11

    goto/16 :goto_29

    :catchall_35
    move-exception v0

    :goto_4c
    move-object v2, v0

    const/16 v25, 0x3

    goto/16 :goto_64

    :catchall_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_48

    throw v2

    :cond_48
    throw v0

    :catchall_37
    move-exception v0

    goto :goto_4d

    :catchall_38
    move-exception v0

    const/16 v33, 0x2e

    :goto_4d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_49

    throw v2

    :cond_49
    throw v0

    :catchall_39
    move-exception v0

    const/16 v33, 0x2e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4a

    throw v2

    :cond_4a
    throw v0

    :catchall_3a
    move-exception v0

    const/16 v33, 0x2e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4b

    throw v2

    :cond_4b
    throw v0

    :catchall_3b
    move-exception v0

    const/16 v33, 0x2e

    goto :goto_4c

    :cond_4c
    const/4 v8, 0x2

    const/16 v33, 0x2e

    new-array v0, v8, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v3, v0, v24

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v3, v0, v15

    move-object/from16 v7, v58

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move/from16 v3, v64

    if-eq v3, v15, :cond_4d

    move v3, v15

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v2, v4, v24

    aput-object v3, v4, v15

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFa1hSDK;->i:Ljava/lang/Object;
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_35

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    const v2, -0x4a8564a0

    xor-int v3, v2, v0

    and-int v4, v2, v0

    or-int/2addr v3, v4

    not-int v3, v3

    const v4, 0xd841eff

    xor-int v7, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v7

    mul-int/lit16 v3, v3, 0x106

    not-int v3, v3

    const v4, 0x7f055d38

    sub-int/2addr v4, v3

    const v3, -0x2556302e

    and-int v7, v4, v3

    or-int/2addr v3, v4

    add-int/2addr v7, v3

    not-int v0, v0

    xor-int v3, v2, v0

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    not-int v0, v0

    const v2, 0xd841eff

    or-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x106

    neg-int v0, v0

    neg-int v0, v0

    and-int v2, v7, v0

    or-int/2addr v0, v7

    add-int/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v0, v3

    const v3, 0x4741b1ab

    xor-int v4, v3, v0

    and-int/2addr v3, v0

    or-int/2addr v3, v4

    not-int v3, v3

    const v4, 0x627e01ee

    xor-int v7, v4, v3

    and-int/2addr v3, v4

    or-int/2addr v3, v7

    mul-int/lit16 v3, v3, 0x18e

    not-int v3, v3

    const v4, 0x3c374125

    sub-int/2addr v4, v3

    not-int v0, v0

    const v3, 0x4741b1ab

    xor-int v7, v3, v0

    and-int/2addr v0, v3

    or-int/2addr v0, v7

    not-int v0, v0

    const v3, 0x627e01ee

    or-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x18e

    not-int v0, v0

    sub-int/2addr v4, v0

    const/16 v43, 0x1

    add-int/lit8 v4, v4, -0x1

    if-le v2, v4, :cond_4e

    :try_start_ae
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    const/16 v0, 0x51

    const/16 v24, 0x0

    div-int/lit8 v0, v0, 0x0

    goto :goto_4f

    :catchall_3c
    move-exception v0

    const/16 v25, 0x3

    goto/16 :goto_69

    .line 45
    :cond_4e
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_3c

    :goto_4f
    move/from16 v9, v63

    const/4 v8, 0x2

    const/16 v11, 0x356

    const/4 v14, 0x7

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v35, 0x1a

    const/16 v39, 0x1

    :goto_50
    const/16 v43, 0x1

    goto/16 :goto_6e

    :catchall_3d
    move-exception v0

    const/16 v33, 0x2e

    .line 46
    :try_start_af
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4f

    throw v2

    :catch_12
    move-exception v0

    goto :goto_51

    :cond_4f
    throw v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_af} :catch_12
    .catchall {:try_start_af .. :try_end_af} :catchall_35

    :goto_51
    :try_start_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v4, v3, v42

    int-to-byte v4, v4

    aget-byte v7, v3, v22

    int-to-byte v7, v7

    sget v8, Lcom/appsflyer/internal/AFa1hSDK;->$$b:I

    and-int/lit16 v8, v8, 0x38d

    int-to-short v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v14, 0x7

    aget-byte v4, v3, v14
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_40

    int-to-byte v4, v4

    const/16 v25, 0x3

    :try_start_b1
    aget-byte v7, v3, v25

    int-to-byte v7, v7

    const/16 v11, 0x356

    int-to-short v8, v11

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_3f

    const/4 v10, 0x2

    :try_start_b2
    new-array v4, v10, [Ljava/lang/Object;

    const/16 v43, 0x1

    aput-object v0, v4, v43

    const/16 v24, 0x0

    aput-object v2, v4, v24

    aget-byte v0, v3, v40

    int-to-byte v0, v0

    const/16 v35, 0x1a

    aget-byte v2, v3, v35

    int-to-byte v2, v2

    invoke-static {v0, v2, v8}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v53, v2, v24

    const/16 v43, 0x1

    aput-object v45, v2, v43

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_3e

    :catchall_3e
    move-exception v0

    :try_start_b3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_50

    throw v2

    :catchall_3f
    move-exception v0

    :goto_52
    move-object v2, v0

    goto/16 :goto_64

    :cond_50
    throw v0

    :catchall_40
    move-exception v0

    :goto_53
    const/16 v25, 0x3

    goto :goto_52

    :catchall_41
    move-exception v0

    :goto_54
    const/16 v25, 0x3

    :goto_55
    const/16 v33, 0x2e

    goto :goto_52

    :catchall_42
    move-exception v0

    :goto_56
    const/16 v25, 0x3

    goto :goto_55

    :catchall_43
    move-exception v0

    const/16 v25, 0x3

    const/16 v33, 0x2e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_51

    throw v2

    :cond_51
    throw v0

    :catchall_44
    move-exception v0

    const/16 v25, 0x3

    goto :goto_55

    :catchall_45
    move-exception v0

    move/from16 v25, v14

    goto :goto_55

    :catchall_46
    move-exception v0

    :goto_57
    move/from16 v54, v12

    goto :goto_54

    :catchall_47
    move-exception v0

    move/from16 v54, v12

    const/16 v25, 0x3

    const/16 v33, 0x2e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_52

    throw v2

    :cond_52
    throw v0

    :catchall_48
    move-exception v0

    move/from16 v54, v12

    const/16 v25, 0x3

    const/16 v33, 0x2e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_53

    throw v2

    :cond_53
    throw v0

    :catchall_49
    move-exception v0

    :goto_58
    move/from16 v54, v12

    goto :goto_56

    :catchall_4a
    move-exception v0

    move/from16 v54, v12

    goto :goto_53

    :catchall_4b
    move-exception v0

    move/from16 v63, v9

    goto :goto_57

    :catchall_4c
    move-exception v0

    move/from16 v63, v9

    goto :goto_58

    :catchall_4d
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    :goto_59
    const/16 v25, 0x3

    :goto_5a
    const/16 v33, 0x2e

    goto :goto_5b

    :catchall_4e
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v25, v13

    goto :goto_5a

    :catchall_4f
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    goto :goto_59

    :catchall_50
    move-exception v0

    move/from16 v63, v9

    move/from16 v25, v11

    move/from16 v54, v12

    move/from16 v56, v13

    goto :goto_5a

    .line 47
    :goto_5b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_54

    throw v2

    :cond_54
    throw v0

    :catchall_51
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    goto/16 :goto_54

    :catchall_52
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v25, 0x3

    :goto_5c
    const/16 v27, 0x5

    goto/16 :goto_55

    :catchall_53
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v25, 0x3

    :goto_5d
    const/16 v27, 0x5

    const/16 v33, 0x2e

    goto :goto_5f

    :catchall_54
    move-exception v0

    move/from16 v63, v9

    move/from16 v25, v11

    goto :goto_5e

    :catchall_55
    move-exception v0

    move/from16 v25, v3

    move/from16 v63, v9

    :goto_5e
    move/from16 v54, v12

    move/from16 v56, v13

    goto :goto_5d

    :goto_5f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_55

    throw v2

    :cond_55
    throw v0

    :catchall_56
    move-exception v0

    move/from16 v63, v9

    :goto_60
    move/from16 v54, v12

    move/from16 v56, v13

    goto :goto_5c

    :catchall_57
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v27, 0x5

    const/16 v33, 0x2e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_56

    throw v2

    :cond_56
    throw v0

    :catchall_58
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v27, 0x5

    const/16 v33, 0x2e

    goto :goto_61

    :catchall_59
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v27, 0x5

    :goto_61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_57

    throw v2

    :cond_57
    throw v0

    :catchall_5a
    move-exception v0

    move/from16 v63, v9

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v27, 0x5

    const/16 v33, 0x2e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_58

    throw v2

    :cond_58
    throw v0

    :catchall_5b
    move-exception v0

    move/from16 v63, v9

    :goto_62
    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v27, 0x5

    const/16 v33, 0x2e

    goto :goto_63

    :catchall_5c
    move-exception v0

    move/from16 v63, v9

    move-object/from16 v41, v10

    goto :goto_62

    :goto_63
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_59

    throw v2

    :cond_59
    throw v0
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_3f

    :catchall_5d
    move-exception v0

    move/from16 v63, v9

    move-object/from16 v41, v10

    goto :goto_60

    :goto_64
    :try_start_b4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_5e

    goto :goto_65

    :catchall_5e
    move-exception v0

    :try_start_b5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw v2

    :catchall_5f
    move-exception v0

    goto :goto_69

    :catchall_60
    move-exception v0

    move/from16 v63, v9

    move-object/from16 v41, v10

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v27, 0x5

    goto/16 :goto_1f

    :catchall_61
    move-exception v0

    move/from16 v27, v7

    :goto_66
    move/from16 v63, v9

    move-object/from16 v41, v10

    move/from16 v54, v12

    move/from16 v56, v13

    goto/16 :goto_1f

    :catchall_62
    move-exception v0

    goto :goto_66

    :catchall_63
    move-exception v0

    move/from16 v63, v9

    move-object/from16 v41, v10

    move/from16 v54, v12

    move/from16 v56, v13

    const/16 v33, 0x2e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5a

    throw v2

    :cond_5a
    throw v0

    :catchall_64
    move-exception v0

    move/from16 v63, v9

    move-object/from16 v41, v10

    move/from16 v54, v12

    move/from16 v56, v13

    :goto_67
    const/16 v33, 0x2e

    goto :goto_68

    :catchall_65
    move-exception v0

    move/from16 v63, v9

    move-object/from16 v41, v10

    move/from16 v54, v12

    move/from16 v56, v13

    move-object/from16 v6, v28

    goto :goto_67

    :goto_68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5b

    throw v2

    :cond_5b
    throw v0
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_5f

    :catchall_66
    move-exception v0

    move-object/from16 v44, v2

    move-object/from16 v45, v3

    goto/16 :goto_16

    .line 48
    :goto_69
    :try_start_b6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    mul-int/lit8 v4, v63, -0x45

    neg-int v3, v4

    neg-int v3, v3

    const/16 v4, 0x47

    and-int v5, v4, v3

    or-int/2addr v3, v4

    add-int/2addr v5, v3

    const/4 v3, -0x2

    xor-int v4, v3, v63

    and-int v3, v3, v63

    or-int/2addr v3, v4

    not-int v3, v3

    xor-int v4, v63, v2

    and-int v7, v63, v2

    or-int/2addr v4, v7

    not-int v4, v4

    xor-int v7, v3, v4

    and-int/2addr v3, v4

    or-int/2addr v3, v7

    mul-int/lit16 v3, v3, -0x8c

    neg-int v3, v3

    neg-int v3, v3

    and-int v4, v5, v3

    or-int/2addr v3, v5

    add-int/2addr v4, v3

    const/16 v43, 0x1

    xor-int/lit8 v3, v63, 0x1

    and-int/lit8 v5, v63, 0x1

    or-int/2addr v3, v5

    xor-int v5, v3, v2

    and-int/2addr v3, v2

    or-int/2addr v3, v5

    not-int v3, v3

    mul-int/lit8 v3, v3, 0x46

    neg-int v3, v3

    neg-int v3, v3

    not-int v3, v3

    sub-int/2addr v4, v3

    const/16 v43, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v3, -0x2

    xor-int v5, v3, v63

    and-int v3, v3, v63

    or-int/2addr v3, v5

    not-int v3, v3

    move/from16 v9, v63

    not-int v5, v9

    xor-int/lit8 v7, v5, 0x1

    and-int/lit8 v5, v5, 0x1

    or-int/2addr v5, v7

    not-int v5, v5

    or-int/2addr v3, v5

    xor-int/lit8 v5, v2, 0x1

    and-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v5

    not-int v2, v2

    xor-int v5, v3, v2

    and-int/2addr v2, v3

    or-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x46

    neg-int v2, v2

    neg-int v2, v2

    and-int v3, v4, v2

    or-int/2addr v2, v4

    add-int/2addr v3, v2

    const/4 v14, 0x7

    :goto_6a
    if-ge v3, v14, :cond_5d

    aget-boolean v2, v41, v3
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b6} :catch_13

    if-eqz v2, :cond_5c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/16 v38, 0x0

    :try_start_b7
    sput-object v38, Lcom/appsflyer/internal/AFa1hSDK;->i:Ljava/lang/Object;

    sput-object v38, Lcom/appsflyer/internal/AFa1hSDK;->e:Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b7} :catch_13

    const/16 v24, 0x0

    :goto_6b
    const/4 v8, 0x2

    const/16 v11, 0x356

    const/16 v35, 0x1a

    goto/16 :goto_50

    :cond_5c
    const/16 v43, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_5d
    sget v1, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    and-int/lit8 v2, v1, 0x39

    or-int/lit8 v1, v1, 0x39

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    const/16 v36, 0x2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5e

    :try_start_b8
    sget-object v1, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 v2, 0x74

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    const/16 v3, 0x5c

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v4, 0x3f9

    aget-byte v1, v1, v4

    :goto_6c
    int-to-short v1, v1

    invoke-static {v2, v3, v1}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    goto :goto_6d

    :cond_5e
    sget-object v1, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v2, v1, v21

    int-to-byte v2, v2

    aget-byte v3, v1, v22

    int-to-byte v3, v3

    const/16 v4, 0x97

    aget-byte v1, v1, v4
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_b8} :catch_13

    goto :goto_6c

    :goto_6d
    :try_start_b9
    new-array v2, v8, [Ljava/lang/Object;

    const/16 v43, 0x1

    aput-object v0, v2, v43

    const/16 v24, 0x0

    aput-object v1, v2, v24

    sget-object v0, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    aget-byte v1, v0, v40

    int-to-byte v1, v1

    const/16 v35, 0x1a

    aget-byte v0, v0, v35

    int-to-byte v0, v0

    const/16 v11, 0x356

    int-to-short v3, v11

    invoke-static {v1, v0, v3}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v53, v1, v24

    const/16 v43, 0x1

    aput-object v45, v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_67

    :catchall_67
    move-exception v0

    :try_start_ba
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5f

    throw v1

    :cond_5f
    throw v0

    :cond_60
    move-object/from16 v44, v2

    move-object/from16 v45, v3

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v41, v10

    move/from16 v54, v12

    move/from16 v56, v13

    const/4 v14, 0x7

    const/16 v33, 0x2e

    move v9, v4

    move-object v6, v5

    goto/16 :goto_6b

    :goto_6e
    add-int/lit8 v4, v9, 0x1

    move-object v5, v6

    move-object/from16 v10, v41

    move/from16 v15, v43

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v6, v50

    move-object/from16 v7, v51

    move-object/from16 v8, v52

    move-object/from16 v9, v53

    move/from16 v12, v54

    move/from16 v13, v56

    const/16 v28, 0xc

    const/16 v32, 0x6

    goto/16 :goto_12

    :cond_61
    move v9, v4

    move-object/from16 v41, v10

    aget-boolean v0, v41, v9
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_ba} :catch_13

    const/16 v38, 0x0

    :try_start_bb
    throw v38
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bb} :catch_13
    .catchall {:try_start_bb .. :try_end_bb} :catchall_68

    :catchall_68
    move-exception v0

    throw v0

    :cond_62
    :goto_6f
    return-void

    :catchall_69
    move-exception v0

    :try_start_bc
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_63

    throw v1

    :cond_63
    throw v0

    :catchall_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_64

    throw v1

    :cond_64
    throw v0

    :catchall_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_65

    throw v1

    :cond_65
    throw v0
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bc} :catch_13

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_6c
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_66

    throw v1

    :cond_66
    throw v0

    nop

    :array_0
    .array-data 1
        0x26t
        -0x63t
        -0x67t
        -0x6ft
        0x4ct
        -0x9t
        -0x5t
        0x43t
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

.method private static AFAdRevenueData(II)V
    .locals 0

    .line 1
    sget p0, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    .line 2
    .line 3
    add-int/lit8 p0, p0, 0x4d

    .line 4
    .line 5
    rem-int/lit16 p0, p0, 0x80

    .line 6
    .line 7
    sput p0, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    .line 8
    .line 9
    return-void
.end method

.method public static getMonetizationNetwork(I)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    .line 4
    .line 5
    add-int/lit8 v2, v2, 0x55

    .line 6
    .line 7
    rem-int/lit16 v3, v2, 0x80

    .line 8
    .line 9
    sput v3, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    .line 10
    .line 11
    rem-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    sget-object v2, Lcom/appsflyer/internal/AFa1hSDK;->i:Ljava/lang/Object;

    .line 16
    .line 17
    xor-int/lit8 v4, v3, 0x3f

    .line 18
    .line 19
    and-int/lit8 v3, v3, 0x3f

    .line 20
    .line 21
    shl-int/2addr v3, v1

    .line 22
    add-int/2addr v4, v3

    .line 23
    rem-int/lit16 v4, v4, 0x80

    .line 24
    .line 25
    sput v4, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    .line 26
    .line 27
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-array v3, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p0, v3, v0

    .line 34
    .line 35
    sget-object p0, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    .line 36
    .line 37
    const/16 v4, 0x1ff

    .line 38
    .line 39
    aget-byte v4, p0, v4

    .line 40
    .line 41
    int-to-byte v4, v4

    .line 42
    const/16 v5, 0x6b

    .line 43
    .line 44
    aget-byte v5, p0, v5

    .line 45
    .line 46
    int-to-byte v5, v5

    .line 47
    const/16 v6, 0x247

    .line 48
    .line 49
    int-to-short v6, v6

    .line 50
    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sget-object v5, Lcom/appsflyer/internal/AFa1hSDK;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Ljava/lang/ClassLoader;

    .line 57
    .line 58
    invoke-static {v4, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/16 v5, 0x48

    .line 63
    .line 64
    aget-byte v5, p0, v5

    .line 65
    .line 66
    int-to-byte v5, v5

    .line 67
    const/4 v6, 0x4

    .line 68
    aget-byte v6, p0, v6

    .line 69
    .line 70
    int-to-byte v6, v6

    .line 71
    const/4 v7, 0x7

    .line 72
    aget-byte p0, p0, v7

    .line 73
    .line 74
    int-to-short p0, p0

    .line 75
    invoke-static {v5, v6, p0}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-array v1, v1, [Ljava/lang/Class;

    .line 80
    .line 81
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 82
    .line 83
    aput-object v5, v1, v0

    .line 84
    .line 85
    invoke-virtual {v4, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    return p0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    .line 107
    throw v0

    .line 108
    :cond_0
    throw p0

    .line 109
    :cond_1
    const/4 p0, 0x0

    .line 110
    throw p0
.end method

.method public static getRevenue(Ljava/lang/Object;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    sget v2, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    sget-object v3, Lcom/appsflyer/internal/AFa1hSDK;->i:Ljava/lang/Object;

    or-int/lit8 v4, v2, 0x27

    shl-int/2addr v4, v1

    xor-int/lit8 v2, v2, 0x27

    sub-int/2addr v4, v2

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v0

    sget-object p0, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 v4, 0x1ff

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    const/16 v5, 0x6b

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x247

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/AFa1hSDK;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xc

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x55

    aget-byte p0, p0, v6

    int-to-byte p0, p0

    const/16 v6, 0x227

    int-to-short v6, v6

    invoke-static {v5, p0, v6}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v1, v0

    invoke-virtual {v4, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
.end method

.method public static getRevenue(ICI)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 2
    sget v4, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    and-int/lit8 v5, v4, 0x3f

    or-int/lit8 v4, v4, 0x3f

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    rem-int/2addr v5, v3

    if-eqz v5, :cond_1

    sget-object v5, Lcom/appsflyer/internal/AFa1hSDK;->i:Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x2b

    rem-int/lit16 v4, v4, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    :try_start_0
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v0

    sget-object p0, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    const/16 p1, 0x1ff

    aget-byte p1, p0, p1

    int-to-byte p1, p1

    const/16 p2, 0x6b

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    const/16 v6, 0x247

    int-to-short v6, v6

    invoke-static {p1, p2, v6}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/internal/AFa1hSDK;->e:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p1, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0xe

    aget-byte p2, p0, p2

    int-to-byte v6, p2

    const/4 v7, 0x4

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    int-to-short p2, p2

    invoke-static {v6, p0, p2}, Lcom/appsflyer/internal/AFa1hSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p2, v0

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v1

    aput-object v2, p2, v3

    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static init$0()V
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    .line 2
    .line 3
    or-int/lit8 v1, v0, 0x71

    .line 4
    .line 5
    shl-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    xor-int/lit8 v0, v0, 0x71

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    rem-int/lit16 v1, v1, 0x80

    .line 11
    .line 12
    sput v1, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    .line 13
    .line 14
    const/16 v0, 0x4aa

    .line 15
    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    const-string v2, "\u000f\u00d7sN\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd<\u000e\u00f2\u0012\u00fb\u0004\u00fd\u0013\u00be9\u0011\u00f2\u0019\u00ed\u0004\r\u00fc\u00cc\u00191\u00f2\u0019\u00ed\u0004\r\u00fc\u00f6\u0011\u00ff\u0000\r\u00f2\u00ed$\u00f4\u0005\t\u000e\u0008\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008\u001e\u00d33\u00f5\u00f4\n\u000b\u0003\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c8\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00f4\n\u0017\u00ed\u0008\t\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00ee\t\u00ed\u000b\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u000c\u0006\u0007\u00f5\u00ee\u0006\u00f0\u000b5\u0015\u0003\u00f5\u0012\u0002\u00bf7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u00063\u00d8\u0004\u0001\u00042\u00ce\u00073\u00d4\u00030\u00d0\u00056\u00ff\u00cf\u0001\u0012\u00e1\u0016\u0011\u00ff\t\u0000\u00f4\u0005\u00fa\u0018\u00ee\u00d0C\u00fa\u0012\u00bd*\u0000\u00fd\u0001\u0012\u00df\u0014\u0016\u00f7\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5\u0016\u0008(\u00c9D\u00e4\u00f4\n\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5\u0016\u0008\u001e\u00d33\u00f5\u00f4\n\u000b\u0003\u0008\u00fe&\u00f1\u0016\u0014\u00f2\u000c\n\u00f3\u00e2 \u0016\u00f0\u00fb\u0001\n\u00f6\u00ff\u0006\u00f5\u0012\u00e1\u0016\u00ff\u0006\u00ee\"\u0001\u0010\u00ee\u0007\u00ef\u000b\u00fe\u00fa\u000e\u00f4\u0001\u0012\u00d5\u0001\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\t\u00f8\u00f8\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u0006\u00f5\u0006\u00e3$\u0016\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fa\u0018\u00ee\u00d0J\u0002\u00f8\u0006\u00c5O\u00f2\n\u00c1/\u0012\n\u00dc(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0012\u00dd\u001a\u0016\u00ff\u00d4,\t\u0001\n\u00fa\u0018\u00ee\u00d0J\u0002\u00f8\u0006\u00c5O\u00f2\n\u00c1/\u0012\n\u00d8,\t\u0001\n\u0001\u0012\u00e2\u0019\u0014\u00ee\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0018,\u0006\u0007\u00f5\u00ff\u0004\r\u00fc\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00fe\u00f2\u0012\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00f4\u0016\u00f7\u00e7 \r\u0004\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u0001\u0012\u00d2/\u0001\u0006\u0002\u0002\u00fa\u000c\t\u00e3(\u00fa\u00f8\u00ee\u000b\u00eb\u000b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u0003\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008\u001e\u00d3:\u00ee\u00f4\n\u00dcL5\u0015\u0003\u00f5\u0012\u0002\u00bf7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c69\u0003\u0000\u0004\u00d3\u0006\u0004\u0003\u0005\u00fd\u0003\u0007\u00fe\u00060\u0002\u0004\u00ce\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8\u0001\u0012\u00dc\u001b\u0002\u0008\u00fb\u0016\u00f8\t\u0002\u00e3\u001a\u0012\u0006\u00fb\u0006\u00fc\u0001\u0012\u00d25\u0000\u0003\u00f6\u000c\u00f8\u0019\u00d3-\u00ff\u00c8\u0001\u0002\t\u000f/\u00f8\u0004"

    .line 19
    .line 20
    const-string v3, "ISO-8859-1"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lcom/appsflyer/internal/AFa1hSDK;->$$a:[B

    .line 31
    .line 32
    const/16 v0, 0xf6

    .line 33
    .line 34
    sput v0, Lcom/appsflyer/internal/AFa1hSDK;->$$b:I

    .line 35
    .line 36
    sget v0, Lcom/appsflyer/internal/AFa1hSDK;->$10:I

    .line 37
    .line 38
    and-int/lit8 v1, v0, 0x2d

    .line 39
    .line 40
    or-int/lit8 v0, v0, 0x2d

    .line 41
    .line 42
    add-int/2addr v1, v0

    .line 43
    rem-int/lit16 v0, v1, 0x80

    .line 44
    .line 45
    sput v0, Lcom/appsflyer/internal/AFa1hSDK;->$11:I

    .line 46
    .line 47
    rem-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    const/16 v0, 0x15

    .line 52
    .line 53
    div-int/2addr v0, v3

    .line 54
    :cond_0
    return-void
.end method

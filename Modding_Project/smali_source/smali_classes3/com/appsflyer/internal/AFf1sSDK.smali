.class public Lcom/appsflyer/internal/AFf1sSDK;
.super Lcom/appsflyer/internal/AFe1fSDK;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1fSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final registerClient:[Lcom/appsflyer/internal/AFe1pSDK;


# instance fields
.field private final AFInAppEventType:Lcom/appsflyer/internal/AFf1fSDK;

.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1hSDK;

.field protected final component2:Lcom/appsflyer/internal/AFc1qSDK;

.field private final copy:Lcom/appsflyer/internal/AFh1mSDK;

.field private final copydefault:Lcom/appsflyer/internal/AFe1vSDK;

.field private final equals:Lcom/appsflyer/internal/AFc1oSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final hashCode:Lcom/appsflyer/internal/AFf1kSDK;

.field protected final toString:Lcom/appsflyer/internal/AFg1nSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 3
    .line 4
    sget-object v1, Lcom/appsflyer/internal/AFe1pSDK;->component2:Lcom/appsflyer/internal/AFe1pSDK;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/appsflyer/internal/AFe1pSDK;->component4:Lcom/appsflyer/internal/AFe1pSDK;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/appsflyer/internal/AFe1pSDK;->toString:Lcom/appsflyer/internal/AFe1pSDK;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sput-object v0, Lcom/appsflyer/internal/AFf1sSDK;->registerClient:[Lcom/appsflyer/internal/AFe1pSDK;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFh1mSDK;Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFh1mSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFf1sSDK;-><init>(Lcom/appsflyer/internal/AFh1mSDK;Lcom/appsflyer/internal/AFd1zSDK;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFh1mSDK;Lcom/appsflyer/internal/AFd1zSDK;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/appsflyer/internal/AFh1mSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1pSDK;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/appsflyer/internal/AFe1pSDK;

    sget-object v2, Lcom/appsflyer/internal/AFe1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/appsflyer/internal/AFe1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1pSDK;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFe1pSDK;[Lcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFd1zSDK;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1sSDK;->copy:Lcom/appsflyer/internal/AFh1mSDK;

    .line 4
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFe1vSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1sSDK;->copydefault:Lcom/appsflyer/internal/AFe1vSDK;

    .line 5
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1sSDK;->component2:Lcom/appsflyer/internal/AFc1qSDK;

    .line 6
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->component1()Lcom/appsflyer/internal/AFf1kSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1sSDK;->hashCode:Lcom/appsflyer/internal/AFf1kSDK;

    .line 7
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFc1hSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1hSDK;

    .line 8
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1sSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 9
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->component3()Lcom/appsflyer/internal/AFg1nSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1sSDK;->toString:Lcom/appsflyer/internal/AFg1nSDK;

    .line 10
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->afDebugLog()Lcom/appsflyer/internal/AFf1fSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFf1fSDK;

    .line 11
    sget-object p1, Lcom/appsflyer/internal/AFf1sSDK;->registerClient:[Lcom/appsflyer/internal/AFe1pSDK;

    array-length p2, p1

    :goto_0
    if-ge v3, p2, :cond_0

    aget-object p3, p1, v3

    .line 12
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    if-eq v0, p3, :cond_1

    add-int/2addr v3, v4

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1sSDK;->copy:Lcom/appsflyer/internal/AFh1mSDK;

    .line 14
    iget p1, p1, Lcom/appsflyer/internal/AFh1mSDK;->component4:I

    .line 15
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    if-gtz p1, :cond_2

    .line 16
    sget-object p1, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    if-eq p2, p1, :cond_1

    .line 17
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1mSDK;->AFAdRevenueData:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 18
    :cond_2
    sget-object p1, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 19
    iget-object p2, p0, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 21
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

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    const-string v4, "Unexpected error"

    const-string v5, "JSON toString of eventParams map returns null"

    const-string v6, "*Non-printing character*"

    const-string v7, "\\p{C}"

    const-string v8, ""

    iget-object v0, v1, Lcom/appsflyer/internal/AFf1sSDK;->copy:Lcom/appsflyer/internal/AFh1mSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFf1sSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 2
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1sSDK;->copy:Lcom/appsflyer/internal/AFh1mSDK;

    .line 3
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 4
    const-string v9, "meta"

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1sSDK;->hashCode:Lcom/appsflyer/internal/AFf1kSDK;

    .line 6
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1kSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1hSDK;

    .line 7
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1hSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1vSDK;

    .line 8
    iget-object v0, v0, Lcom/appsflyer/internal/AFi1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;

    .line 9
    iget-object v0, v0, Lcom/appsflyer/internal/AFi1zSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1uSDK;

    .line 10
    iget-wide v10, v0, Lcom/appsflyer/internal/AFi1uSDK;->getMonetizationNetwork:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 11
    :goto_0
    invoke-static {v10, v11}, Lcom/appsflyer/internal/AFh1mSDK;->getRevenue(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1sSDK;->copy:Lcom/appsflyer/internal/AFh1mSDK;

    .line 13
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 14
    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1fSDK;->component4:Lcom/appsflyer/internal/AFd1nSDK;

    iget-object v9, v1, Lcom/appsflyer/internal/AFf1sSDK;->copy:Lcom/appsflyer/internal/AFh1mSDK;

    iget-object v10, v1, Lcom/appsflyer/internal/AFf1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1hSDK;

    move-object/from16 v11, p1

    invoke-virtual {v0, v9, v11, v10}, Lcom/appsflyer/internal/AFd1nSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;Ljava/lang/String;Lcom/appsflyer/internal/AFc1hSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object v9

    .line 16
    iget-object v0, v1, Lcom/appsflyer/internal/AFf1sSDK;->copy:Lcom/appsflyer/internal/AFh1mSDK;

    .line 17
    iget-object v10, v0, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 18
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v10}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 19
    :try_start_2
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v13, :cond_1

    .line 20
    :try_start_3
    invoke-virtual {v13, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    :goto_2
    const/4 v13, 0x0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_3
    const/4 v13, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v12, 0x0

    goto :goto_2

    :catch_3
    move-exception v0

    const/4 v12, 0x0

    goto :goto_3

    .line 22
    :goto_4
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v2, v3, v4, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v8

    goto :goto_1

    .line 23
    :goto_5
    sget-object v14, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v15, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v11, "JSONObject return null String object. Trying to create AFJsonObject."

    invoke-virtual {v14, v15, v11, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :try_start_4
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v10, v0, v3

    sget-object v10, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    const v11, -0xd7c568e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    goto :goto_6

    :cond_2
    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v14

    rsub-int v14, v14, 0xc6

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    int-to-char v15, v15

    invoke-static {v3, v3, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v16

    move/from16 v17, v3

    add-int/lit8 v3, v16, 0x25

    invoke-static {v14, v15, v3}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v14, "getMonetizationNetwork"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v15, Ljava/util/Map;

    aput-object v15, v2, v17

    invoke-virtual {v3, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    check-cast v14, Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v14, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v3, :cond_3

    .line 25
    :try_start_6
    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v3

    move-object v3, v0

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v13, v3

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v17, v0

    move-object v13, v3

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v13, v3

    goto :goto_b

    .line 26
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    const/4 v2, 0x0

    .line 27
    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    throw v3

    :catchall_6
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v17, v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_b

    :cond_4
    throw v0
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 28
    :goto_8
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v3, v5, v4, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    move-object v3, v8

    goto :goto_c

    .line 29
    :goto_a
    sget-object v14, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v15, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v16, "AFFinalizer: reflection init failed."

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    goto :goto_9

    .line 30
    :goto_b
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v5, "AFJsonObject return null String object."

    invoke-virtual {v3, v4, v5, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_c
    if-nez v13, :cond_5

    goto :goto_d

    :cond_5
    move-object v8, v13

    .line 31
    :goto_d
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 32
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v5, "Payload contains non-printing characters"

    invoke-virtual {v0, v4, v5}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 33
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v12, v0

    goto :goto_e

    :catch_8
    move-exception v0

    .line 34
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v6, "Couldn\'t parse the payload to a json object"

    invoke-virtual {v4, v5, v6, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_6
    move-object v3, v8

    .line 35
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": preparing data: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/appsflyer/internal/AFg1aSDK;->getRevenue(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz v9, :cond_7

    .line 36
    iget-object v0, v9, Lcom/appsflyer/internal/AFd1hSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFd1bSDK;

    .line 37
    iget-object v11, v0, Lcom/appsflyer/internal/AFd1bSDK;->getMediationNetwork:Ljava/lang/String;

    goto :goto_f

    :cond_7
    move-object v11, v2

    .line 38
    :goto_f
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1fSDK;->component3:Lcom/appsflyer/internal/AFd1oSDK;

    invoke-interface {v0, v11, v3}, Lcom/appsflyer/internal/AFd1oSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public AFAdRevenueData(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 8
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1sSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1sSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1sSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1sSDK;->getRevenue(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFf1sSDK;->component1(Lcom/appsflyer/internal/AFh1mSDK;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 44
    :try_start_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "Error while collecting payload params"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 45
    :goto_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->getMediationNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->component1:Lcom/appsflyer/internal/AFf1eSDK;

    .line 47
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 48
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFf1eSDK;->getRevenue(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 49
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->component1:Lcom/appsflyer/internal/AFf1eSDK;

    .line 50
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 51
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1mSDK;

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v3, p1

    goto/16 :goto_6

    .line 52
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->component1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->component1:Lcom/appsflyer/internal/AFf1eSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1eSDK;->getRevenue()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->AFAdRevenueData:Ljava/util/Set;

    .line 55
    sget-object v1, Lcom/appsflyer/internal/AFe1pSDK;->copy:Lcom/appsflyer/internal/AFe1pSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    sget-object v1, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 56
    :goto_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1mSDK;->areAllFieldsValid()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->component2:Lcom/appsflyer/internal/AFc1qSDK;

    const-string v1, "appsFlyerCount"

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData(I)Lcom/appsflyer/internal/AFh1mSDK;

    .line 58
    :cond_4
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->areAllFieldsValid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 60
    invoke-static {v0}, Lcom/appsflyer/internal/AFj1aSDK;->AFAdRevenueData(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 61
    const-string v1, "host"

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1sSDK;->copydefault:Lcom/appsflyer/internal/AFe1vSDK;

    .line 62
    new-instance v3, Lcom/appsflyer/internal/AFe1xSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1vSDK;->AFAdRevenueData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1vSDK;->getCurrencyIso4217Code()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {}, Lcom/appsflyer/internal/AFe1vSDK;->getMediationNetwork()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 64
    sget-object v5, Lcom/appsflyer/internal/AFe1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1tSDK;

    goto :goto_4

    .line 65
    :cond_5
    sget-object v5, Lcom/appsflyer/internal/AFe1tSDK;->getRevenue:Lcom/appsflyer/internal/AFe1tSDK;

    .line 66
    :goto_4
    invoke-direct {v3, v4, v2, v5}, Lcom/appsflyer/internal/AFe1xSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFe1tSDK;)V

    .line 67
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    const-string v4, "name"

    iget-object v5, v3, Lcom/appsflyer/internal/AFe1xSDK;->getMonetizationNetwork:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object v4, v3, Lcom/appsflyer/internal/AFe1xSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1tSDK;

    sget-object v5, Lcom/appsflyer/internal/AFe1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1tSDK;

    if-eq v4, v5, :cond_6

    .line 70
    const-string v5, "method"

    .line 71
    iget-object v4, v4, Lcom/appsflyer/internal/AFe1tSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 72
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_6
    iget-object v4, v3, Lcom/appsflyer/internal/AFe1xSDK;->getRevenue:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    .line 74
    :cond_7
    const-string v4, "prefix"

    iget-object v3, v3, Lcom/appsflyer/internal/AFe1xSDK;->getRevenue:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_8
    :goto_5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_9
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v1, "AF_PREINSTALL_DISABLED"

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 78
    invoke-static {v0}, Lcom/appsflyer/internal/AFj1aSDK;->AFAdRevenueData(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 79
    const-string v1, "preinstall_disabled"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_a
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFf1fSDK;

    .line 81
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 82
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1pSDK;

    move-result-object p1

    .line 83
    invoke-interface {v0, v1, p1}, Lcom/appsflyer/internal/AFf1fSDK;->getCurrencyIso4217Code(Ljava/util/Map;Lcom/appsflyer/internal/AFe1pSDK;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 84
    :goto_6
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "Error while preparing to send event"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    return-void
.end method

.method public component1(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->toString:Lcom/appsflyer/internal/AFg1nSDK;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final component2()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->copy:Lcom/appsflyer/internal/AFh1mSDK;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 4
    .line 5
    return-object v0
.end method

.method public copydefault()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->toString:Lcom/appsflyer/internal/AFg1nSDK;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getMediationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->toString:Lcom/appsflyer/internal/AFg1nSDK;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->getMonetizationNetwork(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getMonetizationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->toString:Lcom/appsflyer/internal/AFg1nSDK;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->getRevenue(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getRevenue(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1sSDK;->toString:Lcom/appsflyer/internal/AFg1nSDK;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFg1nSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

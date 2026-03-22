.class public final Lcom/appsflyer/internal/AFg1pSDK;
.super Lcom/appsflyer/internal/AFe1fSDK;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1fSDK<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final component2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AFKeystoreWrapper:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final copy:Lcom/appsflyer/internal/AFh1xSDK;

.field private final copydefault:Lcom/appsflyer/internal/AFd1nSDK;

.field private final equals:Lcom/appsflyer/internal/AFc1oSDK;

.field private hashCode:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final toString:Lcom/appsflyer/internal/AFc1qSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "playstore"

    .line 2
    .line 3
    const-string v1, "googleplaystore"

    .line 4
    .line 5
    const-string v2, "googleplay"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/appsflyer/internal/AFg1pSDK;->component2:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 4
    .param p1    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFe1pSDK;->copydefault:Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 5
    .line 6
    sget-object v2, Lcom/appsflyer/internal/AFe1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const-string v2, "GCD-FETCH"

    .line 12
    .line 13
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFe1pSDK;[Lcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFd1zSDK;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->getRevenue()Lcom/appsflyer/internal/AFd1nSDK;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1pSDK;->copydefault:Lcom/appsflyer/internal/AFd1nSDK;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1pSDK;->toString:Lcom/appsflyer/internal/AFc1qSDK;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1xSDK;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1pSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1pSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 39
    .line 40
    sget-object p1, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    sget-object p1, Lcom/appsflyer/internal/AFe1pSDK;->copy:Lcom/appsflyer/internal/AFe1pSDK;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Ljava/util/Set;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final AFAdRevenueData(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 4
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1pSDK;->toString:Lcom/appsflyer/internal/AFc1qSDK;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1pSDK;->equals:Lcom/appsflyer/internal/AFc1oSDK;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1oSDK;->component3()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFa1ySDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFc1qSDK;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    sget-object v1, Lcom/appsflyer/internal/AFg1pSDK;->component2:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const-string v1, "-"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v1, "[GCD] AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    aput-object v0, v2, v3

    .line 55
    .line 56
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    const-string v0, ""

    .line 64
    .line 65
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1pSDK;->copydefault:Lcom/appsflyer/internal/AFd1nSDK;

    .line 66
    .line 67
    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "[GCD-B01] URL: "

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p1, Lcom/appsflyer/internal/AFd1hSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFd1bSDK;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1bSDK;->getMediationNetwork:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object p1
.end method

.method public final component2()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final copydefault()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getCurrencyIso4217Code()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1fSDK;->getCurrencyIso4217Code()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1pSDK;->hashCode:Ljava/util/Map;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1pSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->getCurrencyIso4217Code(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lcom/appsflyer/internal/AFg1oSDK;->getRevenue(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string v0, "Unknown error"

    .line 27
    .line 28
    invoke-static {v0}, Lcom/appsflyer/internal/AFg1oSDK;->getRevenue(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getRevenue()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "is_first_launch"

    .line 4
    .line 5
    const-string v3, "af_channel"

    .line 6
    .line 7
    const-string v4, "af_siteid"

    .line 8
    .line 9
    const-string v5, "[GCD-A03] Server retrieving attempt finished"

    .line 10
    .line 11
    iget-object v6, p0, Lcom/appsflyer/internal/AFe1fSDK;->component1:Lcom/appsflyer/internal/AFf1eSDK;

    .line 12
    .line 13
    invoke-virtual {v6}, Lcom/appsflyer/internal/AFf1eSDK;->getCurrencyIso4217Code()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-nez v6, :cond_f

    .line 18
    .line 19
    sget-object v6, Lcom/appsflyer/internal/AFe1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;

    .line 20
    .line 21
    move v7, v0

    .line 22
    :goto_0
    const/4 v8, 0x2

    .line 23
    if-gt v7, v8, :cond_e

    .line 24
    .line 25
    if-lt v7, v8, :cond_0

    .line 26
    .line 27
    move v6, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v6, v0

    .line 30
    :goto_1
    iget-object v8, p0, Lcom/appsflyer/internal/AFg1pSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    iput-wide v9, v8, Lcom/appsflyer/internal/AFh1xSDK;->toString:J

    .line 37
    .line 38
    :try_start_0
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1fSDK;->getRevenue()Lcom/appsflyer/internal/AFe1uSDK;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    iget-object v9, p0, Lcom/appsflyer/internal/AFe1fSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1wSDK;
    :try_end_0
    .catch Lcom/appsflyer/internal/AFe1nSDK; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    if-nez v9, :cond_2

    .line 45
    .line 46
    :cond_1
    iget-object v6, p0, Lcom/appsflyer/internal/AFg1pSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    .line 47
    .line 48
    invoke-virtual {v6, v7}, Lcom/appsflyer/internal/AFh1xSDK;->getMonetizationNetwork(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFe1wSDK;->getStatusCode()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    const/16 v11, 0x193

    .line 60
    .line 61
    if-eq v10, v11, :cond_4

    .line 62
    .line 63
    const/16 v11, 0x1f4

    .line 64
    .line 65
    if-lt v10, v11, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v11, v0

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_2
    move v11, v1

    .line 71
    :goto_3
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFe1wSDK;->isSuccessful()Z

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const/16 v13, 0x194

    .line 76
    .line 77
    if-nez v12, :cond_7

    .line 78
    .line 79
    if-ne v10, v13, :cond_5

    .line 80
    .line 81
    goto :goto_7

    .line 82
    :cond_5
    if-nez v6, :cond_6

    .line 83
    .line 84
    if-nez v11, :cond_1

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :goto_4
    move-object v6, v8

    .line 88
    goto/16 :goto_a

    .line 89
    .line 90
    :cond_6
    :goto_5
    const-string v8, "Error connection to server: "

    .line 91
    .line 92
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    iput-object v8, p0, Lcom/appsflyer/internal/AFg1pSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 101
    .line 102
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;
    :try_end_1
    .catch Lcom/appsflyer/internal/AFe1nSDK; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    :goto_6
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1pSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    .line 105
    .line 106
    invoke-virtual {v1, v7}, Lcom/appsflyer/internal/AFh1xSDK;->getMonetizationNetwork(I)V

    .line 107
    .line 108
    .line 109
    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto/16 :goto_c

    .line 115
    .line 116
    :catch_0
    move-exception v8

    .line 117
    goto/16 :goto_9

    .line 118
    .line 119
    :catch_1
    move-exception v0

    .line 120
    goto/16 :goto_b

    .line 121
    .line 122
    :cond_7
    :goto_7
    :try_start_2
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFe1wSDK;->getBody()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    check-cast v8, Ljava/util/Map;

    .line 127
    .line 128
    invoke-virtual {v9}, Lcom/appsflyer/internal/AFe1wSDK;->getStatusCode()I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    const-string v10, "iscache"

    .line 133
    .line 134
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    check-cast v10, Ljava/lang/Boolean;

    .line 139
    .line 140
    if-ne v9, v13, :cond_8

    .line 141
    .line 142
    const-string v9, "error_reason"

    .line 143
    .line 144
    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    const-string v9, "status_code"

    .line 148
    .line 149
    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string v9, "af_status"

    .line 153
    .line 154
    const-string v11, "Organic"

    .line 155
    .line 156
    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const-string v9, "af_message"

    .line 160
    .line 161
    const-string v11, "organic install"

    .line 162
    .line 163
    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_8
    if-eqz v10, :cond_9

    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-nez v9, :cond_9

    .line 173
    .line 174
    iget-object v9, p0, Lcom/appsflyer/internal/AFg1pSDK;->toString:Lcom/appsflyer/internal/AFc1qSDK;

    .line 175
    .line 176
    const-string v10, "appsflyerConversionDataCacheExpiration"

    .line 177
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    .line 180
    .line 181
    move-result-wide v11

    .line 182
    invoke-interface {v9, v10, v11, v12}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;J)V

    .line 183
    .line 184
    .line 185
    :cond_9
    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-eqz v9, :cond_b

    .line 190
    .line 191
    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-eqz v9, :cond_a

    .line 196
    .line 197
    new-instance v9, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v10, "[Invite] Detected App-Invite via channel: "

    .line 200
    .line 201
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    invoke-static {v9}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_a
    const-string v9, "[CrossPromotion] App was installed via %s\'s Cross Promotion"

    .line 220
    .line 221
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    new-array v11, v1, [Ljava/lang/Object;

    .line 226
    .line 227
    aput-object v10, v11, v0

    .line 228
    .line 229
    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    invoke-static {v9}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_b
    :goto_8
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    new-instance v9, Lorg/json/JSONObject;

    .line 242
    .line 243
    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    iget-object v10, p0, Lcom/appsflyer/internal/AFg1pSDK;->toString:Lcom/appsflyer/internal/AFc1qSDK;

    .line 251
    .line 252
    const-string v11, "attributionId"

    .line 253
    .line 254
    invoke-interface {v10, v11, v9}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v9, p0, Lcom/appsflyer/internal/AFg1pSDK;->toString:Lcom/appsflyer/internal/AFc1qSDK;

    .line 258
    .line 259
    const-string v10, "sixtyDayConversionData"

    .line 260
    .line 261
    invoke-interface {v9, v10, v0}, Lcom/appsflyer/internal/AFc1qSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-nez v9, :cond_c

    .line 266
    .line 267
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 268
    .line 269
    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    :cond_c
    iput-object v8, p0, Lcom/appsflyer/internal/AFg1pSDK;->hashCode:Ljava/util/Map;

    .line 273
    .line 274
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;
    :try_end_2
    .catch Lcom/appsflyer/internal/AFe1nSDK; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .line 276
    goto/16 :goto_6

    .line 277
    .line 278
    :goto_9
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v10, "[GCD] Error: "

    .line 281
    .line 282
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    invoke-static {v9, v8, v0, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 297
    .line 298
    .line 299
    sget-object v9, Lcom/appsflyer/internal/AFe1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    .line 301
    if-nez v6, :cond_d

    .line 302
    .line 303
    iget-object v6, p0, Lcom/appsflyer/internal/AFg1pSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    .line 304
    .line 305
    invoke-virtual {v6, v7}, Lcom/appsflyer/internal/AFh1xSDK;->getMonetizationNetwork(I)V

    .line 306
    .line 307
    .line 308
    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    move-object v6, v9

    .line 312
    :goto_a
    add-int/2addr v7, v1

    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_d
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1pSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 320
    .line 321
    throw v8

    .line 322
    :goto_b
    const-string v1, "[GCD-E05] AppsFlyer dev key is missing"

    .line 323
    .line 324
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string v1, "AppsFlyer dev key is missing"

    .line 328
    .line 329
    iput-object v1, p0, Lcom/appsflyer/internal/AFg1pSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 330
    .line 331
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    :goto_c
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1pSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    .line 333
    .line 334
    invoke-virtual {v1, v7}, Lcom/appsflyer/internal/AFh1xSDK;->getMonetizationNetwork(I)V

    .line 335
    .line 336
    .line 337
    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v0

    .line 341
    :cond_e
    return-object v6

    .line 342
    :cond_f
    const-string v0, "[GCD-E03] \'isStopTracking\' enabled"

    .line 343
    .line 344
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    const-string v0, "\'isStopTracking\' enabled"

    .line 348
    .line 349
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1pSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 350
    .line 351
    new-instance v0, Lcom/appsflyer/internal/AFe1iSDK;

    .line 352
    .line 353
    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1iSDK;-><init>()V

    .line 354
    .line 355
    .line 356
    throw v0
.end method

.class public final Lcom/appsflyer/internal/AFb1zSDK;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/appsflyer/internal/AFa1cSDK;


# instance fields
.field private AFAdRevenueData:Z

.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field getRevenue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1hSDK;)V
    .locals 0
    .param p1    # Lcom/appsflyer/internal/AFc1hSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1zSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;

    .line 5
    .line 6
    return-void
.end method

.method private getCurrencyIso4217Code()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1zSDK;->AFAdRevenueData:Z

    return v0
.end method


# virtual methods
.method public final AFAdRevenueData()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1zSDK;->getCurrencyIso4217Code()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1zSDK;->getRevenue:Ljava/util/Map;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final getCurrencyIso4217Code(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFb1zSDK;->AFAdRevenueData:Z

    return-void
.end method

.method public final getMediationNetwork()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1zSDK;->getRevenue:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMonetizationNetwork()V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-class v4, Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1zSDK;->getCurrencyIso4217Code()Z

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v5, p0, Lcom/appsflyer/internal/AFb1zSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1hSDK;

    .line 15
    .line 16
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 17
    .line 18
    if-nez v5, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v6, p0, Lcom/appsflyer/internal/AFb1zSDK;->getRevenue:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    new-instance v8, Lcom/appsflyer/internal/AFb1zSDK$AFa1zSDK;

    .line 33
    .line 34
    invoke-direct {v8, p0, v6, v7}, Lcom/appsflyer/internal/AFb1zSDK$AFa1zSDK;-><init>(Lcom/appsflyer/internal/AFb1zSDK;J)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    const-class v6, Lcom/facebook/FacebookSdk;

    .line 38
    .line 39
    sget-object v7, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    .line 40
    .line 41
    const-string v7, "sdkInitialize"

    .line 42
    .line 43
    new-array v9, v3, [Ljava/lang/Class;

    .line 44
    .line 45
    aput-object v4, v9, v2

    .line 46
    .line 47
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    new-array v7, v3, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v5, v7, v2

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    invoke-virtual {v6, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-class v6, Lcom/facebook/applinks/AppLinkData;

    .line 60
    .line 61
    sget-object v7, Lcom/facebook/applinks/AppLinkData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 62
    .line 63
    const-class v7, Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .line 64
    .line 65
    const-string v10, "fetchDeferredAppLinkData"

    .line 66
    .line 67
    new-array v11, v1, [Ljava/lang/Class;

    .line 68
    .line 69
    aput-object v4, v11, v2

    .line 70
    .line 71
    const-class v4, Ljava/lang/String;

    .line 72
    .line 73
    aput-object v4, v11, v3

    .line 74
    .line 75
    aput-object v7, v11, v0

    .line 76
    .line 77
    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-instance v10, Lcom/appsflyer/internal/AFa1bSDK$5;

    .line 82
    .line 83
    invoke-direct {v10, v6, v8}, Lcom/appsflyer/internal/AFa1bSDK$5;-><init>(Ljava/lang/Class;Lcom/appsflyer/internal/AFa1bSDK$AFa1uSDK;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    new-array v11, v3, [Ljava/lang/Class;

    .line 91
    .line 92
    aput-object v7, v11, v2

    .line 93
    .line 94
    invoke-static {v6, v11, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const-string v10, "facebook_app_id"

    .line 103
    .line 104
    const-string v11, "string"

    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-virtual {v7, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_2

    .line 123
    .line 124
    const-string v0, "Facebook app id not defined in resources"

    .line 125
    .line 126
    invoke-interface {v8, v0}, Lcom/appsflyer/internal/AFa1bSDK$AFa1uSDK;->getRevenue(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    goto :goto_1

    .line 132
    :catch_1
    move-exception v0

    .line 133
    goto :goto_2

    .line 134
    :catch_2
    move-exception v0

    .line 135
    goto :goto_3

    .line 136
    :catch_3
    move-exception v0

    .line 137
    goto :goto_4

    .line 138
    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object v5, v1, v2

    .line 141
    .line 142
    aput-object v7, v1, v3

    .line 143
    .line 144
    aput-object v6, v1, v0

    .line 145
    .line 146
    invoke-virtual {v4, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :goto_1
    const-string v1, "FB illegal access"

    .line 151
    .line 152
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v8, v0}, Lcom/appsflyer/internal/AFa1bSDK$AFa1uSDK;->getRevenue(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :goto_2
    const-string v1, "FB class missing error"

    .line 164
    .line 165
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v8, v0}, Lcom/appsflyer/internal/AFa1bSDK$AFa1uSDK;->getRevenue(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :goto_3
    const-string v1, "FB invocation error"

    .line 177
    .line 178
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v8, v0}, Lcom/appsflyer/internal/AFa1bSDK$AFa1uSDK;->getRevenue(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :goto_4
    const-string v1, "FB method missing error"

    .line 190
    .line 191
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v8, v0}, Lcom/appsflyer/internal/AFa1bSDK$AFa1uSDK;->getRevenue(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void
.end method

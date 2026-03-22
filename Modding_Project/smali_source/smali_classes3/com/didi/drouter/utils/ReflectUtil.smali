.class public Lcom/didi/drouter/utils/ReflectUtil;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Byte;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-class v0, Ljava/lang/Short;

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const-class v0, Ljava/lang/Integer;

    .line 16
    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const-class v0, Ljava/lang/Long;

    .line 23
    .line 24
    if-ne p0, v0, :cond_3

    .line 25
    .line 26
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const-class v0, Ljava/lang/Float;

    .line 30
    .line 31
    if-ne p0, v0, :cond_4

    .line 32
    .line 33
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    const-class v0, Ljava/lang/Double;

    .line 37
    .line 38
    if-ne p0, v0, :cond_5

    .line 39
    .line 40
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    const-class v0, Ljava/lang/Character;

    .line 44
    .line 45
    if-ne p0, v0, :cond_6

    .line 46
    .line 47
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_6
    const-class v0, Ljava/lang/Boolean;

    .line 51
    .line 52
    if-ne p0, v0, :cond_7

    .line 53
    .line 54
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    :cond_7
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 6
    .param p0    # [Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    move v0, v2

    .line 8
    :goto_0
    array-length v1, p0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ge v0, v1, :cond_6

    .line 11
    .line 12
    aget-object v1, p0, v0

    .line 13
    .line 14
    aget-object v4, p1, v0

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v4, 0x0

    .line 24
    :goto_1
    if-nez v4, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    xor-int/2addr v1, v3

    .line 31
    goto :goto_3

    .line 32
    :cond_2
    if-eq v1, v4, :cond_4

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_4

    .line 39
    .line 40
    invoke-static {v1}, Lcom/didi/drouter/utils/ReflectUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v4}, Lcom/didi/drouter/utils/ReflectUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-ne v1, v4, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move v3, v2

    .line 52
    :cond_4
    :goto_2
    move v1, v3

    .line 53
    :goto_3
    if-nez v1, :cond_5

    .line 54
    .line 55
    return v2

    .line 56
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_6
    return v3
.end method

.method public static varargs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object v3, p1, v1

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-string v5, "Reflect to create object \"%s\" with %s constructor params"

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    array-length v7, p1

    .line 22
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    new-array v8, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v6, v8, v1

    .line 29
    .line 30
    aput-object v7, v8, v2

    .line 31
    .line 32
    invoke-virtual {v4, v5, v8}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    array-length v4, p1

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    array-length v5, v4

    .line 50
    move v6, v1

    .line 51
    :goto_0
    if-ge v6, v5, :cond_3

    .line 52
    .line 53
    aget-object v7, v4, v6

    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-static {v8, p1}, Lcom/didi/drouter/utils/ReflectUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_2
    add-int/2addr v6, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v4, "Reflect \"%s\" getInstance no match and return \"null\""

    .line 77
    .line 78
    new-array v5, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object p0, v5, v1

    .line 81
    .line 82
    invoke-virtual {p1, v4, v5}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_1
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string v5, "Reflect \"%s\" getInstance Exception: %s"

    .line 91
    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object p0, v0, v1

    .line 95
    .line 96
    aput-object p1, v0, v2

    .line 97
    .line 98
    invoke-virtual {v4, v5, v0}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_2
    return-object v3
.end method

.class Lcom/didi/drouter/router/RouterLoader;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/drouter/router/RouterLoader$RouterComparator;
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;


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

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;ZII)Lcom/didi/drouter/router/Request;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move v0, p2

    .line 6
    :goto_0
    iput v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/router/Request;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 23
    .line 24
    iput-object v0, p1, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 27
    .line 28
    iput-object v0, p1, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 31
    .line 32
    iput-object v0, p1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 35
    .line 36
    iput-object v0, p1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/api/Strategy;

    .line 39
    .line 40
    iput-object v0, p1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/api/Strategy;

    .line 41
    .line 42
    iget-wide v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 43
    .line 44
    iput-wide v0, p1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, "_"

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iput-object p0, p1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 71
    .line 72
    iput p2, p1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_1
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/RouterCallback;)Lcom/didi/drouter/router/RouterLoader;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/didi/drouter/router/RouterLoader;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/didi/drouter/router/RouterLoader;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

    .line 9
    .line 10
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/RouterCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/Request;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 6

    .line 1
    const-class v0, Lcom/didi/drouter/router/IRequestProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Lcom/didi/drouter/service/ServiceLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/didi/drouter/service/ServiceLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/didi/drouter/router/IRequestProxy;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v1, Lcom/didi/drouter/router/Result;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 22
    .line 23
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, -0x1

    .line 28
    iget-object v5, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/didi/drouter/router/Result;-><init>(Lcom/didi/drouter/router/Request;Ljava/util/Collection;ILcom/didi/drouter/router/RouterCallback;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    new-instance v2, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 38
    .line 39
    invoke-direct {v2, p0, v1}, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/didi/drouter/router/RouterLoader;Lcom/didi/drouter/router/Result;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/didi/drouter/router/RouterHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 50
    .line 51
    iget-object v3, v1, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/api/Strategy;

    .line 52
    .line 53
    invoke-interface {v0, v1, v3, v2}, Lcom/didi/drouter/router/IRequestProxy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/api/Strategy;Lcom/didi/drouter/router/IRequestProxy$RemoteCallback;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 2
    .line 3
    new-instance v1, Lcom/didi/drouter/router/RouterLoader$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/didi/drouter/router/RouterLoader$1;-><init>(Lcom/didi/drouter/router/RouterLoader;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/didi/drouter/router/InterceptorHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v4, "Request start -------------------------------------------------------------"

    .line 10
    .line 11
    invoke-virtual {v1, v4, v3}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v3, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object v5, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    move v5, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v5, v2

    .line 37
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x3

    .line 42
    new-array v6, v6, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v3, v6, v2

    .line 45
    .line 46
    aput-object v4, v6, v0

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    aput-object v5, v6, v0

    .line 50
    .line 51
    const-string v0, "primary request \"%s\", router uri \"%s\", need callback \"%s\""

    .line 52
    .line 53
    invoke-virtual {v1, v0, v6}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/api/Strategy;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;
    .locals 17
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/didi/drouter/router/Request;",
            "Lcom/didi/drouter/store/RouterMeta;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v4, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 11
    .line 12
    const-string v5, "router_start_activity_via_intent"

    .line 13
    .line 14
    invoke-virtual {v4, v5}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    instance-of v6, v4, Landroid/content/Intent;

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x1

    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    iget-object v6, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 25
    .line 26
    invoke-virtual {v6}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v4, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v6, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 40
    .line 41
    invoke-virtual {v6}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-array v9, v2, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object v6, v9, v7

    .line 48
    .line 49
    aput-object v4, v9, v8

    .line 50
    .line 51
    const-string v6, "request %s, intent \"%s\""

    .line 52
    .line 53
    invoke-virtual {v5, v6, v9}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v5, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/high16 v6, 0x10000

    .line 67
    .line 68
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_3

    .line 77
    .line 78
    iget-object v6, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 79
    .line 80
    iput v8, v6, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 81
    .line 82
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    iget-object v9, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 87
    .line 88
    invoke-virtual {v9}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 97
    .line 98
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 99
    .line 100
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v10, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 103
    .line 104
    iget v10, v10, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 105
    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    new-array v1, v1, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v9, v1, v7

    .line 113
    .line 114
    aput-object v5, v1, v8

    .line 115
    .line 116
    aput-object v10, v1, v2

    .line 117
    .line 118
    const-string v2, "request \"%s\" find target class \"%s\", type \"%s\""

    .line 119
    .line 120
    invoke-virtual {v6, v2, v1}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 124
    .line 125
    invoke-static {v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/didi/drouter/store/RouterMeta;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2, v4}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Intent;)Lcom/didi/drouter/store/RouterMeta;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    return-object v3

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    move v6, v7

    .line 146
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-eqz v9, :cond_3

    .line 151
    .line 152
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    check-cast v9, Lcom/didi/drouter/store/RouterMeta;

    .line 157
    .line 158
    iget-object v10, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 159
    .line 160
    invoke-virtual {v10}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    iget-object v11, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 165
    .line 166
    iget-object v11, v11, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Bundle;

    .line 167
    .line 168
    invoke-virtual {v9, v10, v11}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwww(Landroid/net/Uri;Landroid/os/Bundle;)Z

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-nez v10, :cond_1

    .line 173
    .line 174
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-virtual {v9}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    iget-object v11, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 183
    .line 184
    invoke-virtual {v11}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    new-array v12, v2, [Ljava/lang/Object;

    .line 189
    .line 190
    aput-object v9, v12, v7

    .line 191
    .line 192
    aput-object v11, v12, v8

    .line 193
    .line 194
    const-string v9, "inject placeholder key value to bundle error, class=%s, uri=%s"

    .line 195
    .line 196
    invoke-virtual {v10, v9, v12}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_1
    iget-object v10, v0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 201
    .line 202
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    if-le v11, v8, :cond_2

    .line 207
    .line 208
    move v11, v8

    .line 209
    goto :goto_1

    .line 210
    :cond_2
    move v11, v7

    .line 211
    :goto_1
    invoke-virtual {v9}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww()I

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    add-int/lit8 v13, v6, 0x1

    .line 216
    .line 217
    invoke-static {v10, v11, v12, v6}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;ZII)Lcom/didi/drouter/router/Request;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    invoke-virtual {v6}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    invoke-virtual {v9}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    invoke-virtual {v9}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww()I

    .line 234
    .line 235
    .line 236
    move-result v14

    .line 237
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    invoke-virtual {v9}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 242
    .line 243
    .line 244
    move-result v15

    .line 245
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v15

    .line 249
    move/from16 v16, v1

    .line 250
    .line 251
    const/4 v1, 0x4

    .line 252
    new-array v1, v1, [Ljava/lang/Object;

    .line 253
    .line 254
    aput-object v11, v1, v7

    .line 255
    .line 256
    aput-object v12, v1, v8

    .line 257
    .line 258
    aput-object v14, v1, v2

    .line 259
    .line 260
    aput-object v15, v1, v16

    .line 261
    .line 262
    const-string v11, "request \"%s\" find target class \"%s\", type \"%s\", priority \"%s\""

    .line 263
    .line 264
    invoke-virtual {v10, v11, v1}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-interface {v3, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move v6, v13

    .line 271
    move/from16 v1, v16

    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_3
    return-object v3
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/didi/drouter/store/RouterMeta;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v3}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 23
    .line 24
    const-string v4, "router_start_activity_with_default_scheme_host"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/didi/drouter/utils/TextUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x1

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    iget-object v4, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    iget-object v3, p0, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lcom/didi/drouter/store/RouterMeta;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-ne v6, v5, :cond_0

    .line 92
    .line 93
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    new-instance v3, Lcom/didi/drouter/router/RouterLoader$RouterComparator;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-direct {v3, v4}, Lcom/didi/drouter/router/RouterLoader$RouterComparator;-><init>(Lcom/didi/drouter/router/RouterLoader$1;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Landroid/util/SparseArray;

    .line 107
    .line 108
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    move v6, v0

    .line 116
    :cond_2
    :goto_1
    const/4 v7, 0x2

    .line 117
    if-ge v6, v4, :cond_9

    .line 118
    .line 119
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    add-int/2addr v6, v5

    .line 124
    check-cast v8, Lcom/didi/drouter/store/RouterMeta;

    .line 125
    .line 126
    invoke-virtual {v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-ne v9, v5, :cond_4

    .line 131
    .line 132
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    if-eqz v7, :cond_3

    .line 137
    .line 138
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    new-array v9, v5, [Ljava/lang/Object;

    .line 147
    .line 148
    aput-object v8, v9, v0

    .line 149
    .line 150
    const-string v8, "warning: request match more than one activity and this \"%s\" will be ignored"

    .line 151
    .line 152
    invoke-virtual {v7, v8, v9}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    invoke-virtual {v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-ne v9, v7, :cond_6

    .line 165
    .line 166
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    if-eqz v7, :cond_5

    .line 171
    .line 172
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    new-array v9, v5, [Ljava/lang/Object;

    .line 181
    .line 182
    aput-object v8, v9, v0

    .line 183
    .line 184
    const-string v8, "warning: request match more than one fragment and this \"%s\" will be ignored"

    .line 185
    .line 186
    invoke-virtual {v7, v8, v9}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_6
    invoke-virtual {v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    const/4 v10, 0x3

    .line 199
    if-ne v9, v10, :cond_8

    .line 200
    .line 201
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    if-eqz v9, :cond_7

    .line 206
    .line 207
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    new-array v9, v5, [Ljava/lang/Object;

    .line 216
    .line 217
    aput-object v8, v9, v0

    .line 218
    .line 219
    const-string v8, "warning: request match more than one view and this \"%s\" will be ignored"

    .line 220
    .line 221
    invoke-virtual {v7, v8, v9}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_7
    invoke-virtual {v3, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_8
    invoke-virtual {v8}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwww()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    const/4 v9, 0x4

    .line 234
    if-ne v7, v9, :cond_2

    .line 235
    .line 236
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_9
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-eqz v2, :cond_a

    .line 245
    .line 246
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    return-object v1

    .line 254
    :cond_a
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-eqz v0, :cond_b

    .line 259
    .line 260
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    return-object v1

    .line 268
    :cond_b
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    if-eqz v0, :cond_c

    .line 273
    .line 274
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    :cond_c
    return-object v1
.end method

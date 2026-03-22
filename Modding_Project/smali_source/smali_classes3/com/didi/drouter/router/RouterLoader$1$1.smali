.class Lcom/didi/drouter/router/RouterLoader$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader$1;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Result;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>(Lcom/didi/drouter/router/RouterLoader$1;Ljava/util/Map$Entry;[ZLcom/didi/drouter/router/Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map$Entry;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Result;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/didi/drouter/router/Request;

    .line 8
    .line 9
    new-instance v1, Lcom/didi/drouter/router/RouterLoader$1$1$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/didi/drouter/router/RouterLoader$1$1$1;-><init>(Lcom/didi/drouter/router/RouterLoader$1$1;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map$Entry;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/didi/drouter/router/Request;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/didi/drouter/store/RouterMeta;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Result;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader$1;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/didi/drouter/router/RouterLoader$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterLoader;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/RouterLoader;)Lcom/didi/drouter/router/RouterCallback;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v0, v1, v2, v3}, Lcom/didi/drouter/router/RouterDispatcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/didi/drouter/router/RouterLoader$1$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/didi/drouter/router/Request;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    iput-object v1, v0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;

    .line 55
    .line 56
    return-void
.end method

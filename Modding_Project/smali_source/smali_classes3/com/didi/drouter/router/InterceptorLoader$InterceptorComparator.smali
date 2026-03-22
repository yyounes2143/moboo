.class Lcom/didi/drouter/router/InterceptorLoader$InterceptorComparator;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/drouter/router/InterceptorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterceptorComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/didi/drouter/router/IRouterInterceptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/didi/drouter/router/InterceptorLoader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/didi/drouter/router/InterceptorLoader$InterceptorComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/IRouterInterceptor;Lcom/didi/drouter/router/IRouterInterceptor;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/didi/drouter/store/RouterMeta;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/didi/drouter/store/RouterMeta;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/didi/drouter/store/RouterMeta;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    sub-int/2addr p2, p1

    .line 38
    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/didi/drouter/router/IRouterInterceptor;

    .line 2
    .line 3
    check-cast p2, Lcom/didi/drouter/router/IRouterInterceptor;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/didi/drouter/router/InterceptorLoader$InterceptorComparator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/IRouterInterceptor;Lcom/didi/drouter/router/IRouterInterceptor;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

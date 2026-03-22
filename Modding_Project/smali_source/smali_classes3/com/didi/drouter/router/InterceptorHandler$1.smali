.class final Lcom/didi/drouter/router/InterceptorHandler$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/drouter/router/InterceptorHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Queue;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterInterceptor;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Ljava/util/Queue;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;Lcom/didi/drouter/router/IRouterInterceptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/router/InterceptorHandler$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Queue;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/didi/drouter/router/InterceptorHandler$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/didi/drouter/router/InterceptorHandler$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/didi/drouter/router/InterceptorHandler$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterInterceptor;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/router/InterceptorHandler$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Queue;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/didi/drouter/router/InterceptorHandler$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/didi/drouter/router/InterceptorHandler$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/didi/drouter/router/InterceptorHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Queue;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

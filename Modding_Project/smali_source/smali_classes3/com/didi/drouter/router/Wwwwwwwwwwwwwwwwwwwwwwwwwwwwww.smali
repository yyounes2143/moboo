.class public final synthetic Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Result;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterMeta;


# direct methods
.method public synthetic constructor <init>(Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterHandler;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterMeta;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Result;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterMeta;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Result;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/RouterCallback;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/drouter/router/RouterDispatcher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterMeta;Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/IRouterHandler;Lcom/didi/drouter/router/Result;Lcom/didi/drouter/router/RouterCallback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

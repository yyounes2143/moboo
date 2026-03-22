.class public Lcom/didi/drouter/store/RouterRegister;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/didi/drouter/store/IRegister;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/ServiceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/drouter/store/ServiceKey<",
            "*>;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterKey;


# direct methods
.method public constructor <init>(Lcom/didi/drouter/store/RouterKey;Lcom/didi/drouter/router/IRouterHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/didi/drouter/store/RouterRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterKey;

    .line 3
    iput-object p2, p0, Lcom/didi/drouter/store/RouterRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

    return-void
.end method

.method public constructor <init>(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/drouter/store/ServiceKey<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/didi/drouter/store/RouterRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/ServiceKey;

    .line 6
    iput-object p2, p0, Lcom/didi/drouter/store/RouterRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public unregister()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/RouterRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterKey;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/didi/drouter/store/RouterRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterHandler;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterKey;Lcom/didi/drouter/router/IRouterHandler;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/didi/drouter/store/RouterRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/ServiceKey;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/didi/drouter/store/RouterRegister;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/ServiceKey;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

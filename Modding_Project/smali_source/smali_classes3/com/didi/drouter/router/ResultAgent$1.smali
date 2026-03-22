.class Lcom/didi/drouter/router/ResultAgent$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/drouter/router/ResultAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;


# direct methods
.method public constructor <init>(Lcom/didi/drouter/router/ResultAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/didi/drouter/router/ResultAgent$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/didi/drouter/router/ResultAgent$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/didi/drouter/router/ResultAgent$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    aput-object p2, v0, v1

    .line 40
    .line 41
    const-string p2, "request \"%s\" lifecycleOwner destroy and complete"

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/didi/drouter/router/ResultAgent$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ResultAgent;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/Request;

    .line 49
    .line 50
    const-string p2, "request_cancel"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

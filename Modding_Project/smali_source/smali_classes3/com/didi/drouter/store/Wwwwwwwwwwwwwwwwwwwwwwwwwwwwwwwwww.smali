.class public final synthetic Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ref/WeakReference;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterKey;


# direct methods
.method public synthetic constructor <init>(Lcom/didi/drouter/store/RouterKey;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterKey;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/store/RouterKey;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/didi/drouter/store/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/didi/drouter/store/RouterStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/store/RouterKey;Ljava/lang/ref/WeakReference;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

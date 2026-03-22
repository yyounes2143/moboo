.class public Lcom/didi/drouter/router/Request;
.super Lcom/didi/drouter/router/DataExtras;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/drouter/router/DataExtras<",
        "Lcom/didi/drouter/router/Request;",
        ">;"
    }
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwww:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/IRouterInterceptor$IInterceptor;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/api/Strategy;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/lifecycle/Lifecycle;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/didi/drouter/router/DataExtras;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 8
    .line 9
    sget-object v0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "router_request_build_uri"

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/didi/drouter/router/Request;
    .locals 1

    .line 1
    new-instance v0, Lcom/didi/drouter/router/Request;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-direct {v0, p0}, Lcom/didi/drouter/router/Request;-><init>(Landroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/didi/drouter/router/RouterCallback;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/didi/drouter/api/DRouter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0, p2}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/RouterCallback;)Lcom/didi/drouter/router/RouterLoader;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/didi/drouter/router/RouterLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/didi/drouter/router/RouterCallback;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)[I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/didi/drouter/router/DataExtras;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

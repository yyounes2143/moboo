.class public Lcom/didi/drouter/router/ActivityCompat2;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/drouter/router/ActivityCompat2$Active;,
        Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;,
        Lcom/didi/drouter/router/ActivityCompat2$HolderFragmentV4;
    }
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/didi/drouter/router/RouterCallback$ActivityCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2$Active;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


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
    sput-object v0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    new-instance v0, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/SparseArray;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/didi/drouter/router/ActivityCompat2$Active;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2$Active;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/didi/drouter/router/ActivityCompat2$Active;Lcom/didi/drouter/router/ActivityCompat2$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/didi/drouter/router/ActivityCompat2;-><init>(Lcom/didi/drouter/router/ActivityCompat2$Active;)V

    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Landroid/content/Intent;ILcom/didi/drouter/router/RouterCallback$ActivityCallback;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/SparseArray;

    .line 8
    .line 9
    new-instance v2, Landroid/util/Pair;

    .line 10
    .line 11
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    instance-of p3, p0, Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    new-instance p3, Lcom/didi/drouter/router/ActivityCompat2$HolderFragmentV4;

    .line 27
    .line 28
    invoke-direct {p3}, Lcom/didi/drouter/router/ActivityCompat2$HolderFragmentV4;-><init>()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p3, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;

    .line 33
    .line 34
    invoke-direct {p3}, Lcom/didi/drouter/router/ActivityCompat2$HolderFragment;-><init>()V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    instance-of v3, p3, Lcom/didi/drouter/router/ActivityCompat2$HolderFragmentV4;

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x2

    .line 52
    new-array v4, v4, [Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    aput-object v2, v4, v5

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aput-object v3, v4, v2

    .line 59
    .line 60
    const-string v2, "HoldFragment start, put %s callback and page | isV4: %s"

    .line 61
    .line 62
    invoke-virtual {v1, v2, v4}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p3}, Lcom/didi/drouter/router/ActivityCompat2$Active;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/router/ActivityCompat2;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput v0, v1, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 70
    .line 71
    invoke-interface {p3, p0, p1, p2}, Lcom/didi/drouter/router/ActivityCompat2$Active;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/ActivityCompat2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/ActivityCompat2;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/ActivityCompat2;Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "router_cb_tag"

    .line 2
    .line 3
    iget v1, p0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 0

    .line 1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "router_cb_tag"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2$Active;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/didi/drouter/router/ActivityCompat2$Active;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/util/Pair;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lcom/didi/drouter/router/RouterCallback$ActivityCallback;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const-string v5, "HoldFragment ActivityResult callback success"

    .line 25
    .line 26
    new-array v6, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v4, v5, v6}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p2, p3}, Lcom/didi/drouter/router/RouterCallback$ActivityCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILandroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object p2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eq p2, p1, :cond_2

    .line 47
    .line 48
    :cond_1
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p2, "HoldFragment onActivityResult warn, for host activity changed, but still callback last host"

    .line 53
    .line 54
    new-array p3, v2, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget p2, p0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const/4 p3, 0x1

    .line 70
    new-array p3, p3, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p2, p3, v2

    .line 73
    .line 74
    const-string p2, "HoldFragment remove %s callback and page"

    .line 75
    .line 76
    invoke-virtual {p1, p2, p3}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget p1, p0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/didi/drouter/router/ActivityCompat2;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/didi/drouter/router/ActivityCompat2$Active;

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/didi/drouter/router/ActivityCompat2$Active;->remove()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

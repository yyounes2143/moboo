.class public Lcom/iab/omid/library/mmadbridge/internal/j;
.super Ljava/lang/Object;


# static fields
.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/internal/j;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/iab/omid/library/mmadbridge/internal/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/iab/omid/library/mmadbridge/internal/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/internal/j;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/internal/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/internal/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/internal/j;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/internal/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZZ)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    move v2, v0

    .line 11
    :goto_1
    iget-boolean v3, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 12
    .line 13
    if-nez v3, :cond_3

    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 16
    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_2
    move v3, v1

    .line 21
    goto :goto_3

    .line 22
    :cond_3
    :goto_2
    move v3, v0

    .line 23
    :goto_3
    if-ne v2, v3, :cond_4

    .line 24
    .line 25
    goto :goto_7

    .line 26
    :cond_4
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/internal/c;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_7

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-nez p2, :cond_6

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_5
    move v4, v1

    .line 60
    goto :goto_6

    .line 61
    :cond_6
    :goto_5
    move v4, v0

    .line 62
    :goto_6
    invoke-virtual {v3, v4}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwww(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_7
    :goto_7
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/iab/omid/library/mmadbridge/internal/j$a;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/iab/omid/library/mmadbridge/internal/j$a;-><init>(Lcom/iab/omid/library/mmadbridge/internal/j;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "keyguard"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/app/KeyguardManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-boolean v1, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZZ)V

    .line 27
    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/internal/j;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 30
    .line 31
    return-void
.end method

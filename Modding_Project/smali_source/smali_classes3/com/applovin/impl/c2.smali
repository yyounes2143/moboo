.class public Lcom/applovin/impl/c2;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/c2$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Landroid/app/Activity;

.field private c:Landroid/app/AlertDialog;

.field private d:Lcom/applovin/impl/c2$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/applovin/impl/c2;->a:Lcom/applovin/impl/sdk/k;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/impl/c2;->b:Landroid/app/Activity;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/c2;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/c2;->b(Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/c2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/c2;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/c2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/c2;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/c2;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/c2;->a(Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/c2;->d:Lcom/applovin/impl/c2$a;

    invoke-interface {v0}, Lcom/applovin/impl/c2$a;->b()V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation build Lcom/sensorsdata/analytics/android/sdk/SensorsDataInstrumented;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/c2;->d:Lcom/applovin/impl/c2$a;

    invoke-interface {v0}, Lcom/applovin/impl/c2$a;->a()V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/c2;->c:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic d()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/c2;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/applovin/impl/c2;->a:Lcom/applovin/impl/sdk/k;

    .line 9
    .line 10
    sget-object v2, Lcom/applovin/impl/l4;->c1:Lcom/applovin/impl/l4;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/applovin/impl/c2;->a:Lcom/applovin/impl/sdk/k;

    .line 23
    .line 24
    sget-object v2, Lcom/applovin/impl/l4;->d1:Lcom/applovin/impl/l4;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/CharSequence;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/applovin/impl/c2;->a:Lcom/applovin/impl/sdk/k;

    .line 42
    .line 43
    sget-object v2, Lcom/applovin/impl/l4;->f1:Lcom/applovin/impl/l4;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/CharSequence;

    .line 50
    .line 51
    new-instance v2, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwwwww;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwwwww;-><init>(Lcom/applovin/impl/c2;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/applovin/impl/c2;->a:Lcom/applovin/impl/sdk/k;

    .line 61
    .line 62
    sget-object v2, Lcom/applovin/impl/l4;->e1:Lcom/applovin/impl/l4;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/CharSequence;

    .line 69
    .line 70
    new-instance v2, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwwww;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwwww;-><init>(Lcom/applovin/impl/c2;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/applovin/impl/c2;->c:Landroid/app/AlertDialog;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/c2;->b:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwww;

    invoke-direct {v1, p0}, Lcom/applovin/impl/Wwwwwwwwwwwwwwwwww;-><init>(Lcom/applovin/impl/c2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/c2$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/c2;->d:Lcom/applovin/impl/c2$a;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/c2;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/c2;->b:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/applovin/impl/Wwwwwwwwwwwwwwwww;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/applovin/impl/Wwwwwwwwwwwwwwwww;-><init>(Lcom/applovin/impl/c2;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

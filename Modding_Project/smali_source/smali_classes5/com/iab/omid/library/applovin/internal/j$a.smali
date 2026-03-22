.class Lcom/iab/omid/library/applovin/internal/j$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/applovin/internal/j;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/applovin/internal/j;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/applovin/internal/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/applovin/internal/j$a;->a:Lcom/iab/omid/library/applovin/internal/j;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/iab/omid/library/applovin/internal/j$a;->a:Lcom/iab/omid/library/applovin/internal/j;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/iab/omid/library/applovin/internal/j;->a(Lcom/iab/omid/library/applovin/internal/j;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/4 v0, 0x1

    .line 23
    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/iab/omid/library/applovin/internal/j;->a(ZZ)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/iab/omid/library/applovin/internal/j$a;->a:Lcom/iab/omid/library/applovin/internal/j;

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/iab/omid/library/applovin/internal/j;->a(Lcom/iab/omid/library/applovin/internal/j;Z)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/iab/omid/library/applovin/internal/j$a;->a:Lcom/iab/omid/library/applovin/internal/j;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/iab/omid/library/applovin/internal/j;->a(Lcom/iab/omid/library/applovin/internal/j;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/4 v0, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

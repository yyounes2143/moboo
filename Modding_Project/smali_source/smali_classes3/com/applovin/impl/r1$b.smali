.class Lcom/applovin/impl/r1$b;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/impl/sdk/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/r1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/r1;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/r1$b;->a:Lcom/applovin/impl/r1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1$b;->a:Lcom/applovin/impl/r1;

    .line 2
    .line 3
    iget v1, v0, Lcom/applovin/impl/r1;->A:I

    .line 4
    .line 5
    sget v2, Lcom/applovin/impl/sdk/i;->h:I

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lcom/applovin/impl/r1;->B:Z

    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->f()Lcom/applovin/impl/adview/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/applovin/impl/r1$b;->a:Lcom/applovin/impl/r1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 27
    .line 28
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/applovin/impl/r1$b;->a:Lcom/applovin/impl/r1;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 37
    .line 38
    const-string v1, "AppLovinFullscreenActivity"

    .line 39
    .line 40
    const-string v2, "Unable to handle ringer mode change: no valid web view."

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p1}, Lcom/applovin/impl/sdk/i;->a(I)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/applovin/impl/r1$b;->a:Lcom/applovin/impl/r1;

    .line 53
    .line 54
    iget v1, v1, Lcom/applovin/impl/r1;->A:I

    .line 55
    .line 56
    invoke-static {v1}, Lcom/applovin/impl/sdk/i;->a(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    const-string v1, "javascript:al_muteSwitchOn();"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v1, 0x2

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    const-string v1, "javascript:al_muteSwitchOff();"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/b;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/r1$b;->a:Lcom/applovin/impl/r1;

    .line 77
    .line 78
    iput p1, v0, Lcom/applovin/impl/r1;->A:I

    .line 79
    .line 80
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/6q;
.super Lcom/facebook/ads/redexgen/X/hD;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Nf;
    }
.end annotation


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/Nf;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/gz;

.field public final A01:Lcom/facebook/ads/redexgen/X/gv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 412
    new-instance v0, Lcom/facebook/ads/redexgen/X/gt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/gt;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6q;->A02:Lcom/facebook/ads/redexgen/X/Nf;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gv;Ljava/lang/String;)V
    .locals 2

    .line 20579
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gv;->A05()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6q;->A02:Lcom/facebook/ads/redexgen/X/Nf;

    .line 20580
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Nf;->A5L(Lcom/facebook/ads/redexgen/X/gv;)Lcom/facebook/ads/redexgen/X/gu;

    move-result-object v0

    .line 20581
    invoke-direct {p0, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/hD;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nn;)V

    .line 20582
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    .line 20583
    return-void
.end method


# virtual methods
.method public final A08()V
    .locals 2

    .line 20584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    if-eqz v0, :cond_0

    .line 20585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gz;->destroy()V

    .line 20586
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    sget-object v0, Lcom/facebook/ads/redexgen/X/NZ;->A03:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->AIc(Lcom/facebook/ads/redexgen/X/NZ;)V

    .line 20587
    return-void
.end method

.method public final A09()V
    .locals 3

    .line 20588
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gz;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/gz;-><init>(Lcom/facebook/ads/redexgen/X/gv;Lcom/facebook/ads/redexgen/X/Ns;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 20589
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    .line 20590
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A0B()Ljava/util/EnumSet;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A07()Ljava/lang/String;

    move-result-object v0

    .line 20591
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A0G(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 20592
    return-void
.end method

.method public final A0D(Z)V
    .locals 1

    .line 20593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A05:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Nm;->AJ3(Z)V

    .line 20594
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/InterstitialAd;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20595
    .local p2, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Na;->A6M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20596
    return-void

    .line 20597
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gv;->A0D(Lcom/facebook/ads/InterstitialAd;)V

    .line 20598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    if-eqz v0, :cond_1

    .line 20599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/gz;->A0G(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 20600
    return-void

    .line 20601
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/gv;->A0K(Ljava/util/EnumSet;)V

    .line 20602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/gv;->A0H(Ljava/lang/String;)V

    .line 20603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 20604
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A0A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20605
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/UA;->A0M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20606
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hD;->A05()V

    .line 20607
    :goto_0
    return-void

    .line 20608
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6q;->A09()V

    goto :goto_0

    .line 20609
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6q;->A09()V

    goto :goto_0
.end method

.method public final A0F(Lcom/facebook/ads/RewardData;)V
    .locals 3

    .line 20610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gv;->A0F(Lcom/facebook/ads/RewardData;)V

    .line 20611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_0

    .line 20612
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20613
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Nu;->A00(Landroid/os/Bundle;Lcom/facebook/ads/RewardData;)Landroid/os/Bundle;

    move-result-object v1

    .line 20614
    const/16 v0, 0x3f5

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Nh;->A0F(ILandroid/os/Bundle;)Z

    .line 20615
    :cond_0
    return-void
.end method

.method public final A0G()Z
    .locals 5

    .line 20616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    if-eqz v0, :cond_0

    .line 20617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gz;->A0H()Z

    move-result v0

    return v0

    .line 20618
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 20619
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XG;->A00()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A00()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 20620
    :goto_0
    return v0

    .line 20621
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0H()Z
    .locals 2

    .line 20622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    if-eqz v0, :cond_0

    .line 20623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gz;->A0I()Z

    move-result v0

    return v0

    .line 20624
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Na;->A6h()Lcom/facebook/ads/redexgen/X/NZ;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/NZ;->A05:Lcom/facebook/ads/redexgen/X/NZ;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 4

    .line 20625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Na;->A6N()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 20626
    return v3

    .line 20627
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gv;->A0D(Lcom/facebook/ads/InterstitialAd;)V

    .line 20628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_1

    .line 20629
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hD;->A0A(I)V

    .line 20630
    const/4 v0, 0x1

    return v0

    .line 20631
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    if-eqz v0, :cond_2

    .line 20632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gz;->A0J()Z

    move-result v0

    return v0

    .line 20633
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6q;->A01:Lcom/facebook/ads/redexgen/X/gv;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gz;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/gz;-><init>(Lcom/facebook/ads/redexgen/X/gv;Lcom/facebook/ads/redexgen/X/Ns;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 20634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6q;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gz;->A0J()Z

    .line 20635
    return v3
.end method

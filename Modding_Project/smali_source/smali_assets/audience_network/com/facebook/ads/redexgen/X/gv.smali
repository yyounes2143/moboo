.class public final Lcom/facebook/ads/redexgen/X/gv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/SN;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/InterstitialAd;

.field public A02:Lcom/facebook/ads/InterstitialAdListener;

.field public A03:Lcom/facebook/ads/RewardData;

.field public A04:Lcom/facebook/ads/RewardedAdListener;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/TL;

.field public final A0A:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V
    .locals 1

    .line 83839
    new-instance v0, Lcom/facebook/ads/redexgen/X/hB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/hB;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/gv;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/TL;)V

    .line 83840
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/TL;)V
    .locals 2

    .line 83841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83842
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 83843
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/gv;->A0B:Ljava/lang/String;

    .line 83844
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/gv;->A01:Lcom/facebook/ads/InterstitialAd;

    .line 83845
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A0C:Ljava/lang/ref/WeakReference;

    .line 83846
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A00:J

    .line 83847
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/dL;->A0N(Lcom/facebook/ads/redexgen/X/SN;)V

    .line 83848
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/gv;->A09:Lcom/facebook/ads/redexgen/X/TL;

    .line 83849
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 83850
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A00:J

    return-wide v0
.end method

.method public final A01()Lcom/facebook/ads/InterstitialAd;
    .locals 1

    .line 83851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A01:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A01:Lcom/facebook/ads/InterstitialAd;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A0C:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAd;

    goto :goto_0
.end method

.method public final A02()Lcom/facebook/ads/InterstitialAdListener;
    .locals 1

    .line 83852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A02:Lcom/facebook/ads/InterstitialAdListener;

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/RewardData;
    .locals 1

    .line 83853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A03:Lcom/facebook/ads/RewardData;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/RewardedAdListener;
    .locals 1

    .line 83854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A04:Lcom/facebook/ads/RewardedAdListener;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/dL;
    .locals 1

    .line 83855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/TL;
    .locals 1

    .line 83856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A09:Lcom/facebook/ads/redexgen/X/TL;

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .locals 1

    .line 83857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A05:Ljava/lang/String;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 1

    .line 83858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A09()Ljava/lang/String;
    .locals 1

    .line 83859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A07:Ljava/lang/String;

    return-object v0
.end method

.method public final A0A()Ljava/lang/String;
    .locals 1

    .line 83860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A0B:Ljava/lang/String;

    return-object v0
.end method

.method public final A0B()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation

    .line 83861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A08:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final A0C(J)V
    .locals 0

    .line 83862
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A00:J

    .line 83863
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/InterstitialAd;)V
    .locals 1

    .line 83864
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gv;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83865
    return-void

    .line 83866
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A01:Lcom/facebook/ads/InterstitialAd;

    .line 83867
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/InterstitialAdListener;)V
    .locals 0

    .line 83868
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A02:Lcom/facebook/ads/InterstitialAdListener;

    .line 83869
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 83870
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A03:Lcom/facebook/ads/RewardData;

    .line 83871
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/RewardedAdListener;)V
    .locals 0

    .line 83872
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A04:Lcom/facebook/ads/RewardedAdListener;

    .line 83873
    return-void
.end method

.method public final A0H(Ljava/lang/String;)V
    .locals 0

    .line 83874
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A05:Ljava/lang/String;

    .line 83875
    return-void
.end method

.method public final A0I(Ljava/lang/String;)V
    .locals 0

    .line 83876
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A06:Ljava/lang/String;

    .line 83877
    return-void
.end method

.method public final A0J(Ljava/lang/String;)V
    .locals 0

    .line 83878
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A07:Ljava/lang/String;

    .line 83879
    return-void
.end method

.method public final A0K(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 83880
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gv;->A08:Ljava/util/EnumSet;

    .line 83881
    return-void
.end method

.method public final bridge synthetic A6c()Lcom/facebook/ads/Ad;
    .locals 1

    .line 83882
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A6g()Lcom/facebook/ads/AdListener;
    .locals 1

    .line 83883
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gv;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    return-object v0
.end method

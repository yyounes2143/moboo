.class public final Lcom/facebook/ads/redexgen/X/D9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dc;


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/E1;

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/os/Handler;

.field public final A08:Lcom/facebook/ads/redexgen/X/DX;

.field public final A09:Lcom/facebook/ads/redexgen/X/DR;

.field public final A0A:Lcom/facebook/ads/redexgen/X/DP;

.field public final A0B:Lcom/facebook/ads/redexgen/X/DM;

.field public final A0C:Lcom/facebook/ads/redexgen/X/DG;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 650
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2ZSu0wXuDbQnaud22BC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QCmSLF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fQxhtf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "E3sU0uCnWEnB3ZcSzOkvj4xNFgaNSXPe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Ye0yKWwaCEsRuR61siA7kBVWrkv2bkox"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1q930HE08Ni0sTckStF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wfAs2pJjw0biCEJKLi3nGPcNksloIp8Y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZBBhRoR6L"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D9;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 33744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33745
    new-instance v0, Lcom/facebook/ads/redexgen/X/3P;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3P;-><init>(Lcom/facebook/ads/redexgen/X/D9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A09:Lcom/facebook/ads/redexgen/X/DR;

    .line 33746
    new-instance v0, Lcom/facebook/ads/redexgen/X/3L;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3L;-><init>(Lcom/facebook/ads/redexgen/X/D9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A08:Lcom/facebook/ads/redexgen/X/DX;

    .line 33747
    new-instance v0, Lcom/facebook/ads/redexgen/X/3K;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3K;-><init>(Lcom/facebook/ads/redexgen/X/D9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0A:Lcom/facebook/ads/redexgen/X/DP;

    .line 33748
    new-instance v0, Lcom/facebook/ads/redexgen/X/3J;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3J;-><init>(Lcom/facebook/ads/redexgen/X/D9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0B:Lcom/facebook/ads/redexgen/X/DM;

    .line 33749
    new-instance v0, Lcom/facebook/ads/redexgen/X/3I;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3I;-><init>(Lcom/facebook/ads/redexgen/X/D9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    .line 33750
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A07:Landroid/os/Handler;

    .line 33751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0D:Ljava/util/List;

    .line 33752
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A00:I

    .line 33753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A02:Z

    .line 33754
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/D9;->A04:Z

    .line 33755
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/D9;->A03:Z

    .line 33756
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/D9;)I
    .locals 0

    .line 33757
    iget p0, p0, Lcom/facebook/ads/redexgen/X/D9;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/D9;)Landroid/os/Handler;
    .locals 0

    .line 33758
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D9;->A07:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/D9;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 33759
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D9;->A01:Lcom/facebook/ads/redexgen/X/E1;

    return-object p0
.end method

.method private A03()V
    .locals 5

    .line 33760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D9;->A07:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A0E:[Ljava/lang/String;

    const-string v1, "Y40dGjVL9Zscw9FMyiKWKh6z3JvZ0T5u"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "hO4VpYUkDoigTR3nwiJ8PFOPPoG0N1QG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/e2;

    .line 33762
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/e2;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/e2;->cancel()V

    .line 33763
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/e2;
    goto :goto_0

    .line 33764
    :cond_1
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/D9;)V
    .locals 0

    .line 33765
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D9;->A03()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/D9;ZZ)V
    .locals 0

    .line 33766
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/D9;->A06(ZZ)V

    return-void
.end method

.method private A06(ZZ)V
    .locals 2

    .line 33767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/e2;

    .line 33768
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/e2;
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/e2;->A42(ZZ)V

    .line 33769
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/e2;
    goto :goto_0

    .line 33770
    :cond_0
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/D9;)Z
    .locals 0

    .line 33771
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/D9;->A05:Z

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/D9;)Z
    .locals 0

    .line 33772
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/D9;->A02:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/D9;)Z
    .locals 0

    .line 33773
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/D9;->A03:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/D9;)Z
    .locals 0

    .line 33774
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/D9;->A04:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/D9;)Z
    .locals 0

    .line 33775
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/D9;->A06:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/e1;)Z
    .locals 0

    .line 33776
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/D9;->A0G(Lcom/facebook/ads/redexgen/X/e1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/D9;Z)Z
    .locals 0

    .line 33777
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/D9;->A05:Z

    return p1
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/D9;Z)Z
    .locals 0

    .line 33778
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/D9;->A02:Z

    return p1
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/D9;Z)Z
    .locals 0

    .line 33779
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/D9;->A06:Z

    return p1
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/e1;)Z
    .locals 2

    .line 33780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/e2;

    .line 33781
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/e2;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/e2;->A93()Lcom/facebook/ads/redexgen/X/e1;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 33782
    const/4 v0, 0x0

    return v0

    .line 33783
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0H()V
    .locals 1

    .line 33784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33785
    return-void
.end method

.method public final A0I()V
    .locals 2

    .line 33786
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A04:Z

    if-eqz v0, :cond_0

    .line 33787
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D9;->A07:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A04:Z

    .line 33789
    :cond_0
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 33790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A06:Z

    .line 33791
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A05:Z

    .line 33792
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/D9;->A06(ZZ)V

    .line 33793
    return-void
.end method

.method public final A0K(I)V
    .locals 0

    .line 33794
    iput p1, p0, Lcom/facebook/ads/redexgen/X/D9;->A00:I

    .line 33795
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/e2;)V
    .locals 1

    .line 33796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33797
    return-void
.end method

.method public final A0M()Z
    .locals 1

    .line 33798
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A04:Z

    return v0
.end method

.method public final AAm(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 4

    .line 33799
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D9;->A01:Lcom/facebook/ads/redexgen/X/E1;

    .line 33800
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A09:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0A:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0B:Lcom/facebook/ads/redexgen/X/DM;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A08:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    .line 33801
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 33802
    return-void
.end method

.method public final AJk(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 4

    .line 33803
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D9;->A03()V

    .line 33804
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A08:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0C:Lcom/facebook/ads/redexgen/X/DG;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0A:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A0B:Lcom/facebook/ads/redexgen/X/DM;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A09:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    .line 33805
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 33806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D9;->A01:Lcom/facebook/ads/redexgen/X/E1;

    .line 33807
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/6p;
.super Lcom/facebook/ads/redexgen/X/hD;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/gw;

.field public final A01:Lcom/facebook/ads/redexgen/X/gm;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 411
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eAQfPHHoyWilLfBxOFaJj1G06pGOxPq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "94FVrmFRVghPmyms9ar5cFWRdDurlkVe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0NqQX4CUu3LD8PHaDMvmRAbh4clEtoM7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DpSRaNejvtQ52XA7I6oeLqqk6ldlwRKU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AVeirdKHq7BiC91JmOFjEM59wAwHTkmS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1THCMBeh6DIPctxeAaB65wntvUu4aFha"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yEsJBiLTEnojRHdtAiiv5fZXbmAhiMSc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YuG6RWvr5fcVmyx3SnaQUPOafyGz2fG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6p;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gm;Ljava/lang/String;)V
    .locals 2

    .line 20511
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/gm;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 20512
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6p;->A00(Lcom/facebook/ads/redexgen/X/gm;)Lcom/facebook/ads/redexgen/X/gl;

    move-result-object v0

    .line 20513
    invoke-direct {p0, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/hD;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nn;)V

    .line 20514
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    .line 20515
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/gm;)Lcom/facebook/ads/redexgen/X/gl;
    .locals 1

    .line 20516
    new-instance v0, Lcom/facebook/ads/redexgen/X/gl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gl;-><init>(Lcom/facebook/ads/redexgen/X/gm;)V

    return-object v0
.end method


# virtual methods
.method public final A08()V
    .locals 2

    .line 20517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_0

    .line 20518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A05:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A5n()V

    .line 20519
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    if-eqz v0, :cond_1

    .line 20520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gw;->destroy()V

    .line 20521
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    sget-object v0, Lcom/facebook/ads/redexgen/X/NZ;->A03:Lcom/facebook/ads/redexgen/X/NZ;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->AIc(Lcom/facebook/ads/redexgen/X/NZ;)V

    .line 20522
    return-void
.end method

.method public final A09()V
    .locals 4

    .line 20523
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gw;

    invoke-direct {v0, v2, p0, v1}, Lcom/facebook/ads/redexgen/X/gw;-><init>(Lcom/facebook/ads/redexgen/X/gm;Lcom/facebook/ads/redexgen/X/Ns;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 20524
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/gm;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/gm;->A02:Lcom/facebook/ads/AdExperienceType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A08:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gw;->A0J(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 20525
    return-void
.end method

.method public final A0D(Z)V
    .locals 1

    .line 20526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A05:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Nm;->AJ3(Z)V

    .line 20527
    return-void
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/gm;
    .locals 1

    .line 20528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/Ad;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .locals 1

    .line 20529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Na;->A6M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20530
    return-void

    .line 20531
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gm;->A02(Lcom/facebook/ads/Ad;)V

    .line 20532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    if-eqz v0, :cond_1

    .line 20533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/gw;->A0J(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    .line 20534
    return-void

    .line 20535
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/gm;->A05:Ljava/lang/String;

    .line 20536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/gm;->A02:Lcom/facebook/ads/AdExperienceType;

    .line 20537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iput-boolean p4, v0, Lcom/facebook/ads/redexgen/X/gm;->A08:Z

    .line 20538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 20539
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A0B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20540
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/UA;->A0M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20541
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hD;->A05()V

    .line 20542
    :goto_0
    return-void

    .line 20543
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6p;->A09()V

    goto :goto_0

    .line 20544
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6p;->A09()V

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/RewardData;)V
    .locals 3

    .line 20545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/gm;->A03:Lcom/facebook/ads/RewardData;

    .line 20546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_0

    .line 20547
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20548
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Nu;->A00(Landroid/os/Bundle;Lcom/facebook/ads/RewardData;)Landroid/os/Bundle;

    move-result-object v1

    .line 20549
    const/16 v0, 0x7d3

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Nh;->A0F(ILandroid/os/Bundle;)Z

    .line 20550
    return-void

    .line 20551
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    if-eqz v0, :cond_1

    .line 20552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gw;->A0I(Lcom/facebook/ads/RewardData;)V

    .line 20553
    :cond_1
    return-void
.end method

.method public final A0H()Z
    .locals 5

    .line 20554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    if-eqz v0, :cond_0

    .line 20555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gw;->A0K()Z

    move-result v0

    return v0

    .line 20556
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/gm;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 20557
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XG;->A00()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/gm;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 20558
    :goto_0
    return v0

    .line 20559
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0I()Z
    .locals 2

    .line 20560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    if-eqz v0, :cond_0

    .line 20561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gw;->A0L()Z

    move-result v0

    return v0

    .line 20562
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

.method public final A0J(Lcom/facebook/ads/Ad;Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z
    .locals 8

    .line 20563
    move-object v0, p2

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rb;

    .line 20564
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A00()I

    move-result v5

    .line 20565
    .local v0, "appOrientation":I
    check-cast p2, Lcom/facebook/ads/redexgen/X/Rb;

    .line 20566
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Rb;->A01()J

    move-result-wide v2

    .line 20567
    .local v1, "previousAdViewTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Na;->A6N()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    .line 20568
    return v7

    .line 20569
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gm;->A02(Lcom/facebook/ads/Ad;)V

    sget-object v4, Lcom/facebook/ads/redexgen/X/6p;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20570
    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/6p;->A02:[Ljava/lang/String;

    const-string v1, "m9KaRECdYgffkM0tCirP5ynC5R03VfN7"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "WVyWW47u948M29zNqYDy5rdzHxlGG88k"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_3

    .line 20571
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/hD;->A0A(I)V

    .line 20572
    const/4 v0, 0x1

    return v0

    .line 20573
    :cond_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    sget-object v4, Lcom/facebook/ads/redexgen/X/6p;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v4, v4, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v4, Lcom/facebook/ads/redexgen/X/6p;->A02:[Ljava/lang/String;

    const-string v1, "SVQKcBS7FHKRAHC3EplGepZBNeGcwFJ"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "IfCkczTPSOxE6DmqSLPQVuiWAstWVdL"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-eqz v6, :cond_4

    .line 20574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-virtual {v0, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/gw;->A0M(IJ)Z

    move-result v0

    return v0

    .line 20575
    :cond_4
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/6p;->A01:Lcom/facebook/ads/redexgen/X/gm;

    .line 20576
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gw;

    invoke-direct {v0, v4, p0, v1}, Lcom/facebook/ads/redexgen/X/gw;-><init>(Lcom/facebook/ads/redexgen/X/gm;Lcom/facebook/ads/redexgen/X/Ns;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 20577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6p;->A00:Lcom/facebook/ads/redexgen/X/gw;

    invoke-virtual {v0, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/gw;->A0M(IJ)Z

    .line 20578
    return v7
.end method

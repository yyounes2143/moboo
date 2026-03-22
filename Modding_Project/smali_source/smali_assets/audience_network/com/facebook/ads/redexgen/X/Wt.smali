.class public final Lcom/facebook/ads/redexgen/X/Wt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/SS;


# static fields
.field public static A07:Lcom/facebook/ads/redexgen/X/Wt;

.field public static A08:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/LL;

.field public A01:Lcom/facebook/ads/redexgen/X/SJ;

.field public A02:Lcom/facebook/ads/redexgen/X/SR;

.field public A03:Lcom/facebook/ads/redexgen/X/Sh;

.field public A04:Lcom/facebook/ads/redexgen/X/TP;

.field public A05:Lcom/facebook/ads/redexgen/X/Ue;

.field public A06:Lcom/facebook/ads/redexgen/X/Bn;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wt;->A07()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Bn;)Lcom/facebook/ads/redexgen/X/Rj;
    .locals 0

    .line 71675
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A1m(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 71676
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 71677
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rk;->A00()Lcom/facebook/ads/redexgen/X/fQ;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/fQ;->A00(Lcom/facebook/ads/redexgen/X/Bn;)Lcom/facebook/ads/redexgen/X/ea;

    move-result-object p0

    return-object p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Sh;
    .locals 2

    .line 71678
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Si;->A00()Lcom/facebook/ads/redexgen/X/cj;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/YJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YJ;-><init>()V

    .line 71679
    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/cj;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Sg;)Lcom/facebook/ads/redexgen/X/Sh;

    move-result-object v0

    .line 71680
    return-object v0
.end method

.method public static declared-synchronized A02()Lcom/facebook/ads/redexgen/X/Wt;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/Wt;

    monitor-enter v1

    .line 71681
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wt;->A07:Lcom/facebook/ads/redexgen/X/Wt;

    if-nez v0, :cond_0

    .line 71682
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Wt;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wt;->A07:Lcom/facebook/ads/redexgen/X/Wt;

    .line 71683
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wt;->A07:Lcom/facebook/ads/redexgen/X/Wt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71684
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/ed;
    .locals 1

    .line 71685
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A1i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71686
    const/4 v0, 0x0

    return-object v0

    .line 71687
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ev;->A01(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/ed;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized A04()Lcom/facebook/ads/redexgen/X/Bn;
    .locals 1

    monitor-enter p0

    .line 71688
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A06:Lcom/facebook/ads/redexgen/X/Bn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Sh;Lcom/facebook/ads/redexgen/X/ed;)Lcom/facebook/ads/redexgen/X/Bn;
    .locals 15

    .line 71689
    move-object v4, p0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/U7;->A2e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v14, p2

    if-eqz v14, :cond_0

    .line 71690
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71691
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 71692
    :cond_1
    new-instance v3, Lcom/facebook/ads/redexgen/X/VR;

    sget-object v7, Lcom/facebook/ads/redexgen/X/V6;->A08:Lcom/facebook/ads/redexgen/X/V6;

    new-instance v9, Lcom/facebook/ads/redexgen/X/VB;

    invoke-direct {v9}, Lcom/facebook/ads/redexgen/X/VB;-><init>()V

    .line 71693
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/U7;->A0N(Landroid/content/Context;)I

    move-result v0

    .line 71694
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X7;->A01(I)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/facebook/ads/redexgen/X/hB;

    invoke-direct {v13}, Lcom/facebook/ads/redexgen/X/hB;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/facebook/ads/redexgen/X/VR;-><init>(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/X1;Lcom/facebook/ads/redexgen/X/V6;ILcom/facebook/ads/redexgen/X/VB;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/TL;)V

    .line 71695
    .local v0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/VR;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fI;->A00()Lcom/facebook/ads/redexgen/X/Bl;

    move-result-object v11

    .line 71696
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/VZ;->A04(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/X8;

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/redexgen/X/X8;-><init>(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/cu;)V

    .line 71697
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fG;->A00()Lcom/facebook/ads/redexgen/X/fF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fF;->A00()Lcom/facebook/ads/redexgen/X/fG;

    move-result-object p2

    .line 71698
    move-object/from16 v13, p1

    move-object v12, v4

    move-object/from16 p1, v1

    invoke-virtual/range {v11 .. v17}, Lcom/facebook/ads/redexgen/X/Bl;->A00(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/Sh;Lcom/facebook/ads/redexgen/X/ed;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fH;Lcom/facebook/ads/redexgen/X/fG;)Lcom/facebook/ads/redexgen/X/Bn;

    move-result-object v0

    .line 71699
    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wt;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wt;->A08:[B

    return-void

    :array_0
    .array-data 1
        0xft
        0xdt
        0xdt
        0x12t
        0xdt
        0x11t
        0xet
        0x3at
        0xdt
        0x1ft
        0x2dt
        0x2dt
        0x23t
        0x29t
        0x28t
        -0x26t
        0x1et
        0x1bt
        0x2et
        0x1bt
        -0x26t
        0x23t
        0x28t
        0x23t
        0x2et
        0x23t
        0x1bt
        0x26t
        0x23t
        0x34t
        0x1ft
        0x1et
        0x1ct
        0xft
        0x1at
        0x19t
        0x1ct
        0x1et
        -0x3t
        0xft
        0x1dt
        0x1dt
        0x13t
        0x19t
        0x18t
        -0x12t
        0xbt
        0x1et
        0xbt
        -0xdt
        0x18t
        0x13t
        0x1et
        0x13t
        0xbt
        0x16t
        0x13t
        0x24t
        0xft
        0xet
    .end array-data
.end method

.method public static A08()V
    .locals 5

    const/16 v2, 0x8

    const/16 v1, 0x18

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A06(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20

    const/16 v1, 0x1c

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71700
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Rj;)V
    .locals 1

    .line 71701
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A1m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 71702
    :cond_0
    return-void

    .line 71703
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rh;->A00()Lcom/facebook/ads/redexgen/X/fU;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/fU;->A00(Lcom/facebook/ads/redexgen/X/Rj;Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/fR;

    .line 71704
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Bn;)V
    .locals 3

    .line 71705
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A0m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 71706
    :cond_0
    return-void

    .line 71707
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/S5;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/S5;-><init>()V

    .line 71708
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->getBidderTokenProviderApi()Lcom/facebook/ads/redexgen/X/R9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R9;->A00()Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/S4;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/S4;-><init>(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/S5;Lcom/facebook/ads/redexgen/X/S6;)V

    .line 71709
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Bn;)V
    .locals 0

    .line 71710
    if-nez p1, :cond_0

    .line 71711
    return-void

    .line 71712
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/UB;->A00(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Bn;)V

    .line 71713
    return-void
.end method


# virtual methods
.method public final declared-synchronized A0C(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 2

    monitor-enter p0

    .line 71714
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A06:Lcom/facebook/ads/redexgen/X/Bn;

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71715
    monitor-exit p0

    return-void

    .line 71716
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Wt;->A01(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Sh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A03:Lcom/facebook/ads/redexgen/X/Sh;

    .line 71717
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Wt;->A03(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/ed;

    move-result-object v1

    .line 71718
    .local v0, "networkModule":Lcom/facebook/ads/redexgen/X/ed;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A03:Lcom/facebook/ads/redexgen/X/Sh;

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Wt;->A05(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Sh;Lcom/facebook/ads/redexgen/X/ed;)Lcom/facebook/ads/redexgen/X/Bn;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A06:Lcom/facebook/ads/redexgen/X/Bn;

    .line 71719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A06:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A00(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Bn;)Lcom/facebook/ads/redexgen/X/Rj;

    move-result-object v0

    .line 71720
    .local v1, "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/Rj;
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A09(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Rj;)V

    .line 71721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A06:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A0A(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Bn;)V

    .line 71722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A06:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Wt;->A0B(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Bn;)V

    .line 71723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A06:Lcom/facebook/ads/redexgen/X/Bn;

    if-eqz v0, :cond_1

    .line 71724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A06:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bn;->A6V()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71725
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/cu;
    :cond_1
    monitor-exit p0

    return-void

    .line 71726
    .end local v0    # "networkModule":Lcom/facebook/ads/redexgen/X/ed;
    .end local v1    # "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/Rj;
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A6f(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/US;
    .locals 1

    .line 71727
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/VG;->A01(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A6w(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/SR;
    .locals 1

    monitor-enter p0

    .line 71728
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A02:Lcom/facebook/ads/redexgen/X/SR;

    if-nez v0, :cond_0

    .line 71729
    new-instance v0, Lcom/facebook/ads/redexgen/X/XI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XI;-><init>(Lcom/facebook/ads/redexgen/X/Wt;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A02:Lcom/facebook/ads/redexgen/X/SR;

    .line 71730
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A02:Lcom/facebook/ads/redexgen/X/SR;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71731
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A78()Lcom/facebook/ads/redexgen/X/SJ;
    .locals 1

    monitor-enter p0

    .line 71732
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A01:Lcom/facebook/ads/redexgen/X/SJ;

    if-nez v0, :cond_0

    .line 71733
    new-instance v0, Lcom/facebook/ads/redexgen/X/di;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/di;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A01:Lcom/facebook/ads/redexgen/X/SJ;

    .line 71734
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A01:Lcom/facebook/ads/redexgen/X/SJ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7d(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Sh;
    .locals 1

    monitor-enter p0

    .line 71736
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A03:Lcom/facebook/ads/redexgen/X/Sh;

    if-nez v0, :cond_0

    .line 71737
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wt;->A01(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Sh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A03:Lcom/facebook/ads/redexgen/X/Sh;

    .line 71738
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A03:Lcom/facebook/ads/redexgen/X/Sh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71739
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7f(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Su;
    .locals 1

    monitor-enter p0

    .line 71740
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zd;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Zd;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7p(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/ST;
    .locals 1

    monitor-enter p0

    .line 71741
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/6K;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/6K;-><init>(Lcom/facebook/ads/redexgen/X/Wt;Lcom/facebook/ads/redexgen/X/SQ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A84(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/LL;
    .locals 2

    monitor-enter p0

    .line 71742
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A13(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71743
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 71744
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/LL;

    if-nez v0, :cond_1

    .line 71745
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LM;->A00()Lcom/facebook/ads/redexgen/X/j7;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/YH;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/YH;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j7;->A00(Lcom/facebook/ads/redexgen/X/LI;)Lcom/facebook/ads/redexgen/X/j6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/LL;

    .line 71746
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Lcom/facebook/ads/redexgen/X/LL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71747
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A8q(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/SV;
    .locals 1

    monitor-enter p0

    .line 71748
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/XN;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/XN;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A8r(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;
    .locals 1

    .line 71749
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SP;->A00()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    .line 71750
    .local v0, "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    if-nez v0, :cond_0

    .line 71751
    new-instance v0, Lcom/facebook/ads/redexgen/X/cu;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/cu;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;)V

    .line 71752
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SP;->A01(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 71753
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized A8s(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Ue;
    .locals 1

    monitor-enter p0

    .line 71754
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A05:Lcom/facebook/ads/redexgen/X/Ue;

    if-nez v0, :cond_0

    .line 71755
    new-instance v0, Lcom/facebook/ads/redexgen/X/VO;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/VO;-><init>(Lcom/facebook/ads/redexgen/X/cu;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A05:Lcom/facebook/ads/redexgen/X/Ue;

    .line 71756
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A05:Lcom/facebook/ads/redexgen/X/Ue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71757
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/cu;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A8y()Lcom/facebook/ads/redexgen/X/TP;
    .locals 1

    monitor-enter p0

    .line 71758
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A04:Lcom/facebook/ads/redexgen/X/TP;

    if-nez v0, :cond_0

    .line 71759
    new-instance v0, Lcom/facebook/ads/redexgen/X/TP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/TP;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A04:Lcom/facebook/ads/redexgen/X/TP;

    .line 71760
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wt;->A08()V

    .line 71761
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wt;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A04:Lcom/facebook/ads/redexgen/X/TP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71762
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic A97()Lcom/facebook/ads/redexgen/X/SW;
    .locals 1

    .line 71763
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wt;->A04()Lcom/facebook/ads/redexgen/X/Bn;

    move-result-object v0

    return-object v0
.end method

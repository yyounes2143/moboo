.class public final Lcom/facebook/ads/redexgen/X/LW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Yd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Yd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1309
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8F1ylXiPLmOJlxHuSB0OfTD8ERnub0Jc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S6BOYeNFrgFu99vNdASrFyo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dJPilyeR7SZ6Rr21hdX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "myhsKKLHgmC4nogMMn1nxIO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jSXY2xjzyKT8sDO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "m4o2VQ2UIP9pfbMg6FrqdCCZlyPN5tpn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ArrKoNW9WxnAbKv8I1vfh8MoVmXkp7wv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MU6Xe0UyfSgNRnTq3TqZG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LW;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LW;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yd;)V
    .locals 0

    .line 50475
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LW;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LW;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0xdt
        0xft
        0x4ct
        0x4t
        0x3t
        0x1t
        0x7t
        0x0t
        0xdt
        0xdt
        0x9t
        0x4ct
        0x3t
        0x6t
        0x11t
        0x4ct
        0x3t
        0x6t
        0x10t
        0x7t
        0x12t
        0xdt
        0x10t
        0x16t
        0xbt
        0xct
        0x5t
        0x4ct
        0x24t
        0x2bt
        0x2ct
        0x2bt
        0x31t
        0x2at
        0x3dt
        0x23t
        0x26t
        0x3dt
        0x30t
        0x27t
        0x32t
        0x2dt
        0x30t
        0x36t
        0x2bt
        0x2ct
        0x25t
        0x3dt
        0x24t
        0x2et
        0x2dt
        0x35t
    .end array-data
.end method


# virtual methods
.method public final A4v()V
    .locals 4

    .line 50476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0A(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0A(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x35

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 50478
    :cond_0
    return-void
.end method

.method public final A4w()V
    .locals 2

    .line 50479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0O()V

    .line 50480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0B(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/Xo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0B(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/Xo;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xo;->AF0(Z)V

    .line 50482
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0H(Lcom/facebook/ads/redexgen/X/Yd;)V

    .line 50483
    return-void
.end method

.method public final A9U()V
    .locals 3

    .line 50484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A08(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v0

    if-nez v0, :cond_1

    .line 50485
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LW;->A4w()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/LW;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_0

    .line 50486
    sget-object v2, Lcom/facebook/ads/redexgen/X/LW;->A02:[Ljava/lang/String;

    const-string v1, "E4Sw3glaT0j7tztglKcmJ4X"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "i6sG1P4DTWmVPFfNkRQLKmp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50487
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A03(Lcom/facebook/ads/redexgen/X/Yd;)I

    .line 50488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A08(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O6;->A02()Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v0

    if-nez v0, :cond_3

    .line 50489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0I(Lcom/facebook/ads/redexgen/X/Yd;)V

    .line 50490
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    .line 50491
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A09(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50492
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    const/16 v1, 0x80

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yd;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 50493
    :cond_2
    return-void

    .line 50494
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A08(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O6;->A02()Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0J(Lcom/facebook/ads/redexgen/X/Yd;Lcom/facebook/ads/redexgen/X/O6;)V

    goto :goto_0
.end method

.method public final AAg()V
    .locals 4

    .line 50495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A04(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50496
    new-instance v3, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    .line 50497
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A09(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    .line 50498
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A04(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0I()Ljava/lang/String;

    move-result-object v0

    .line 50499
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    .line 50500
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0C(Lcom/facebook/ads/redexgen/X/Yd;)Ljava/lang/String;

    move-result-object v0

    .line 50501
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0O(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 50502
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A07(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O5;->A04()V

    .line 50503
    return-void
.end method

.method public final AAh()V
    .locals 4

    .line 50504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0O()V

    .line 50505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0B(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/Xo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0B(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/Xo;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xo;->AF0(Z)V

    .line 50507
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A04(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50508
    new-instance v3, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    .line 50509
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A09(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    .line 50510
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A04(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    .line 50511
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0C(Lcom/facebook/ads/redexgen/X/Yd;)Ljava/lang/String;

    move-result-object v0

    .line 50512
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0O(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 50513
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A07(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O5;->A06()V

    .line 50514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0H(Lcom/facebook/ads/redexgen/X/Yd;)V

    .line 50515
    return-void
.end method

.method public final AEC(Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 5

    .line 50516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A02(Lcom/facebook/ads/redexgen/X/Yd;)I

    .line 50517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Yd;->A06(Lcom/facebook/ads/redexgen/X/Yd;Lcom/facebook/ads/redexgen/X/O4;)Lcom/facebook/ads/redexgen/X/O4;

    .line 50518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A05(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O4;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/O4;->A04:Lcom/facebook/ads/redexgen/X/O4;

    if-ne v1, v0, :cond_0

    .line 50519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A04(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0A()Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v4

    .line 50520
    .local v0, "menuItem":Lcom/facebook/ads/redexgen/X/O6;
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/LW;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/LW;->A02:[Ljava/lang/String;

    const-string v1, "uGU0gkKbqe2rkd9hIKZj6BU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Cw3GzUJKwEhWx9AKZcDfceI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/Yd;->A0J(Lcom/facebook/ads/redexgen/X/Yd;Lcom/facebook/ads/redexgen/X/O6;)V

    .line 50521
    return-void

    .line 50522
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/LW;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/LW;->A02:[Ljava/lang/String;

    const-string v1, "aVWWA7RlXQ4WxwD1lKH3adLgfY6YTeho"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "uW2I9G42iXHj1OU85KkNtz4HKFKkrOfh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Yd;->A04(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0B()Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Yd;->A04(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0B()Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEP(Lcom/facebook/ads/redexgen/X/O6;)V
    .locals 4

    .line 50523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A02(Lcom/facebook/ads/redexgen/X/Yd;)I

    .line 50524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A07(Lcom/facebook/ads/redexgen/X/Yd;)Lcom/facebook/ads/redexgen/X/O5;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O6;->A01()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O5;->A07(I)V

    .line 50525
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O6;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Yd;->A0K(Lcom/facebook/ads/redexgen/X/Yd;Lcom/facebook/ads/redexgen/X/O6;)V

    .line 50527
    :goto_0
    return-void

    .line 50528
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/Yd;

    sget-object v2, Lcom/facebook/ads/redexgen/X/LW;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/LW;->A02:[Ljava/lang/String;

    const-string v1, "wullz3k0Ma2cYDBinBI95xBWIfHYuzlI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wkJ6jlNGXVBBqnzofRVuEUhlZdNAnE5y"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/Yd;->A0J(Lcom/facebook/ads/redexgen/X/Yd;Lcom/facebook/ads/redexgen/X/O6;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

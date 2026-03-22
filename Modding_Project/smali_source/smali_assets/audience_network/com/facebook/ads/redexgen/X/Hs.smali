.class public final Lcom/facebook/ads/redexgen/X/Hs;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hr;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hs;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hr;)V
    .locals 0

    .line 39592
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hs;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

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

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hs;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        -0x20t
        -0x27t
        -0x1ft
        -0x1at
        -0x23t
        -0x24t
        -0x29t
        -0x27t
        -0x24t
        -0x29t
        -0x1ft
        -0x1at
        -0x24t
        -0x23t
        -0x10t
    .end array-data
.end method


# virtual methods
.method public final A03()V
    .locals 5

    .line 39593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A0A:Lcom/facebook/ads/redexgen/X/XH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A0A:Lcom/facebook/ads/redexgen/X/XH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A05()V

    .line 39595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39596
    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    .line 39597
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A0A:Lcom/facebook/ads/redexgen/X/XH;

    .line 39598
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 39599
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 39600
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v4

    .line 39601
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A14(Lcom/facebook/ads/redexgen/X/Hr;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hr;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 39603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A0C:Lcom/facebook/ads/redexgen/X/YY;

    .line 39604
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A8d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 39605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 39606
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 39607
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->A07(Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 39608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3D()V

    .line 39609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A18(Lcom/facebook/ads/redexgen/X/Hr;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 39611
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0t()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 39612
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 39613
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39614
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hr;->A19(Lcom/facebook/ads/redexgen/X/Hr;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hr;->A0B:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:Lcom/facebook/ads/redexgen/X/Hr;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A0C:Lcom/facebook/ads/redexgen/X/YY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A88()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 39616
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

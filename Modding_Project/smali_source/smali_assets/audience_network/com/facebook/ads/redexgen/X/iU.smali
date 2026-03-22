.class public final Lcom/facebook/ads/redexgen/X/iU;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7L;->A0C(ILcom/facebook/ads/redexgen/X/TF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7L;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iU;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7L;)V
    .locals 0

    .line 86423
    .local p0, "this":Lcom/facebook/ads/redexgen/X/iU;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$3;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iU;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

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

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iU;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4et
        0x4dt
        0x42t
        0x42t
        0x49t
        0x5et
    .end array-data
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 86424
    .local p0, "this":Lcom/facebook/ads/redexgen/X/iU;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$3;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A05(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A05(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A05()V

    .line 86426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/iE;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A4I(Z)V

    .line 86427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3D()V

    .line 86428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 86429
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0t()Ljava/lang/String;

    move-result-object v3

    .line 86430
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 86431
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86432
    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 86433
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A06(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 86434
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A05(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 86435
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 86436
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v2

    .line 86437
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A04(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 86438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 86440
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    .line 86441
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 86442
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 86443
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    .line 86444
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->A07(Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 86445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A06(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    .line 86446
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 86447
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iU;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v1

    goto :goto_1

    .line 86448
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

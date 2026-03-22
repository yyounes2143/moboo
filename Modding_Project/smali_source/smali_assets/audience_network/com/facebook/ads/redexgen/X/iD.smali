.class public final Lcom/facebook/ads/redexgen/X/iD;
.super Lcom/facebook/ads/redexgen/X/MR;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/iB;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/US;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iD;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MS;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/iB;)V
    .locals 0

    .line 85958
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/MR;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MS;Lcom/facebook/ads/redexgen/X/eX;)V

    .line 85959
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/iD;->A01:Lcom/facebook/ads/redexgen/X/US;

    .line 85960
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/iD;->A00:Lcom/facebook/ads/redexgen/X/iB;

    .line 85961
    return-void
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iD;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iD;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x46t
        0x45t
        0x4at
        0x4at
        0x41t
        0x56t
    .end array-data
.end method


# virtual methods
.method public final A08(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85962
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iD;->A00:Lcom/facebook/ads/redexgen/X/iB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iD;->A00:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3D()V

    .line 85964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iD;->A00:Lcom/facebook/ads/redexgen/X/iB;

    .line 85965
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0X()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iD;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 85966
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85967
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iD;->A01:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iD;->A00:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 85968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85969
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85970
    .local v0, "placementType":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iD;->A00:Lcom/facebook/ads/redexgen/X/iB;

    .line 85971
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 85972
    .end local v0    # "placementType":Ljava/lang/String;
    :cond_0
    return-void
.end method

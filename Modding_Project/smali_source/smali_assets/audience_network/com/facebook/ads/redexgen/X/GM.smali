.class public final Lcom/facebook/ads/redexgen/X/GM;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4K;->A0k(Lcom/facebook/ads/redexgen/X/3Q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4K;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3Q;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 717
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MrnT4Eks85vPuqQr37JMtu4NfaYgfi6f"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zfkVjNlCcNBydFIcz2mD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Bee43nRREoDmuohWbk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LYOPzNoZy5N5VpEZxT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "78Vp0AX9Eb5UezJBTqKvLg5S66jER"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qnB2IM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ag3pKfa1yi0C6RoVnqVP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pygY9b2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GM;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GM;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 0

    .line 37563
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GM;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GM;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/GM;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/GM;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/GM;->A03:[Ljava/lang/String;

    const-string v1, "zTo8qTO106BkbxhANT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "z1bPe1QyN1GViRGZCE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0xf

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GM;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x7dt
        -0x50t
        -0x5ft
        -0x5ft
        -0x60t
        -0x53t
        -0x5ct
        -0x57t
        -0x5et
        0x5bt
        -0x5ct
        -0x57t
        -0x61t
        -0x60t
        -0x5ft
        -0x5ct
        -0x57t
        -0x5ct
        -0x51t
        -0x60t
        -0x59t
        -0x4ct
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 37564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GM;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0G(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A02:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GM;->A00:Lcom/facebook/ads/redexgen/X/4K;

    .line 37565
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0G(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/GM;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/GM;->A03:[Ljava/lang/String;

    const-string v1, "EIUkH3ntVfUyNEjhHXbRpTHh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/E1;->getCurrentPositionInMillis()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GM;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DY;->A00()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 37566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GM;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0F(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/cT;->AFg(Ljava/lang/String;)V

    .line 37567
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

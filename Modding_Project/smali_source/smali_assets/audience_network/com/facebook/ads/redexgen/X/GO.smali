.class public final Lcom/facebook/ads/redexgen/X/GO;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4K;->A0P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4K;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GO;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 37579
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GO;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xe

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

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x43t
        0x7ct
        0x71t
        0x70t
        0x7at
        0x35t
        0x62t
        0x74t
        0x66t
        0x35t
        0x7bt
        0x70t
        0x63t
        0x70t
        0x67t
        0x35t
        0x65t
        0x67t
        0x70t
        0x65t
        0x74t
        0x67t
        0x70t
        0x71t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 37580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GO;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0x(Lcom/facebook/ads/redexgen/X/4K;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GO;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0F(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GO;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/cT;->AFg(Ljava/lang/String;)V

    .line 37582
    :cond_0
    return-void
.end method

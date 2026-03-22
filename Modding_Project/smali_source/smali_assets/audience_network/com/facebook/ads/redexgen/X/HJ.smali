.class public final Lcom/facebook/ads/redexgen/X/HJ;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4n;->A0Q(Lcom/facebook/ads/redexgen/X/3Q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4n;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3Q;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 754
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vSeS2rx23zUd4am5Wdo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UtlZDzt7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dNEruPHPdkyj182N7GwirLXq8Db2eecB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "b1VGcsOgsecYYY6uN1zNid8VodysKnsR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RqC1uxvv784HDfNbZXUq5U9jCsQW0kUg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5jFX4DLWV5nBObgEbVC73yk5ncCVY3Kv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HJ;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HJ;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4n;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 0

    .line 39332
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HJ;->A00:Lcom/facebook/ads/redexgen/X/4n;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/HJ;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HJ;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x48

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

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HJ;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x33t
        0x4t
        0x17t
        0x17t
        0x14t
        0x3t
        0x18t
        0x1ft
        0x16t
        0x51t
        0x18t
        0x1ft
        0x15t
        0x14t
        0x17t
        0x18t
        0x1ft
        0x18t
        0x5t
        0x14t
        0x1dt
        0x8t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 39333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HJ;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A0A(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A02:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HJ;->A00:Lcom/facebook/ads/redexgen/X/4n;

    .line 39334
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A0A(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getCurrentPositionInMillis()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/HJ;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/HJ;->A03:[Ljava/lang/String;

    const-string v1, "iv52OwD8pgB4ao6bV3eWAeQD9PjHFRbz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HJ;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DY;->A00()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 39335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HJ;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A09(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HJ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/cT;->AFg(Ljava/lang/String;)V

    .line 39336
    :cond_1
    return-void
.end method

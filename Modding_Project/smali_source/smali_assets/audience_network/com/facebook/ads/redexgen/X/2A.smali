.class public final Lcom/facebook/ads/redexgen/X/2A;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 75
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "GJxubYlXsZiu90nLIAtZt0ZPoHJfDn5s"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BS8EJfUuntSU9isaC3nv1ANhy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Gs0aOb6gQMfpDwhZyZjPrCKqfhvLXKwh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iN3iHRJ6T765oBofKZIxuh5bzIdVCLFB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wNf5fiO3vn7igkhJYRlF92Iu10jGyY95"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PRW1z97xqqsLulYYbCVWRoDib"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FY0aCr3Onb0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4J82hMkwk7B8La5ZKR1JgNOMoJvqL0p2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2A;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9409
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2A;->A01:Landroid/util/SparseBooleanArray;

    .line 9410
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/2A;
    .locals 2

    .line 9411
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2A;->A00:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 9412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2A;->A01:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 9413
    return-object p0
.end method

.method public final A01(IZ)Lcom/facebook/ads/redexgen/X/2A;
    .locals 4

    .line 9414
    if-eqz p2, :cond_1

    .line 9415
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2A;->A00(I)Lcom/facebook/ads/redexgen/X/2A;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2A;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2A;->A02:[Ljava/lang/String;

    const-string v1, "oVNjkypXGUiIrzEYrZV4GsKas1KVyN3y"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "tIVTdGxG4MXYUs0uHZXzBbuDNAp7p6hg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 9416
    :cond_1
    return-object p0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/2B;)Lcom/facebook/ads/redexgen/X/2A;
    .locals 2

    .line 9417
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2B;->A00()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 9418
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/2B;->A01(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2A;->A00(I)Lcom/facebook/ads/redexgen/X/2A;

    .line 9419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9420
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public final varargs A03([I)Lcom/facebook/ads/redexgen/X/2A;
    .locals 3

    .line 9421
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 9422
    .local v2, "flag":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2A;->A00(I)Lcom/facebook/ads/redexgen/X/2A;

    .line 9423
    .end local v2    # "flag":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9424
    :cond_0
    return-object p0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/2B;
    .locals 3

    .line 9425
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/2A;->A00:Z

    const/4 v0, 0x1

    xor-int/2addr v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 9426
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2A;->A00:Z

    .line 9427
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2A;->A01:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2B;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/2B;-><init>(Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/29;)V

    return-object v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/8o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/mv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23926
    const v1, 0x3d090

    iput v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A02:I

    .line 23927
    const v0, 0xb71b0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:I

    .line 23928
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A05:I

    .line 23929
    iput v1, p0, Lcom/facebook/ads/redexgen/X/8o;->A04:I

    .line 23930
    const v0, 0x2faf080

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A03:I

    .line 23931
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:I

    .line 23932
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/8o;)I
    .locals 0

    .line 23933
    iget p0, p0, Lcom/facebook/ads/redexgen/X/8o;->A02:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/8o;)I
    .locals 0

    .line 23934
    iget p0, p0, Lcom/facebook/ads/redexgen/X/8o;->A01:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8o;)I
    .locals 0

    .line 23935
    iget p0, p0, Lcom/facebook/ads/redexgen/X/8o;->A05:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8o;)I
    .locals 0

    .line 23936
    iget p0, p0, Lcom/facebook/ads/redexgen/X/8o;->A04:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8o;)I
    .locals 0

    .line 23937
    iget p0, p0, Lcom/facebook/ads/redexgen/X/8o;->A03:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/8o;)I
    .locals 0

    .line 23938
    iget p0, p0, Lcom/facebook/ads/redexgen/X/8o;->A00:I

    return p0
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/mv;
    .locals 1

    .line 23939
    new-instance v0, Lcom/facebook/ads/redexgen/X/mv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/mv;-><init>(Lcom/facebook/ads/redexgen/X/8o;)V

    return-object v0
.end method

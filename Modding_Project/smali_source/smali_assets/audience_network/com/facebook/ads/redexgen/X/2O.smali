.class public final Lcom/facebook/ads/redexgen/X/2O;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ok;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:F

.field public A01:F

.field public A02:J

.field public A03:J

.field public A04:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9747
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A04:J

    .line 9748
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:J

    .line 9749
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A02:J

    .line 9750
    const v0, -0x800001

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A01:F

    .line 9751
    iput v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A00:F

    .line 9752
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/2O;)F
    .locals 0

    .line 9753
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2O;->A01:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/2O;)F
    .locals 0

    .line 9754
    iget p0, p0, Lcom/facebook/ads/redexgen/X/2O;->A00:F

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/2O;)J
    .locals 1

    .line 9755
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A04:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/2O;)J
    .locals 1

    .line 9756
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A03:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/2O;)J
    .locals 1

    .line 9757
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/2O;->A02:J

    return-wide v0
.end method


# virtual methods
.method public final A05()Lcom/facebook/ads/redexgen/X/ok;
    .locals 2

    .line 9758
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/ok;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/ok;-><init>(Lcom/facebook/ads/redexgen/X/2O;Lcom/facebook/ads/redexgen/X/2F;)V

    return-object v0
.end method

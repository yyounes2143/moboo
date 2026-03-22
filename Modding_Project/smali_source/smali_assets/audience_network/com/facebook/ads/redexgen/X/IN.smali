.class public final Lcom/facebook/ads/redexgen/X/IN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TkhdData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 40331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40332
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    .line 40333
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:J

    .line 40334
    iput p4, p0, Lcom/facebook/ads/redexgen/X/IN;->A01:I

    .line 40335
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/IN;)I
    .locals 0

    .line 40336
    iget p0, p0, Lcom/facebook/ads/redexgen/X/IN;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/IN;)I
    .locals 0

    .line 40337
    iget p0, p0, Lcom/facebook/ads/redexgen/X/IN;->A01:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/IN;)J
    .locals 1

    .line 40338
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/IN;->A02:J

    return-wide v0
.end method

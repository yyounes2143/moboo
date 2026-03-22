.class public final Lcom/facebook/ads/redexgen/X/Ci;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackState"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/mA;

.field public final A01:[Z

.field public final A02:[Z

.field public final A03:[Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/mA;[Z)V
    .locals 1

    .line 33078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33079
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ci;->A00:Lcom/facebook/ads/redexgen/X/mA;

    .line 33080
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ci;->A02:[Z

    .line 33081
    iget v0, p1, Lcom/facebook/ads/redexgen/X/mA;->A01:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A01:[Z

    .line 33082
    iget v0, p1, Lcom/facebook/ads/redexgen/X/mA;->A01:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ci;->A03:[Z

    .line 33083
    return-void
.end method

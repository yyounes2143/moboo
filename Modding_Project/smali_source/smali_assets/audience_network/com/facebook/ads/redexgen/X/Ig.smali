.class public final Lcom/facebook/ads/redexgen/X/Ig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataReference"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 42041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42042
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ig;->A00:I

    .line 42043
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Ig;->A02:J

    .line 42044
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ig;->A01:I

    .line 42045
    return-void
.end method

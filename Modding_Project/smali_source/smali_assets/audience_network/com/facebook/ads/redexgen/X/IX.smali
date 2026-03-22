.class public final Lcom/facebook/ads/redexgen/X/IX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataSampleInfo"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:Z


# direct methods
.method public constructor <init>(JZI)V
    .locals 0

    .line 41587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41588
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/IX;->A01:J

    .line 41589
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/IX;->A02:Z

    .line 41590
    iput p4, p0, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    .line 41591
    return-void
.end method

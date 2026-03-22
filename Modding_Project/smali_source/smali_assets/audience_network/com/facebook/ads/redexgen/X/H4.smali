.class public final Lcom/facebook/ads/redexgen/X/H4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/H8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeBook"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Z

.field public final A04:[J


# direct methods
.method public constructor <init>(II[JIZ)V
    .locals 0

    .line 38992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38993
    iput p1, p0, Lcom/facebook/ads/redexgen/X/H4;->A00:I

    .line 38994
    iput p2, p0, Lcom/facebook/ads/redexgen/X/H4;->A01:I

    .line 38995
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/H4;->A04:[J

    .line 38996
    iput p4, p0, Lcom/facebook/ads/redexgen/X/H4;->A02:I

    .line 38997
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/H4;->A03:Z

    .line 38998
    return-void
.end method

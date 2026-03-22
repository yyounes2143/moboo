.class public final Lcom/facebook/ads/redexgen/X/H6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/H8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Z


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 39004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39005
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/H6;->A03:Z

    .line 39006
    iput p2, p0, Lcom/facebook/ads/redexgen/X/H6;->A02:I

    .line 39007
    iput p3, p0, Lcom/facebook/ads/redexgen/X/H6;->A01:I

    .line 39008
    iput p4, p0, Lcom/facebook/ads/redexgen/X/H6;->A00:I

    .line 39009
    return-void
.end method

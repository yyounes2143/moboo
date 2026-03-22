.class public final Lcom/facebook/ads/redexgen/X/SL;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z


# direct methods
.method public constructor <init>(ZII)V
    .locals 0

    .line 64104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64105
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SL;->A02:Z

    .line 64106
    iput p2, p0, Lcom/facebook/ads/redexgen/X/SL;->A01:I

    .line 64107
    iput p3, p0, Lcom/facebook/ads/redexgen/X/SL;->A00:I

    .line 64108
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 64109
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SL;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 64110
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SL;->A01:I

    return v0
.end method

.method public final A02()Z
    .locals 1

    .line 64111
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SL;->A02:Z

    return v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/9M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/39;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/mw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/9J;

.field public final A01:Lcom/facebook/ads/redexgen/X/mt;

.field public final A02:[Lcom/facebook/ads/redexgen/X/38;


# direct methods
.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/38;)V
    .locals 2

    .line 26314
    new-instance v1, Lcom/facebook/ads/redexgen/X/9J;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/9J;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/mt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mt;-><init>()V

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/9M;-><init>([Lcom/facebook/ads/redexgen/X/38;Lcom/facebook/ads/redexgen/X/9J;Lcom/facebook/ads/redexgen/X/mt;)V

    .line 26315
    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/38;Lcom/facebook/ads/redexgen/X/9J;Lcom/facebook/ads/redexgen/X/mt;)V
    .locals 3

    .line 26316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26317
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/38;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9M;->A02:[Lcom/facebook/ads/redexgen/X/38;

    .line 26318
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9M;->A02:[Lcom/facebook/ads/redexgen/X/38;

    array-length v1, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26319
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9M;->A00:Lcom/facebook/ads/redexgen/X/9J;

    .line 26320
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9M;->A01:Lcom/facebook/ads/redexgen/X/mt;

    .line 26321
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9M;->A02:[Lcom/facebook/ads/redexgen/X/38;

    array-length v0, p1

    aput-object p2, v1, v0

    .line 26322
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9M;->A02:[Lcom/facebook/ads/redexgen/X/38;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    aput-object p3, v1, v0

    .line 26323
    return-void
.end method


# virtual methods
.method public final A47(Lcom/facebook/ads/redexgen/X/ob;)Lcom/facebook/ads/redexgen/X/ob;
    .locals 2

    .line 26324
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9M;->A01:Lcom/facebook/ads/redexgen/X/mt;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ob;->A01:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/mt;->A02(F)V

    .line 26325
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9M;->A01:Lcom/facebook/ads/redexgen/X/mt;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ob;->A00:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/mt;->A01(F)V

    .line 26326
    return-object p1
.end method

.method public final A48(Z)Z
    .locals 1

    .line 26327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9M;->A00:Lcom/facebook/ads/redexgen/X/9J;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A0D(Z)V

    .line 26328
    return p1
.end method

.method public final A6r()[Lcom/facebook/ads/redexgen/X/38;
    .locals 1

    .line 26329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9M;->A02:[Lcom/facebook/ads/redexgen/X/38;

    return-object v0
.end method

.method public final A8M(J)J
    .locals 2

    .line 26330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9M;->A01:Lcom/facebook/ads/redexgen/X/mt;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/mt;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A90()J
    .locals 2

    .line 26331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9M;->A00:Lcom/facebook/ads/redexgen/X/9J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9J;->A0C()J

    move-result-wide v0

    return-wide v0
.end method

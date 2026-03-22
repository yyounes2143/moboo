.class public final Lcom/facebook/ads/redexgen/X/kg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/IL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/4J;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ki;)V
    .locals 2

    .line 94354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94355
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 94356
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kg;->A04:Lcom/facebook/ads/redexgen/X/4J;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 94357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A02:I

    .line 94358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A03:I

    .line 94359
    return-void
.end method


# virtual methods
.method public final A82()I
    .locals 1

    .line 94360
    const/4 v0, -0x1

    return v0
.end method

.method public final A8n()I
    .locals 1

    .line 94361
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A03:I

    return v0
.end method

.method public final AGi()I
    .locals 2

    .line 94362
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kg;->A02:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 94363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    return v0

    .line 94364
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kg;->A02:I

    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    .line 94365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    return v0

    .line 94366
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/kg;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A01:I

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    .line 94367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A00:I

    .line 94368
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A00:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 94369
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kg;->A00:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

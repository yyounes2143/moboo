.class public final Lcom/facebook/ads/redexgen/X/Oy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/X5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/X7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BypassLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/X5;

.field public final A02:Lcom/facebook/ads/redexgen/X/X5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/X5;ILcom/facebook/ads/redexgen/X/X5;)V
    .locals 0

    .line 56741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56742
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Lcom/facebook/ads/redexgen/X/X5;

    .line 56743
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:I

    .line 56744
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Oy;->A02:Lcom/facebook/ads/redexgen/X/X5;

    .line 56745
    return-void
.end method


# virtual methods
.method public final AGO(Ljava/lang/String;)V
    .locals 1

    .line 56746
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:I

    if-lez v0, :cond_0

    .line 56747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Lcom/facebook/ads/redexgen/X/X5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/X5;->AGO(Ljava/lang/String;)V

    .line 56748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A01:Lcom/facebook/ads/redexgen/X/X5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/X5;->flush()V

    .line 56749
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A00:I

    .line 56750
    :goto_0
    return-void

    .line 56751
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A02:Lcom/facebook/ads/redexgen/X/X5;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/X5;->AGO(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .line 56752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oy;->A02:Lcom/facebook/ads/redexgen/X/X5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/X5;->flush()V

    .line 56753
    return-void
.end method

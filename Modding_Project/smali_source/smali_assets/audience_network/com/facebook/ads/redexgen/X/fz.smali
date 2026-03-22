.class public final Lcom/facebook/ads/redexgen/X/fz;
.super Lcom/facebook/ads/redexgen/X/QT;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public A00:Z

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/fy;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fy;)V
    .locals 1

    .line 81826
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fz;->A01:Lcom/facebook/ads/redexgen/X/fy;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 81827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fz;->A00:Z

    return-void
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/redexgen/X/6g;I)V
    .locals 1

    .line 81828
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QT;->A0L(Lcom/facebook/ads/redexgen/X/6g;I)V

    .line 81829
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fz;->A00:Z

    if-eqz v0, :cond_0

    .line 81830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fz;->A00:Z

    .line 81831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fz;->A01:Lcom/facebook/ads/redexgen/X/fy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fy;->A0F()V

    .line 81832
    :cond_0
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/6g;II)V
    .locals 1

    .line 81833
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 81834
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fz;->A00:Z

    .line 81835
    :cond_1
    return-void
.end method

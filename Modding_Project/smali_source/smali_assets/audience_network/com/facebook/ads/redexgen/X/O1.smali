.class public final Lcom/facebook/ads/redexgen/X/O1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/O0;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/O0;

.field public A01:Lcom/facebook/ads/redexgen/X/O0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54939
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/O1;-><init>(DD)V

    .line 54940
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .line 54941
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/O1;-><init>(DD)V

    .line 54942
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 54943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54944
    new-instance v0, Lcom/facebook/ads/redexgen/X/O0;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/O0;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A00:Lcom/facebook/ads/redexgen/X/O0;

    .line 54945
    new-instance v0, Lcom/facebook/ads/redexgen/X/O0;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/O0;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A01:Lcom/facebook/ads/redexgen/X/O0;

    .line 54946
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O1;->A02()V

    .line 54947
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/O0;
    .locals 1

    .line 54948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A00:Lcom/facebook/ads/redexgen/X/O0;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/O0;
    .locals 1

    .line 54949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A01:Lcom/facebook/ads/redexgen/X/O0;

    return-object v0
.end method

.method public final A02()V
    .locals 1

    .line 54950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A00:Lcom/facebook/ads/redexgen/X/O0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A07()V

    .line 54951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A01:Lcom/facebook/ads/redexgen/X/O0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A07()V

    .line 54952
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 54953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A00:Lcom/facebook/ads/redexgen/X/O0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A08()V

    .line 54954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A01:Lcom/facebook/ads/redexgen/X/O0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A08()V

    .line 54955
    return-void
.end method

.method public final A04(DD)V
    .locals 1

    .line 54956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A00:Lcom/facebook/ads/redexgen/X/O0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/O0;->A09(DD)V

    .line 54957
    return-void
.end method

.method public final A05(DD)V
    .locals 1

    .line 54958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O1;->A01:Lcom/facebook/ads/redexgen/X/O0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/O0;->A09(DD)V

    .line 54959
    return-void
.end method

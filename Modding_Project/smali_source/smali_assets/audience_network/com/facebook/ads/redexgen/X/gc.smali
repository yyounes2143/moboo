.class public final Lcom/facebook/ads/redexgen/X/gc;
.super Lcom/facebook/ads/redexgen/X/OY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/gb;->A00()Lcom/facebook/ads/redexgen/X/OY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/OY<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gb;)V
    .locals 0

    .line 83375
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OY;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 83376
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ob;->A00:I

    return v0
.end method

.method public final A05(Ljava/lang/Object;)I
    .locals 1

    .line 83377
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ob;->A08(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A06(Ljava/lang/Object;)I
    .locals 1

    .line 83378
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ob;->A07(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/gb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83379
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    return-object v0
.end method

.method public final A0B(II)Ljava/lang/Object;
    .locals 2

    .line 83380
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ob;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0C(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 83381
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ob;->A0C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()V
    .locals 1

    .line 83382
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ob;->clear()V

    .line 83383
    return-void
.end method

.method public final A0E(I)V
    .locals 1

    .line 83384
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ob;->A0A(I)Ljava/lang/Object;

    .line 83385
    return-void
.end method

.method public final A0F(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 83386
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gc;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gc;->A00:Lcom/facebook/ads/redexgen/X/gb;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ob;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83387
    return-void
.end method

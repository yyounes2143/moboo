.class public final Lcom/facebook/ads/redexgen/X/1h;
.super Lcom/facebook/ads/redexgen/X/Ao;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/Ao<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8824
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1h;-><init>(I)V

    .line 8825
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 8826
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ao;-><init>(I)V

    .line 8827
    return-void
.end method


# virtual methods
.method public final A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/facebook/ads/redexgen/X/1h<",
            "TE;>;"
        }
    .end annotation

    .line 8828
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ao;->A03(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Ao;

    .line 8829
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/Am;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation

    .line 8830
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A01:Z

    .line 8831
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ao;->A02:[Ljava/lang/Object;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ao;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->A09([Ljava/lang/Object;I)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

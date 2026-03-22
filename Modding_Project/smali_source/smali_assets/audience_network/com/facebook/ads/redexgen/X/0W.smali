.class public final Lcom/facebook/ads/redexgen/X/0W;
.super Lcom/facebook/ads/redexgen/X/1n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/1n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Am;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TE;>;I)V"
        }
    .end annotation

    .line 4806
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0W;, "Lcom/google/common/collect/ImmutableList$Itr<TE;>;"
    .local p1, "list":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Am;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/1n;-><init>(II)V

    .line 4807
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0W;->A00:Lcom/facebook/ads/redexgen/X/Am;

    .line 4808
    return-void
.end method


# virtual methods
.method public final A00(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4809
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0W;, "Lcom/google/common/collect/ImmutableList$Itr<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0W;->A00:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Am;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

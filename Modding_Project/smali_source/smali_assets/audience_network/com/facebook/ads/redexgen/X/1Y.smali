.class public final Lcom/facebook/ads/redexgen/X/1Y;
.super Lcom/facebook/ads/redexgen/X/Al;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/Al<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient A00:Lcom/facebook/ads/redexgen/X/Am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final transient A01:Lcom/facebook/ads/redexgen/X/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/mj<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/mj;Lcom/facebook/ads/redexgen/X/Am;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/mj<",
            "TK;*>;",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TK;>;)V"
        }
    .end annotation

    .line 8738
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1Y;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    .local p1, "map":Lcom/facebook/ads/redexgen/X/mj;, "Lcom/google/common/collect/ImmutableMap<TK;*>;"
    .local p2, "list":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Al;-><init>()V

    .line 8739
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1Y;->A01:Lcom/facebook/ads/redexgen/X/mj;

    .line 8740
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1Y;->A00:Lcom/facebook/ads/redexgen/X/Am;

    .line 8741
    return-void
.end method


# virtual methods
.method public final A0I([Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset"
        }
    .end annotation

    .line 8742
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1Y;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1Y;->A0J()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Am;->A0I([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/Am;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "TK;>;"
        }
    .end annotation

    .line 8743
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1Y;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1Y;->A00:Lcom/facebook/ads/redexgen/X/Am;

    return-object v0
.end method

.method public final A0K()Z
    .locals 1

    .line 8744
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1Y;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/pg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/pg<",
            "TK;>;"
        }
    .end annotation

    .line 8745
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1Y;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1Y;->A0J()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->A0N()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 8746
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1Y;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1Y;->A01:Lcom/facebook/ads/redexgen/X/mj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/mj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 8747
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1Y;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1Y;->A0N()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 8748
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1Y;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1Y;->A01:Lcom/facebook/ads/redexgen/X/mj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mj;->size()I

    move-result v0

    return v0
.end method

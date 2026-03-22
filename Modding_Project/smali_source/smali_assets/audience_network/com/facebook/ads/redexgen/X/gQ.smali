.class public final Lcom/facebook/ads/redexgen/X/gQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6k;->AC2(Lcom/facebook/ads/redexgen/X/PU;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6k;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/PU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6k;Lcom/facebook/ads/redexgen/X/PU;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83239
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gQ;->A00:Lcom/facebook/ads/redexgen/X/6k;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/gQ;->A01:Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A58(I)Ljava/lang/Object;
    .locals 1

    .line 83240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gQ;->A01:Lcom/facebook/ads/redexgen/X/PU;

    .line 83241
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PU;->A00(I)Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v0

    .line 83242
    .local v0, "compatInfo":Lcom/facebook/ads/redexgen/X/PS;
    if-nez v0, :cond_0

    .line 83243
    const/4 v0, 0x0

    return-object v0

    .line 83244
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PS;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final A6Q(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 83245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gQ;->A01:Lcom/facebook/ads/redexgen/X/PU;

    .line 83246
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/PU;->A03(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 83247
    .local v0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    if-nez v4, :cond_0

    .line 83248
    const/4 v0, 0x0

    return-object v0

    .line 83249
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83250
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 83251
    .local v2, "infoCount":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 83252
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/PS;

    .line 83253
    .local v4, "infoCompat":Lcom/facebook/ads/redexgen/X/PS;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PS;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83254
    .end local v4    # "infoCompat":Lcom/facebook/ads/redexgen/X/PS;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83255
    .end local v3    # "i":I
    :cond_1
    return-object v3
.end method

.method public final A6R(I)Ljava/lang/Object;
    .locals 1

    .line 83256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gQ;->A01:Lcom/facebook/ads/redexgen/X/PU;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PU;->A01(I)Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v0

    .line 83257
    .local v0, "compatInfo":Lcom/facebook/ads/redexgen/X/PS;
    if-nez v0, :cond_0

    .line 83258
    const/4 v0, 0x0

    return-object v0

    .line 83259
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PS;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final AGB(IILandroid/os/Bundle;)Z
    .locals 1

    .line 83260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gQ;->A01:Lcom/facebook/ads/redexgen/X/PU;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/PU;->A04(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

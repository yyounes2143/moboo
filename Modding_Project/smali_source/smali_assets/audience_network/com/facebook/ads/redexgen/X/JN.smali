.class public final Lcom/facebook/ads/redexgen/X/JN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegionComposition"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/JO;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Z


# direct methods
.method public constructor <init>(IZIIIIIIIILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIIIIIIII",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/JO;",
            ">;)V"
        }
    .end annotation

    .line 43782
    .local p11, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43783
    iput p1, p0, Lcom/facebook/ads/redexgen/X/JN;->A03:I

    .line 43784
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/JN;->A0A:Z

    .line 43785
    iput p3, p0, Lcom/facebook/ads/redexgen/X/JN;->A08:I

    .line 43786
    iput p4, p0, Lcom/facebook/ads/redexgen/X/JN;->A02:I

    .line 43787
    iput p5, p0, Lcom/facebook/ads/redexgen/X/JN;->A04:I

    .line 43788
    iput p6, p0, Lcom/facebook/ads/redexgen/X/JN;->A01:I

    .line 43789
    iput p7, p0, Lcom/facebook/ads/redexgen/X/JN;->A00:I

    .line 43790
    iput p8, p0, Lcom/facebook/ads/redexgen/X/JN;->A07:I

    .line 43791
    iput p9, p0, Lcom/facebook/ads/redexgen/X/JN;->A06:I

    .line 43792
    iput p10, p0, Lcom/facebook/ads/redexgen/X/JN;->A05:I

    .line 43793
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/JN;->A09:Landroid/util/SparseArray;

    .line 43794
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/JN;)V
    .locals 5

    .line 43795
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/JN;->A09:Landroid/util/SparseArray;

    .line 43796
    .local v0, "otherRegionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 43797
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JN;->A09:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/JO;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43798
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43799
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

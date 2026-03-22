.class public final Lcom/facebook/ads/redexgen/X/k3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/J7;


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/K3;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:[J

.field public final A02:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3037
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LK8mEMUSnifSCT0YT0fQtLG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zQWICugnqrmXEq8sMdeIuA9JBPwrta0k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lKxJonOWK2Axk83UnpUnbJJcLxj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3DYuz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CNQNHGpRGAv1E31EB6wcq1FAARNpDgXE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DpJK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NUJ585yfBdIWgF7XcRLbZeMVqrhzmgk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1sPINCYISeoO6PXpnzvAKZkikus6bvvY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/k3;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/K3;",
            ">;)V"
        }
    .end annotation

    .line 91737
    .local p1, "cueInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A00:Ljava/util/List;

    .line 91739
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A01:[J

    .line 91740
    const/4 v6, 0x0

    .local v0, "cueIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 91741
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/K3;

    .line 91742
    .local v1, "cueInfo":Lcom/facebook/ads/redexgen/X/K3;
    mul-int/lit8 v4, v6, 0x2

    .line 91743
    .local v2, "arrayIndex":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/k3;->A01:[J

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/K3;->A01:J

    aput-wide v0, v2, v4

    .line 91744
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/k3;->A01:[J

    add-int/lit8 v2, v4, 0x1

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/K3;->A00:J

    aput-wide v0, v3, v2

    .line 91745
    .end local v1    # "cueInfo":Lcom/facebook/ads/redexgen/X/K3;
    .end local v2    # "arrayIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91746
    .end local v0    # "cueIndex":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k3;->A01:[J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A01:[J

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A02:[J

    .line 91747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A02:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 91748
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/K3;Lcom/facebook/ads/redexgen/X/K3;)I
    .locals 3

    .line 91749
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/K3;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/K3;->A01:J

    invoke-static {v2, p0, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final A7P(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;"
        }
    .end annotation

    .line 91750
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91751
    .local v0, "currentCues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91752
    .local v1, "cuesWithUnsetLine":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCueInfo;>;"
    const/4 v6, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ge v6, v0, :cond_4

    .line 91753
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k3;->A01:[J

    mul-int/lit8 v0, v6, 0x2

    aget-wide v1, v1, v0

    cmp-long v0, v1, p1

    if-gtz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k3;->A01:[J

    mul-int/lit8 v0, v6, 0x2

    add-int/2addr v0, v5

    aget-wide v7, v1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/k3;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/k3;->A03:[Ljava/lang/String;

    const-string v1, "FOcCQTOovqYXamkXPEg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    cmp-long v0, p1, v7

    if-gez v0, :cond_2

    .line 91754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A00:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/K3;

    .line 91755
    .local v3, "cueInfo":Lcom/facebook/ads/redexgen/X/K3;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/K3;->A02:Lcom/facebook/ads/redexgen/X/o2;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/o2;->A01:F

    const v0, -0x800001

    cmpl-float v0, v1, v0

    if-nez v0, :cond_3

    .line 91756
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91757
    .end local v3    # "cueInfo":Lcom/facebook/ads/redexgen/X/K3;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91758
    :cond_3
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/K3;->A02:Lcom/facebook/ads/redexgen/X/o2;

    sget-object v2, Lcom/facebook/ads/redexgen/X/k3;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/k3;->A03:[Ljava/lang/String;

    const-string v1, "KriihMM2RWcrEfyoWolOk5PIi1Nv3YmO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "gocQSZMmm3PjEWFg0RBonPYHqyNHFxQo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91759
    .end local v2    # "i":I
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/KD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KD;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91760
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 91761
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/K3;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/K3;->A02:Lcom/facebook/ads/redexgen/X/o2;

    .line 91762
    .local v3, "cue":Lcom/facebook/ads/redexgen/X/o2;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/o2;->A02()Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v1

    rsub-int/lit8 v0, v2, -0x1

    int-to-float v0, v0

    invoke-virtual {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/3C;->A07(FI)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A0H()Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91763
    .end local v3    # "cue":Lcom/facebook/ads/redexgen/X/o2;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 91764
    .end local v2    # "i":I
    :cond_5
    return-object v4
.end method

.method public final A7v(I)J
    .locals 2

    .line 91765
    const/4 v1, 0x1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 91766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A02:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    :goto_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 91767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A02:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 91768
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 91769
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A7w()I
    .locals 1

    .line 91770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A02:[J

    array-length v0, v0

    return v0
.end method

.method public final A8S(J)I
    .locals 2

    .line 91771
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k3;->A02:[J

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0K([JJZZ)I

    move-result v1

    .line 91772
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k3;->A02:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

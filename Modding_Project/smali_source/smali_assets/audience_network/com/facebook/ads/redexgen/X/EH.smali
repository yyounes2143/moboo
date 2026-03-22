.class public abstract Lcom/facebook/ads/redexgen/X/EH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
    }
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 665
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "94gd2lHaz6driogpt3Nl1tWsjXgriMxS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VA5F17cuoV6wg6So0a0DluDefxsQAbFW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BZfou2TK48MMfd1yJcRZTZ4JcnnWlmHT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ilV1kn3efEuJyycOIV0UyN70TAMLymqY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v19hT7CAJaCb1rntEZC2LQpyBVrX3IkZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rkpPVUKbY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FKwb9S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XsKsPoEAnPyrLBiotdeURrQ5Q46xoiIz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EH;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/EC;[Lcom/facebook/ads/redexgen/X/EE;)Lcom/facebook/ads/redexgen/X/o6;
    .locals 3

    .line 34668
    array-length v0, p1

    new-array v2, v0, [Ljava/util/List;

    .line 34669
    .local v0, "listSelections":[Ljava/util/List;, "[Ljava/util/List<+Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 34670
    aget-object v0, p1, v1

    .line 34671
    .local v2, "selection":Lcom/facebook/ads/redexgen/X/EE;
    if-eqz v0, :cond_0

    .line 34672
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    .line 34673
    :goto_1
    aput-object v0, v2, v1

    .line 34674
    .end local v2    # "selection":Lcom/facebook/ads/redexgen/X/EE;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34675
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/i1;->A01()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 34676
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/EH;->A01(Lcom/facebook/ads/redexgen/X/EC;[Ljava/util/List;)Lcom/facebook/ads/redexgen/X/o6;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/EC;[Ljava/util/List;)Lcom/facebook/ads/redexgen/X/o6;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/EC;",
            "[",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/ads/redexgen/X/EE;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/o6;"
        }
    .end annotation

    .line 34677
    .local p3, "selections":[Ljava/util/List;, "[Ljava/util/List<+Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelection;>;"
    new-instance v8, Lcom/facebook/ads/redexgen/X/1h;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/1h;-><init>()V

    .line 34678
    .local v1, "trackGroups":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/common/Tracks$Group;>;"
    const/4 v7, 0x0

    .line 34679
    .local v2, "rendererIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EC;->A02()I

    move-result v0

    const/4 v1, 0x0

    if-ge v7, v0, :cond_7

    .line 34680
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/EC;->A07(I)Lcom/facebook/ads/redexgen/X/mA;

    move-result-object v6

    .line 34681
    .local v3, "trackGroupArray":Lcom/facebook/ads/redexgen/X/mA;
    aget-object v5, p1, v7

    .line 34682
    .local v5, "rendererTrackSelections":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelection;>;"
    const/4 v4, 0x0

    .local v6, "groupIndex":I
    :goto_1
    iget v0, v6, Lcom/facebook/ads/redexgen/X/mA;->A01:I

    if-ge v4, v0, :cond_6

    .line 34683
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/mA;->A05(I)Lcom/facebook/ads/redexgen/X/oH;

    move-result-object v3

    .line 34684
    .local v7, "trackGroup":Lcom/facebook/ads/redexgen/X/oH;
    invoke-virtual {p0, v7, v4, v1}, Lcom/facebook/ads/redexgen/X/EC;->A05(IIZ)I

    move-result v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/EH;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/EH;->A00:[Ljava/lang/String;

    const-string v1, "wVGS7RX5kLdrLFKtRIe7uQsNtd1z6IxW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "7aERijPLyLRrdgSw5lQfoyda5cW2h3c0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v9, :cond_4

    const/4 v11, 0x1

    .line 34685
    .local v8, "adaptiveSupported":Z
    :goto_3
    iget v0, v3, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    new-array v10, v0, [I

    .line 34686
    .local v9, "trackSupport":[I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    new-array v9, v0, [Z

    .line 34687
    .local v10, "selected":[Z
    const/4 v12, 0x0

    .local v11, "trackIndex":I
    :goto_4
    iget v0, v3, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    if-ge v12, v0, :cond_5

    .line 34688
    invoke-virtual {p0, v7, v4, v12}, Lcom/facebook/ads/redexgen/X/EC;->A04(III)I

    move-result v0

    aput v0, v10, v12

    .line 34689
    const/4 v13, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/EH;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    goto :goto_2

    .line 34690
    .local v12, "isTrackSelected":Z
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/EH;->A00:[Ljava/lang/String;

    const-string v1, "3DHxmUKuGZITV4091m9MLUNqu1ZkNm0q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2BQZhu0LL1SbQMNt9wHOkoks63NLimX3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x0

    .local v13, "i":I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 34691
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/EE;

    .line 34692
    .local p0, "trackSelection":Lcom/facebook/ads/redexgen/X/EE;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/EE;->A9D()Lcom/facebook/ads/redexgen/X/oH;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/oH;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34693
    invoke-interface {v2, v12}, Lcom/facebook/ads/redexgen/X/EE;->A9y(I)I

    move-result v2

    const/4 v1, -0x1

    if-eq v2, v1, :cond_3

    .line 34694
    const/4 v13, 0x1

    .line 34695
    .end local v13    # "i":I
    :cond_2
    aput-boolean v13, v9, v12

    .line 34696
    .end local v12    # "isTrackSelected":Z
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 34697
    .end local p0    # "trackSelection":Lcom/facebook/ads/redexgen/X/EE;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 34698
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 34699
    .end local v11    # "trackIndex":I
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/o7;

    invoke-direct {v0, v3, v11, v10, v9}, Lcom/facebook/ads/redexgen/X/o7;-><init>(Lcom/facebook/ads/redexgen/X/oH;Z[I[Z)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    .line 34700
    .end local v7    # "trackGroup":Lcom/facebook/ads/redexgen/X/oH;
    .end local v8    # "adaptiveSupported":Z
    .end local v9    # "trackSupport":[I
    .end local v10    # "selected":[Z
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 34701
    .end local v3    # "trackGroupArray":Lcom/facebook/ads/redexgen/X/mA;
    .end local v5    # "rendererTrackSelections":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelection;>;"
    .end local v6    # "groupIndex":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 34702
    .end local v2    # "rendererIndex":I
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EC;->A06()Lcom/facebook/ads/redexgen/X/mA;

    move-result-object v6

    .line 34703
    .local v2, "unmappedTrackGroups":Lcom/facebook/ads/redexgen/X/mA;
    const/4 v5, 0x0

    .local v3, "groupIndex":I
    :goto_6
    iget v0, v6, Lcom/facebook/ads/redexgen/X/mA;->A01:I

    if-ge v5, v0, :cond_8

    .line 34704
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/mA;->A05(I)Lcom/facebook/ads/redexgen/X/oH;

    move-result-object v4

    .line 34705
    .local v4, "trackGroup":Lcom/facebook/ads/redexgen/X/oH;
    iget v0, v4, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    new-array v3, v0, [I

    .line 34706
    .local v5, "trackSupport":[I
    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 34707
    iget v0, v4, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    new-array v1, v0, [Z

    .line 34708
    .local v7, "selected":[Z
    new-instance v0, Lcom/facebook/ads/redexgen/X/o7;

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/o7;-><init>(Lcom/facebook/ads/redexgen/X/oH;Z[I[Z)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    .line 34709
    .end local v4    # "trackGroup":Lcom/facebook/ads/redexgen/X/oH;
    .end local v5    # "trackSupport":[I
    .end local v7    # "selected":[Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 34710
    .end local v3    # "groupIndex":I
    :cond_8
    nop

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/1h;->A05()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/o6;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/o6;-><init>(Ljava/util/List;)V

    return-object v0
.end method

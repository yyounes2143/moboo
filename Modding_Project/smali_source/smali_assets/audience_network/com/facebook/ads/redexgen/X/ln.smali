.class public final Lcom/facebook/ads/redexgen/X/ln;
.super Lcom/facebook/ads/redexgen/X/E5;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/E5<",
        "Lcom/facebook/ads/redexgen/X/ln;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/ln;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Z

.field public final A06:Z

.field public final A07:Z

.field public final A08:Z


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/oH;ILcom/facebook/ads/redexgen/X/93;ILjava/lang/String;)V
    .locals 9

    .line 97236
    move-object v2, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/E5;-><init>(ILcom/facebook/ads/redexgen/X/oH;I)V

    .line 97237
    const/4 v3, 0x0

    invoke-static {p5, v3}, Lcom/facebook/ads/redexgen/X/92;->A0S(IZ)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A08:Z

    .line 97238
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/or;->A0H:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A00:I

    not-int v0, v0

    and-int/2addr v1, v0

    .line 97239
    .local v4, "maskedSelectionFlags":I
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A06:Z

    .line 97240
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A07:Z

    .line 97241
    const v8, 0x7fffffff

    .line 97242
    .local v5, "bestLanguageIndex":I
    const/4 v7, 0x0

    .line 97243
    .local v7, "bestLanguageScore":I
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A0K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97244
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 97245
    .local v8, "preferredLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    const/4 v5, 0x0

    .local p0, "i":I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 97246
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 97247
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A0P:Z

    .line 97248
    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A02(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/String;Z)I

    move-result v0

    .line 97249
    .local p1, "score":I
    if-lez v0, :cond_7

    .line 97250
    move v8, v5

    .line 97251
    move v7, v0

    .line 97252
    .end local p0    # "i":I
    :cond_0
    iput v8, v2, Lcom/facebook/ads/redexgen/X/ln;->A00:I

    .line 97253
    iput v7, v2, Lcom/facebook/ads/redexgen/X/ln;->A01:I

    .line 97254
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A0C:I

    .line 97255
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A01(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A02:I

    .line 97256
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    and-int/lit16 v0, v0, 0x440

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A05:Z

    .line 97257
    invoke-static {p6}, Lcom/facebook/ads/redexgen/X/92;->A0K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v1, 0x1

    .line 97258
    .local p0, "selectedAudioLanguageUndetermined":Z
    :goto_5
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 97259
    invoke-static {v0, p6, v1}, Lcom/facebook/ads/redexgen/X/92;->A02(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/String;Z)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A03:I

    .line 97260
    iget v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A01:I

    if-gtz v0, :cond_2

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A0K:Ljava/util/List;

    .line 97261
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A02:I

    if-gtz v0, :cond_2

    :cond_1
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A06:Z

    if-nez v0, :cond_2

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A07:Z

    if-eqz v0, :cond_4

    iget v0, v2, Lcom/facebook/ads/redexgen/X/ln;->A03:I

    if-lez v0, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 97262
    .local p1, "isWithinConstraints":Z
    :goto_6
    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/93;->A0B:Z

    .line 97263
    invoke-static {p5, v0}, Lcom/facebook/ads/redexgen/X/92;->A0S(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 97264
    const/4 v3, 0x1

    .line 97265
    :cond_3
    iput v3, v2, Lcom/facebook/ads/redexgen/X/ln;->A04:I

    .line 97266
    return-void

    .line 97267
    :cond_4
    const/4 v1, 0x0

    goto :goto_6

    .line 97268
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 97269
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 97270
    .end local p1    # "isWithinConstraints":Z
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 97271
    :cond_8
    iget-object v6, p4, Lcom/facebook/ads/redexgen/X/oA;->A0K:Ljava/util/List;

    goto :goto_2

    .line 97272
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 97273
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/ln;)I
    .locals 4

    .line 97274
    invoke-static {}, Lcom/facebook/ads/redexgen/X/m4;->A01()Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ln;->A08:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/ln;->A08:Z

    .line 97275
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ln;->A00:I

    .line 97276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ln;->A00:I

    .line 97277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 97278
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oV;->A03()Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AQ;->A06()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    .line 97279
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ln;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ln;->A01:I

    .line 97280
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A06(II)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ln;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ln;->A02:I

    .line 97281
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A06(II)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ln;->A06:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/ln;->A06:Z

    .line 97282
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ln;->A07:Z

    .line 97283
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/ln;->A07:Z

    .line 97284
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 97285
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ln;->A01:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oV;->A03()Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    .line 97286
    :goto_0
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ln;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/ln;->A03:I

    .line 97287
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A06(II)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    .line 97288
    .local v0, "chain":Lcom/facebook/ads/redexgen/X/m4;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ln;->A02:I

    if-nez v0, :cond_0

    .line 97289
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ln;->A05:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/ln;->A05:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A0A(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    .line 97290
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/m4;->A05()I

    move-result v0

    return v0

    .line 97291
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oV;->A03()Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AQ;->A06()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    goto :goto_0
.end method

.method public static A01(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ln;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ln;",
            ">;)I"
        }
    .end annotation

    .line 97292
    .local p1, "infos1":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    .local p2, "infos2":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/redexgen/X/ln;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ln;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ln;->A00(Lcom/facebook/ads/redexgen/X/ln;)I

    move-result v0

    return v0
.end method

.method public static A02(ILcom/facebook/ads/redexgen/X/oH;Lcom/facebook/ads/redexgen/X/93;[ILjava/lang/String;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/oH;",
            "Lcom/facebook/ads/redexgen/X/93;",
            "[I",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/ln;",
            ">;"
        }
    .end annotation

    .line 97293
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A01()Lcom/facebook/ads/redexgen/X/1h;

    move-result-object v1

    .line 97294
    .local v0, "listBuilder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;>;"
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    move-object v4, p1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    if-ge v5, v0, :cond_0

    .line 97295
    new-instance v2, Lcom/facebook/ads/redexgen/X/ln;

    aget v7, p3, v5

    move-object v8, p4

    move-object v6, p2

    move v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/ln;-><init>(ILcom/facebook/ads/redexgen/X/oH;ILcom/facebook/ads/redexgen/X/93;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    .line 97296
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97297
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1h;->A05()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/ln;)Z
    .locals 1

    .line 97298
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A08()I
    .locals 1

    .line 97299
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ln;->A04:I

    return v0
.end method

.method public final bridge synthetic A09(Lcom/facebook/ads/redexgen/X/E5;)Z
    .locals 1

    .line 97300
    check-cast p1, Lcom/facebook/ads/redexgen/X/ln;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ln;->A03(Lcom/facebook/ads/redexgen/X/ln;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 97301
    check-cast p1, Lcom/facebook/ads/redexgen/X/ln;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ln;->A00(Lcom/facebook/ads/redexgen/X/ln;)I

    move-result v0

    return v0
.end method

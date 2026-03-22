.class public abstract Lcom/facebook/ads/redexgen/X/NS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/hU;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NS;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NS;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x66

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NS;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xat
        0x4ct
        0x50t
        0x49t
        0x48t
        0x79t
        0x7et
        0x64t
        0x75t
        0x62t
        0x63t
        0x64t
        0x79t
        0x64t
        0x79t
        0x71t
        0x7ct
        0x65t
        0x72t
        0x60t
        0x76t
        0x65t
        0x73t
        0x72t
        0x73t
        0x48t
        0x61t
        0x7et
        0x73t
        0x72t
        0x78t
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/73;)V
    .locals 12

    .line 54081
    new-instance v3, Lcom/facebook/ads/redexgen/X/SD;

    .line 54082
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/facebook/ads/redexgen/X/cm;->A04:I

    sget v6, Lcom/facebook/ads/redexgen/X/cm;->A04:I

    .line 54083
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 54084
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/SF;->A0d(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 54085
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A1Y()Z

    move-result v6

    .line 54086
    .local v0, "isDSL":Z
    if-eqz v6, :cond_0

    .line 54087
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A0s()Ljava/lang/String;

    move-result-object v5

    .line 54088
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/SB;

    invoke-direct {v3, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54089
    .local v1, "cacheFileData":Lcom/facebook/ads/redexgen/X/SB;
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/SB;->A04:Z

    .line 54090
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SB;->A03:Ljava/lang/String;

    .line 54091
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/SF;->A0Y(Lcom/facebook/ads/redexgen/X/SB;)V

    .line 54092
    .end local v1    # "cacheFileData":Lcom/facebook/ads/redexgen/X/SB;
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/eF;->A03()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/U7;->A2s(Landroid/content/Context;Z)Z

    move-result v3

    .line 54093
    .local v1, "useExoPlayerCacheForDSL":Z
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v8

    .line 54094
    .local v2, "videoUrlToCache":Ljava/lang/String;
    new-instance v7, Lcom/facebook/ads/redexgen/X/SB;

    .line 54095
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v9

    .line 54096
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A06()J

    move-result-wide v11

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 54097
    .local v3, "fileData":Lcom/facebook/ads/redexgen/X/SB;
    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    .line 54098
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0Y(Lcom/facebook/ads/redexgen/X/SB;)V

    .line 54099
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/SD;

    .line 54100
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v4

    .line 54101
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NN;->A00(Lcom/facebook/ads/redexgen/X/Ms;)I

    move-result v5

    .line 54102
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01(Lcom/facebook/ads/redexgen/X/Ms;)I

    move-result v6

    .line 54103
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 54104
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/SF;->A0d(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 54105
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54106
    .local v5, "url":Ljava/lang/String;
    new-instance v4, Lcom/facebook/ads/redexgen/X/SD;

    .line 54107
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 54108
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/SF;->A0d(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 54109
    .end local v5    # "url":Ljava/lang/String;
    goto :goto_1

    .line 54110
    :cond_1
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0b(Lcom/facebook/ads/redexgen/X/SB;)V

    goto :goto_0

    .line 54111
    :cond_2
    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/73;)V
    .locals 12

    .line 54112
    const/4 v6, 0x0

    .line 54113
    .local v0, "i":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A27()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Mp;

    .line 54114
    .local v2, "adInfo":Lcom/facebook/ads/redexgen/X/Mp;
    new-instance v7, Lcom/facebook/ads/redexgen/X/SD;

    .line 54115
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v8

    .line 54116
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/NN;->A00(Lcom/facebook/ads/redexgen/X/Ms;)I

    move-result v9

    .line 54117
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/NN;->A01(Lcom/facebook/ads/redexgen/X/Ms;)I

    move-result v10

    .line 54118
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x5

    const/16 v2, 0xc

    const/16 v1, 0x76

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 54119
    .local v3, "imageData":Lcom/facebook/ads/redexgen/X/SD;
    if-nez v6, :cond_2

    .line 54120
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0c(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 54121
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/N0;->A02()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 54122
    .local v5, "endCardUrl":Ljava/lang/String;
    new-instance v7, Lcom/facebook/ads/redexgen/X/SD;

    .line 54123
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x5

    const/16 v2, 0xc

    const/16 v1, 0x76

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object p0

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 54124
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0d(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 54125
    .end local v5    # "endCardUrl":Ljava/lang/String;
    goto :goto_2

    .line 54126
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54127
    new-instance v7, Lcom/facebook/ads/redexgen/X/SB;

    .line 54128
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v8

    .line 54129
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v9

    .line 54130
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A06()J

    move-result-wide v11

    const/4 v2, 0x5

    const/16 v1, 0xc

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 54131
    .local v4, "fileData":Lcom/facebook/ads/redexgen/X/SB;
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/facebook/ads/redexgen/X/SB;->A04:Z

    .line 54132
    .end local v4    # "fileData":Lcom/facebook/ads/redexgen/X/SB;
    .end local v2    # "adInfo":Lcom/facebook/ads/redexgen/X/Mp;
    .end local v3    # "imageData":Lcom/facebook/ads/redexgen/X/SD;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 54133
    goto/16 :goto_0

    .line 54134
    :cond_2
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/SF;->A0d(Lcom/facebook/ads/redexgen/X/SD;)V

    goto :goto_1

    .line 54135
    :cond_3
    return-void
.end method

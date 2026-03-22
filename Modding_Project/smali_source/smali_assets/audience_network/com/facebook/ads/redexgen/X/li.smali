.class public abstract Lcom/facebook/ads/redexgen/X/li;
.super Lcom/facebook/ads/redexgen/X/EK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/EC;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/EC;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3130
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LN1kZ6lR3vZBqqrviA4uTSOzBGS9o2bO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mUQPITaRnEXTrG2Wr7xIAnPzPHhU6DS3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "avW0I4bwWNzzQZleeOInYpLZY9PTle7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LGUT8ZIo3joumZn9NybI7JCchk0DSCTG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S4WFRdtC0lcE2afHWARgiwpUU5tNPmtd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SbOYlLigHNVPkFHrMvYK7wwtNeL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2fmBOvz22OTh8nUuYBKjoVDFU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lR30iWlIbuozJgbVtB9O9DOed4NJenPq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/li;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 96996
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EK;-><init>()V

    return-void
.end method

.method public static A0Y([Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/oH;[IZ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 96997
    array-length v6, p0

    .line 96998
    .local v0, "bestRendererIndex":I
    const/4 v5, 0x0

    .line 96999
    .local v1, "bestFormatSupportLevel":I
    const/4 v7, 0x1

    .line 97000
    .local v2, "bestRendererIsUnassociated":Z
    const/4 v4, 0x0

    .local v3, "rendererIndex":I
    :goto_0
    array-length v0, p0

    if-ge v4, v0, :cond_4

    .line 97001
    aget-object v3, p0, v4

    .line 97002
    .local v4, "rendererCapability":Lcom/facebook/ads/redexgen/X/7D;
    const/4 v2, 0x0

    .line 97003
    .local v5, "formatSupportLevel":I
    const/4 v1, 0x0

    .local v6, "trackIndex":I
    :goto_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    if-ge v1, v0, :cond_0

    .line 97004
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/oH;->A08(I)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/7D;->AJb(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v0

    .line 97005
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/76;->A03(I)I

    move-result v0

    .line 97006
    .local v7, "trackFormatSupportLevel":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 97007
    .end local v7    # "trackFormatSupportLevel":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97008
    .end local v6    # "trackIndex":I
    :cond_0
    aget v0, p2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 97009
    .local v6, "rendererIsUnassociated":Z
    :goto_2
    if-gt v2, v5, :cond_1

    if-ne v2, v5, :cond_2

    if-eqz p3, :cond_2

    if-nez v7, :cond_2

    if-eqz v0, :cond_2

    .line 97010
    :cond_1
    move v6, v4

    .line 97011
    move v5, v2

    .line 97012
    move v7, v0

    .line 97013
    .end local v4    # "rendererCapability":Lcom/facebook/ads/redexgen/X/7D;
    .end local v5    # "formatSupportLevel":I
    .end local v6    # "rendererIsUnassociated":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97014
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 97015
    .end local v3    # "rendererIndex":I
    :cond_4
    return v6
.end method

.method public static A0Z(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/oH;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 97016
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    new-array v2, v0, [I

    .line 97017
    .local v0, "formatSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    if-ge v1, v0, :cond_0

    .line 97018
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/oH;->A08(I)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/7D;->AJb(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v0

    aput v0, v2, v1

    .line 97019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97020
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A0a([Lcom/facebook/ads/redexgen/X/7D;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 97021
    array-length v0, p0

    new-array v4, v0, [I

    .line 97022
    .local v0, "mixedMimeTypeAdaptationSupport":[I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, v4

    if-ge v3, v0, :cond_1

    .line 97023
    aget-object v0, p0, v3

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7D;->AJd()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/li;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/li;->A01:[Ljava/lang/String;

    const-string v1, "1ViYEGUZxGRCVXLKV1NACncyCaxKGcLE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WZkUCc71MckdncxFpAml539B1oxWjr0A"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aput v5, v4, v3

    .line 97024
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 97025
    .end local v1    # "i":I
    :cond_1
    return-object v4
.end method


# virtual methods
.method public final A0b([Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/EL;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 97026
    move-object v4, p1

    array-length v0, v4

    const/4 v10, 0x1

    add-int/2addr v0, v10

    new-array v5, v0, [I

    .line 97027
    .local v2, "rendererTrackGroupCounts":[I
    array-length v0, v4

    add-int/2addr v0, v10

    new-array v3, v0, [[Lcom/facebook/ads/redexgen/X/oH;

    .line 97028
    .local v4, "rendererTrackGroups":[[Lcom/facebook/ads/redexgen/X/oH;
    array-length v0, v4

    add-int/2addr v0, v10

    new-array v12, v0, [[[I

    .line 97029
    .local v5, "rendererFormatSupports":[[[I
    const/4 v1, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v3

    move-object/from16 v8, p2

    if-ge v1, v0, :cond_0

    .line 97030
    iget v0, v8, Lcom/facebook/ads/redexgen/X/mA;->A01:I

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/oH;

    aput-object v0, v3, v1

    .line 97031
    iget v0, v8, Lcom/facebook/ads/redexgen/X/mA;->A01:I

    new-array v0, v0, [[I

    aput-object v0, v12, v1

    .line 97032
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97033
    .end local v6    # "i":I
    :cond_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/li;->A0a([Lcom/facebook/ads/redexgen/X/7D;)[I

    move-result-object v11

    .line 97034
    .local v13, "rendererMixedMimeTypeAdaptationSupports":[I
    const/4 v7, 0x0

    .local v6, "groupIndex":I
    :goto_1
    iget v0, v8, Lcom/facebook/ads/redexgen/X/mA;->A01:I

    if-ge v7, v0, :cond_3

    .line 97035
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/mA;->A05(I)Lcom/facebook/ads/redexgen/X/oH;

    move-result-object v9

    .line 97036
    .local v7, "group":Lcom/facebook/ads/redexgen/X/oH;
    iget v1, v9, Lcom/facebook/ads/redexgen/X/oH;->A02:I

    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    .line 97037
    .local v8, "preferUnassociatedRenderer":Z
    :goto_2
    invoke-static {v4, v9, v5, v0}, Lcom/facebook/ads/redexgen/X/li;->A0Y([Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/oH;[IZ)I

    move-result v6

    .line 97038
    .local v9, "rendererIndex":I
    array-length v0, v4

    if-ne v6, v0, :cond_1

    .line 97039
    iget v0, v9, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    new-array v2, v0, [I

    .line 97040
    .local v10, "rendererFormatSupport":[I
    :goto_3
    aget v1, v5, v6

    .line 97041
    .local v11, "rendererTrackGroupCount":I
    aget-object v0, v3, v6

    aput-object v9, v0, v1

    .line 97042
    aget-object v0, v12, v6

    aput-object v2, v0, v1

    .line 97043
    aget v0, v5, v6

    add-int/2addr v0, v10

    aput v0, v5, v6

    .line 97044
    .end local v7    # "group":Lcom/facebook/ads/redexgen/X/oH;
    .end local v8    # "preferUnassociatedRenderer":Z
    .end local v9    # "rendererIndex":I
    .end local v10    # "rendererFormatSupport":[I
    .end local v11    # "rendererTrackGroupCount":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 97045
    :cond_1
    aget-object v0, v4, v6

    invoke-static {v0, v9}, Lcom/facebook/ads/redexgen/X/li;->A0Z(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/oH;)[I

    move-result-object v2

    goto :goto_3

    .line 97046
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 97047
    .end local v6    # "groupIndex":I
    :cond_3
    array-length v0, v4

    new-array v10, v0, [Lcom/facebook/ads/redexgen/X/mA;

    .line 97048
    .local v3, "rendererTrackGroupArrays":[Lcom/facebook/ads/redexgen/X/mA;
    array-length v0, v4

    new-array v8, v0, [Ljava/lang/String;

    .line 97049
    .local p0, "rendererNames":[Ljava/lang/String;
    array-length v0, v4

    new-array v9, v0, [I

    .line 97050
    .local p1, "rendererTrackTypes":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v7, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/li;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/li;->A01:[Ljava/lang/String;

    const-string v1, "hppY0P6sht5kF7is4RCKyMBKsFUVAoRB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "XeHPWbHBeoBDFVDQc4DbmKa9NYqMdrJh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v6, v7, :cond_4

    .line 97051
    aget v2, v5, v6

    .line 97052
    .local v7, "rendererTrackGroupCount":I
    aget-object v0, v3, v6

    .line 97053
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/4a;->A1I([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/redexgen/X/oH;

    new-instance v0, Lcom/facebook/ads/redexgen/X/mA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/mA;-><init>([Lcom/facebook/ads/redexgen/X/oH;)V

    aput-object v0, v10, v6

    .line 97054
    aget-object v0, v12, v6

    .line 97055
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/4a;->A1I([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v12, v6

    .line 97056
    aget-object v0, v4, v6

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7D;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    .line 97057
    aget-object v0, v4, v6

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7D;->A9F()I

    move-result v0

    aput v0, v9, v6

    .line 97058
    .end local v7    # "rendererTrackGroupCount":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 97059
    .end local v6    # "i":I
    :cond_4
    array-length v0, v4

    aget v1, v5, v0

    .line 97060
    .local v11, "unmappedTrackGroupCount":I
    array-length v0, v4

    aget-object v0, v3, v0

    .line 97061
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A1I([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/oH;

    new-instance v13, Lcom/facebook/ads/redexgen/X/mA;

    invoke-direct {v13, v0}, Lcom/facebook/ads/redexgen/X/mA;-><init>([Lcom/facebook/ads/redexgen/X/oH;)V

    .line 97062
    .local v12, "unmappedTrackGroupArray":Lcom/facebook/ads/redexgen/X/mA;
    new-instance v7, Lcom/facebook/ads/redexgen/X/EC;

    .end local v11    # "unmappedTrackGroupCount":I
    .local p3, "unmappedTrackGroupCount":I
    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/EC;-><init>([Ljava/lang/String;[I[Lcom/facebook/ads/redexgen/X/mA;[I[[[ILcom/facebook/ads/redexgen/X/mA;)V

    .line 97063
    .local v11, "mappedTrackInfo":Lcom/facebook/ads/redexgen/X/EC;
    move-object v5, p0

    move-object v4, v7

    .end local v11    # "mappedTrackInfo":Lcom/facebook/ads/redexgen/X/EC;
    .local v0, "mappedTrackInfo":Lcom/facebook/ads/redexgen/X/EC;
    move-object v6, v7

    move-object v7, v12

    move-object v8, v11

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/li;->A0d(Lcom/facebook/ads/redexgen/X/EC;[[[I[ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v1

    .line 97064
    .local v6, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Lcom/facebook/ads/androidx/media3/exoplayer/RendererConfiguration;[Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lcom/facebook/ads/redexgen/X/EE;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/EH;->A00(Lcom/facebook/ads/redexgen/X/EC;[Lcom/facebook/ads/redexgen/X/EE;)Lcom/facebook/ads/redexgen/X/o6;

    move-result-object v3

    .line 97065
    .local v7, "tracks":Lcom/facebook/ads/redexgen/X/o6;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Lcom/facebook/ads/redexgen/X/7G;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/facebook/ads/redexgen/X/lj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EL;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/EL;-><init>([Lcom/facebook/ads/redexgen/X/7G;[Lcom/facebook/ads/redexgen/X/lj;Lcom/facebook/ads/redexgen/X/o6;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0c(Ljava/lang/Object;)V
    .locals 0

    .line 97066
    check-cast p1, Lcom/facebook/ads/redexgen/X/EC;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/li;->A00:Lcom/facebook/ads/redexgen/X/EC;

    .line 97067
    return-void
.end method

.method public abstract A0d(Lcom/facebook/ads/redexgen/X/EC;[[[I[ILcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/EC;",
            "[[[I[I",
            "Lcom/facebook/ads/redexgen/X/mL;",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/facebook/ads/redexgen/X/7G;",
            "[",
            "Lcom/facebook/ads/redexgen/X/lj;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation
.end method

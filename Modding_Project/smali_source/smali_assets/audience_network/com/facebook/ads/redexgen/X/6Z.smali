.class public final Lcom/facebook/ads/redexgen/X/6Z;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:Lcom/facebook/ads/redexgen/X/mL;

.field public final A05:Z

.field public final A06:Z

.field public final A07:Z

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 395
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "l8GJg6rn6Adlh4Gn59Q00x9wdhAA1N0G"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0FGDNpmqvJaXrYVndUjcoHzlqa3GYTQ7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pt3TgghkXaQKZolppIJBnXlroi4GAQrs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "P8nJgAgzZ7eq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wLbaX9M9C92K8ml85Wq6oszj2MSO2FBr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4xgaQCpVjfBlN1x0xTmHAa8kZRn587ql"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "M0TEQVmq9EtHtFdZcG0N3gydxvjz8wFn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "euj9JK69WhhaD3Qn5aJyq4d8RK326seE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6Z;->A09:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/mL;JJJJZZ)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Must be removed when ExoPlayerImpl V1 is deprecated"
    .end annotation

    .line 18017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18018
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    .line 18019
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    .line 18020
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    .line 18021
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/6Z;->A02:J

    .line 18022
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    .line 18023
    iput-boolean p10, p0, Lcom/facebook/ads/redexgen/X/6Z;->A07:Z

    .line 18024
    iput-boolean p11, p0, Lcom/facebook/ads/redexgen/X/6Z;->A05:Z

    .line 18025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Z;->A06:Z

    .line 18026
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Z;->A08:Z

    .line 18027
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/mL;JJJJZZZZ)V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Disable Assertions for now as the ones related to isFollowedByTransitionToSameStream & isLastInTimelineWindow are not applicable toExoPlayerImpl v1"
    .end annotation

    .line 18028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18029
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    .line 18030
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    .line 18031
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/6Z;->A02:J

    .line 18032
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    .line 18033
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    .line 18034
    iput-boolean p10, p0, Lcom/facebook/ads/redexgen/X/6Z;->A06:Z

    .line 18035
    iput-boolean p11, p0, Lcom/facebook/ads/redexgen/X/6Z;->A07:Z

    .line 18036
    iput-boolean p12, p0, Lcom/facebook/ads/redexgen/X/6Z;->A08:Z

    .line 18037
    iput-boolean p13, p0, Lcom/facebook/ads/redexgen/X/6Z;->A05:Z

    .line 18038
    return-void
.end method


# virtual methods
.method public final A00(J)Lcom/facebook/ads/redexgen/X/6Z;
    .locals 16

    .line 18039
    move-object/from16 v1, p0

    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    move-wide/from16 v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    .line 18040
    move-object v2, v1

    .line 18041
    :goto_0
    return-object v2

    .line 18042
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/6Z;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/6Z;->A02:J

    iget-wide v8, v1, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    iget-boolean v12, v1, Lcom/facebook/ads/redexgen/X/6Z;->A06:Z

    iget-boolean v13, v1, Lcom/facebook/ads/redexgen/X/6Z;->A07:Z

    iget-boolean v14, v1, Lcom/facebook/ads/redexgen/X/6Z;->A08:Z

    iget-boolean v15, v1, Lcom/facebook/ads/redexgen/X/6Z;->A05:Z

    invoke-direct/range {v2 .. v15}, Lcom/facebook/ads/redexgen/X/6Z;-><init>(Lcom/facebook/ads/redexgen/X/mL;JJJJZZZZ)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 18043
    const/4 v7, 0x1

    if-ne p0, p1, :cond_0

    .line 18044
    return v7

    .line 18045
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/6Z;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6Z;->A09:[Ljava/lang/String;

    const-string v1, "HM7USyyxbNbQcjlq9QdgoHVXlCbIu8Ew"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "UF1UQefl0hgIUKl2LSKBHKtCQ7NwZYWH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_3

    .line 18046
    .end local v2
    :cond_2
    return v3

    .line 18047
    :cond_3
    check-cast p1, Lcom/facebook/ads/redexgen/X/6Z;

    .line 18048
    .local v2, "that":Lcom/facebook/ads/redexgen/X/6Z;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    sget-object v5, Lcom/facebook/ads/redexgen/X/6Z;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v5, v5, v0

    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x4c

    if-eq v5, v0, :cond_7

    sget-object v6, Lcom/facebook/ads/redexgen/X/6Z;->A09:[Ljava/lang/String;

    const-string v5, "KvLnIvA0WshqvFl6QUZ6X2AQHuQtnix5"

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const-string v5, "A4NouHfcMNJ0mAlCwa4zmzIsOHoRuHy2"

    const/4 v0, 0x2

    aput-object v5, v6, v0

    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/6Z;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/6Z;->A02:J

    sget-object v6, Lcom/facebook/ads/redexgen/X/6Z;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v5, v6, v0

    const/4 v0, 0x2

    aget-object v6, v6, v0

    const/16 v0, 0xe

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v5, v0, :cond_5

    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    :goto_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    sget-object v5, Lcom/facebook/ads/redexgen/X/6Z;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v5, v5, v0

    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x4c

    if-eq v5, v0, :cond_4

    sget-object v6, Lcom/facebook/ads/redexgen/X/6Z;->A09:[Ljava/lang/String;

    const-string v5, "UcOdoWHat5DlQCa8pGaoiSJ6mIGk23xs"

    const/4 v0, 0x5

    aput-object v5, v6, v0

    const-string v5, "TWHZ8fLSue4lPY4c06l29BkldFDhe1WB"

    const/4 v0, 0x0

    aput-object v5, v6, v0

    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    :goto_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A06:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/6Z;->A06:Z

    if-ne v1, v0, :cond_6

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A07:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/6Z;->A07:Z

    if-ne v1, v0, :cond_6

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A08:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/6Z;->A08:Z

    if-ne v1, v0, :cond_6

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A05:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/6Z;->A05:Z

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    .line 18049
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18050
    :goto_2
    return v7

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    goto :goto_1

    :cond_5
    sget-object v6, Lcom/facebook/ads/redexgen/X/6Z;->A09:[Ljava/lang/String;

    const-string v5, "0MuUGctUC2lW"

    const/4 v0, 0x3

    aput-object v5, v6, v0

    cmp-long v0, v3, v1

    if-nez v0, :cond_6

    goto :goto_0

    .line 18051
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 4

    .line 18052
    const/16 v0, 0x11

    .line 18053
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2a;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 18054
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 18055
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v3, v3, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A02:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 18056
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v3, v3, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 18057
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v3, v3, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 18058
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v3, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Z;->A06:Z

    add-int/2addr v1, v0

    .line 18059
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Z;->A07:Z

    add-int/2addr v1, v0

    .line 18060
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Z;->A08:Z

    add-int/2addr v1, v0

    .line 18061
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Z;->A05:Z

    add-int/2addr v1, v0

    .line 18062
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

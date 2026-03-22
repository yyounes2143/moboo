.class public final Lcom/facebook/ads/redexgen/X/lz;
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
    name = "AudioTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/E5<",
        "Lcom/facebook/ads/redexgen/X/lz;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/lz;",
        ">;"
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


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

.field public final A09:I

.field public final A0A:Lcom/facebook/ads/redexgen/X/93;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Z

.field public final A0D:Z

.field public final A0E:Z

.field public final A0F:Z

.field public final A0G:Z

.field public final A0H:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3141
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kuPF6Ds61I7lkNvdz9bcVPsTInik8V3M"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Qk0zKRkYsaxRz9XBLHG1rmY7ne3qL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "U5xl3sY91uvZaW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4oEkNGaUX02G9U6MTdWApFSB5pjWlUNx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CFtCC3eFdvC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EnNVjubCw6rdwWEp5vRTdV2Ipxq1ST06"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "834ujo2VifTXBI2K"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5tr2zEJniV6LNy5ijK5ku"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lz;->A0I:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/oH;ILcom/facebook/ads/redexgen/X/93;IZLcom/facebook/ads/redexgen/X/jB;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/oH;",
            "I",
            "Lcom/facebook/ads/redexgen/X/93;",
            "IZ",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;)V"
        }
    .end annotation

    .line 97944
    .local p14, "withinAudioChannelCountConstraints":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    move-object v2, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/E5;-><init>(ILcom/facebook/ads/redexgen/X/oH;I)V

    .line 97945
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    .line 97946
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0V:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/92;->A0K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A0B:Ljava/lang/String;

    .line 97947
    const/4 v3, 0x0

    invoke-static {p5, v3}, Lcom/facebook/ads/redexgen/X/92;->A0S(IZ)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A0F:Z

    .line 97948
    const/4 v6, 0x0

    .line 97949
    .local v4, "bestLanguageScore":I
    const v5, 0x7fffffff

    .line 97950
    .local v5, "bestLanguageIndex":I
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A0I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 97951
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A0I:Ljava/util/List;

    .line 97952
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97953
    invoke-static {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/92;->A02(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/String;Z)I

    move-result v0

    .line 97954
    .local v7, "score":I
    if-lez v0, :cond_d

    .line 97955
    move v5, v4

    .line 97956
    move v6, v0

    .line 97957
    .end local v6    # "i":I
    :cond_0
    iput v5, v2, Lcom/facebook/ads/redexgen/X/lz;->A04:I

    .line 97958
    iput v6, v2, Lcom/facebook/ads/redexgen/X/lz;->A05:I

    .line 97959
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A0B:I

    .line 97960
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/92;->A01(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A07:I

    .line 97961
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0E:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A0C:Z

    .line 97962
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0H:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A0D:Z

    .line 97963
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A01:I

    .line 97964
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A08:I

    .line 97965
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A05:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A00:I

    .line 97966
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A05:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/or;->A05:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A01:I

    if-gt v1, v0, :cond_a

    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    if-eq v0, v4, :cond_3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A02:I

    if-gt v1, v0, :cond_a

    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 97967
    invoke-interface {p7, v0}, Lcom/facebook/ads/redexgen/X/jB;->A44(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A0E:Z

    .line 97968
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4a;->A1L()[Ljava/lang/String;

    move-result-object v7

    .line 97969
    .local v6, "localeLanguages":[Ljava/lang/String;
    const v6, 0x7fffffff

    .line 97970
    .local p1, "bestLocaleMatchIndex":I
    const/4 v5, 0x0

    .line 97971
    .local p2, "bestLocaleMatchScore":I
    const/4 v4, 0x0

    .local p3, "i":I
    :goto_4
    array-length v0, v7

    if-ge v4, v0, :cond_4

    .line 97972
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v7, v4

    .line 97973
    invoke-static {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/92;->A02(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/String;Z)I

    move-result v0

    .line 97974
    .local p4, "score":I
    if-lez v0, :cond_9

    .line 97975
    move v6, v4

    .line 97976
    move v5, v0

    .line 97977
    .end local p3    # "i":I
    :cond_4
    iput v6, v2, Lcom/facebook/ads/redexgen/X/lz;->A02:I

    .line 97978
    iput v5, v2, Lcom/facebook/ads/redexgen/X/lz;->A03:I

    .line 97979
    const v5, 0x7fffffff

    .line 97980
    .local p3, "bestMimeTypeMatchIndex":I
    const/4 v4, 0x0

    .local p4, "i":I
    :goto_5
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A0J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 97981
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/oA;->A0J:Ljava/util/List;

    .line 97982
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97983
    move v5, v4

    .line 97984
    .end local p4    # "i":I
    :cond_5
    iput v5, v2, Lcom/facebook/ads/redexgen/X/lz;->A06:I

    .line 97985
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/76;->A02(I)I

    move-result v1

    const/16 v0, 0x80

    if-ne v1, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A0H:Z

    .line 97986
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/76;->A04(I)I

    move-result v1

    const/16 v0, 0x40

    if-ne v1, v0, :cond_6

    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/lz;->A0G:Z

    .line 97987
    invoke-direct {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/lz;->A00(IZ)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/lz;->A09:I

    .line 97988
    return-void

    .line 97989
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 97990
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 97991
    .end local p4
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 97992
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 97993
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 97994
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 97995
    .end local v7    # "score":I
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private A00(IZ)I
    .locals 2

    .line 97996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/93;->A0B:Z

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/92;->A0S(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97997
    return v1

    .line 97998
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0E:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/93;->A09:Z

    if-nez v0, :cond_1

    .line 97999
    return v1

    .line 98000
    :cond_1
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/92;->A0S(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0E:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/or;->A05:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0N:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0O:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/93;->A04:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_3

    .line 98001
    :cond_2
    const/4 v0, 0x2

    .line 98002
    :goto_0
    return v0

    .line 98003
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/lz;)I
    .locals 6

    .line 98004
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0F:Z

    if-eqz v0, :cond_2

    .line 98005
    invoke-static {}, Lcom/facebook/ads/redexgen/X/92;->A0H()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v5

    .line 98006
    .local v0, "qualityOrdering":Lcom/facebook/ads/redexgen/X/oV;, "Lcom/google/common/collect/Ordering<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/m4;->A01()Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A0F:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A0F:Z

    .line 98007
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A04:I

    .line 98008
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A04:I

    .line 98009
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98010
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oV;->A03()Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AQ;->A06()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    .line 98011
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A05:I

    .line 98012
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A06(II)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A07:I

    .line 98013
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A06(II)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A0D:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A0D:Z

    .line 98014
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A0C:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A0C:Z

    .line 98015
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A02:I

    .line 98016
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A02:I

    .line 98017
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98018
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oV;->A03()Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AQ;->A06()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    .line 98019
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A03:I

    .line 98020
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A06(II)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A0E:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A0E:Z

    .line 98021
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A06:I

    .line 98022
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A06:I

    .line 98023
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98024
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oV;->A03()Lcom/facebook/ads/redexgen/X/AQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/AQ;->A06()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    .line 98025
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A00:I

    .line 98026
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A00:I

    .line 98027
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/oA;->A0O:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/92;->A0H()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oV;->A06()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    .line 98029
    :goto_1
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A0H:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A0H:Z

    .line 98030
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A0G:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A0G:Z

    .line 98031
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m4;->A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A01:I

    .line 98032
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/m4;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A08:I

    .line 98033
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A08:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/m4;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A00:I

    .line 98034
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A00:I

    .line 98035
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 98036
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A0B:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A0B:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98037
    :goto_2
    invoke-virtual {v4, v3, v2, v5}, Lcom/facebook/ads/redexgen/X/m4;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    .line 98038
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/m4;->A05()I

    move-result v0

    .line 98039
    return v0

    .line 98040
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/92;->A0I()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v5

    goto :goto_2

    .line 98041
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/92;->A0I()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    goto :goto_1

    .line 98042
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/92;->A0H()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oV;->A06()Lcom/facebook/ads/redexgen/X/oV;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static A02(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/lz;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/lz;",
            ">;)I"
        }
    .end annotation

    .line 98043
    .local p1, "infos1":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;>;"
    .local p2, "infos2":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;>;"
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/redexgen/X/lz;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lz;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lz;->A01(Lcom/facebook/ads/redexgen/X/lz;)I

    move-result v0

    return v0
.end method

.method public static A03(ILcom/facebook/ads/redexgen/X/oH;Lcom/facebook/ads/redexgen/X/93;[IZLcom/facebook/ads/redexgen/X/jB;)Lcom/facebook/ads/redexgen/X/Am;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/oH;",
            "Lcom/facebook/ads/redexgen/X/93;",
            "[IZ",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/lz;",
            ">;"
        }
    .end annotation

    .line 98044
    .local p7, "withinAudioChannelCountConstraints":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A01()Lcom/facebook/ads/redexgen/X/1h;

    move-result-object v1

    .line 98045
    .local v0, "listBuilder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;>;"
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    move-object v4, p1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    if-ge v5, v0, :cond_0

    .line 98046
    new-instance v2, Lcom/facebook/ads/redexgen/X/lz;

    aget v7, p3, v5

    move v8, p4

    move-object v6, p2

    move-object v9, p5

    move v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/lz;-><init>(ILcom/facebook/ads/redexgen/X/oH;ILcom/facebook/ads/redexgen/X/93;IZLcom/facebook/ads/redexgen/X/jB;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    .line 98047
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98048
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1h;->A05()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

.method private final A04(Lcom/facebook/ads/redexgen/X/lz;)Z
    .locals 5

    .line 98049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/93;->A00:Z

    const/4 v3, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/lz;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/lz;->A0I:[Ljava/lang/String;

    const-string v1, "4j0Ebeo7wJOJZxGoc5hIgJQJaA3nIP6d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "7JU6hRyIHJ6Xx4Pnq3EsCWmSiYve8JpD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A06:I

    if-ne v4, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/93;->A02:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 98050
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/93;->A03:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/E5;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A0A:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/93;->A01:Z

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A0H:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A0H:Z

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A0G:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/lz;->A0G:Z

    if-ne v1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 98051
    :goto_0
    return v0

    .line 98052
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A08()I
    .locals 1

    .line 98053
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A09:I

    return v0
.end method

.method public final bridge synthetic A09(Lcom/facebook/ads/redexgen/X/E5;)Z
    .locals 1

    .line 98054
    check-cast p1, Lcom/facebook/ads/redexgen/X/lz;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lz;->A04(Lcom/facebook/ads/redexgen/X/lz;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 98055
    check-cast p1, Lcom/facebook/ads/redexgen/X/lz;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lz;->A01(Lcom/facebook/ads/redexgen/X/lz;)I

    move-result v0

    return v0
.end method

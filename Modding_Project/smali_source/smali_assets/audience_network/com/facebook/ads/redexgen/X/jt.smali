.class public final Lcom/facebook/ads/redexgen/X/jt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3030
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "H5L2tIFZt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7T8ctTOgfri2uFWYkrl4fLjFw3zYZmyw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rpSuNqLmPSNrp8BaktpsZc4frut4njZi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OS1ujTmztQNXT6hqD6nsoX0kfRSYmmsY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PkY6KfFeVbpCvwlFdEj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TmaVkoyYGnCbszGh0vcMc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "p0AihzwiszaEN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "o1l4pHohEGjnpBhSGl6NtukXiQnI0CCo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jt;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jt;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91037
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;-><init>(I)V

    .line 91038
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections"
    .end annotation

    .line 91039
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/jt;-><init>(ILjava/util/List;)V

    .line 91040
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;)V"
        }
    .end annotation

    .line 91041
    .local p2, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91042
    iput p1, p0, Lcom/facebook/ads/redexgen/X/jt;->A00:I

    .line 91043
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jt;->A01:Ljava/util/List;

    .line 91044
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Kb;)Lcom/facebook/ads/redexgen/X/KX;
    .locals 2

    .line 91045
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jt;->A03(Lcom/facebook/ads/redexgen/X/Kb;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/KX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KX;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Kb;)Lcom/facebook/ads/redexgen/X/Kh;
    .locals 2

    .line 91046
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jt;->A03(Lcom/facebook/ads/redexgen/X/Kb;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Kh;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jt;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x48

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Kb;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Kb;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/or;",
            ">;"
        }
    .end annotation

    .line 91047
    move-object v1, p0

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jt;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91048
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/jt;->A01:Ljava/util/List;

    return-object v0

    .line 91049
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Kb;->A03:[B

    new-instance v7, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    .line 91050
    .local v1, "scratchDescriptorData":Lcom/facebook/ads/redexgen/X/4J;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/jt;->A01:Ljava/util/List;

    .line 91051
    .local v3, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Format;>;"
    :goto_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_7

    .line 91052
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 91053
    .local v4, "descriptorTag":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 91054
    .local v5, "descriptorLength":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v6

    add-int/2addr v6, v0

    .line 91055
    .local v6, "nextDescriptorPosition":I
    const/16 v0, 0x86

    if-ne v1, v0, :cond_6

    .line 91056
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 91057
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    and-int/lit8 v4, v0, 0x1f

    .line 91058
    .local v7, "numberOfServices":I
    const/4 v3, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 91059
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0W(I)Ljava/lang/String;

    move-result-object v8

    .line 91060
    .local v9, "language":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v9

    .line 91061
    .local v10, "captionTypeByte":I
    and-int/lit16 v0, v9, 0x80

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    const/4 v12, 0x1

    .line 91062
    .local v11, "isDigital":Z
    :goto_2
    if-eqz v12, :cond_4

    .line 91063
    const/16 v2, 0x13

    const/16 v1, 0x13

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jt;->A02(III)Ljava/lang/String;

    move-result-object v10

    .line 91064
    .local p1, "mimeType":Ljava/lang/String;
    and-int/lit8 v9, v9, 0x3f

    .line 91065
    .local p2, "accessibilityChannel":I
    .restart local p2
    :goto_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    int-to-byte v0, v0

    .line 91066
    .local v12, "flags":B
    invoke-virtual {v7, v11}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 91067
    const/4 v1, 0x0

    .line 91068
    .local p4, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v12, :cond_3

    .line 91069
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const/4 v11, 0x1

    :goto_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/jt;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v11, 0x0

    goto :goto_4

    .line 91070
    .local p0, "isWideAspectRatio":Z
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/jt;->A03:[Ljava/lang/String;

    const-string v1, "Fx9tcNCtSciYr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "fWuzF8xs7o61BMX22RC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/3U;->A04(Z)Ljava/util/List;

    move-result-object v1

    .line 91071
    .end local p4
    .local p0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 91072
    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 91073
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 91074
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/2D;->A0Z(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 91075
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 91076
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 91077
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91078
    .end local v9    # "language":Ljava/lang/String;
    .end local v10    # "captionTypeByte":I
    .end local v11    # "isDigital":Z
    .end local v12    # "flags":B
    .end local p0    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p1    # "mimeType":Ljava/lang/String;
    .end local p2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91079
    .end local p1
    .end local p2
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jt;->A02(III)Ljava/lang/String;

    move-result-object v10

    .line 91080
    .restart local p1    # "mimeType":Ljava/lang/String;
    const/4 v9, 0x1

    goto :goto_3

    .line 91081
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 91082
    .end local v7    # "numberOfServices":I
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91083
    .end local v4    # "descriptorTag":I
    .end local v5    # "descriptorLength":I
    .end local v6    # "nextDescriptorPosition":I
    goto/16 :goto_0

    .line 91084
    :cond_7
    return-object v5
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jt;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        -0xft
        -0xft
        -0x13t
        -0x16t
        -0x1ct
        -0x1et
        -0xbt
        -0x16t
        -0x10t
        -0x11t
        -0x50t
        -0x1ct
        -0x1at
        -0x1et
        -0x52t
        -0x49t
        -0x4ft
        -0x47t
        -0x28t
        -0x19t
        -0x19t
        -0x1dt
        -0x20t
        -0x26t
        -0x28t
        -0x15t
        -0x20t
        -0x1at
        -0x1bt
        -0x5at
        -0x26t
        -0x24t
        -0x28t
        -0x5ct
        -0x52t
        -0x59t
        -0x51t
        0xct
        0x1bt
        0x1bt
        0x17t
        0x14t
        0xet
        0xct
        0x1ft
        0x14t
        0x1at
        0x19t
        -0x26t
        0x21t
        0x19t
        0xft
        -0x27t
        0xft
        0x21t
        0xdt
        -0x27t
        0xct
        0x14t
        0x1ft
        -0x3dt
        -0x2et
        -0x2et
        -0x32t
        -0x35t
        -0x3bt
        -0x3dt
        -0x2at
        -0x35t
        -0x2ft
        -0x30t
        -0x6ft
        -0x26t
        -0x71t
        -0x2bt
        -0x3bt
        -0x2at
        -0x39t
        -0x6bt
        -0x69t
    .end array-data
.end method

.method private A05(I)Z
    .locals 1

    .line 91085
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jt;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A5I()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Kf;",
            ">;"
        }
    .end annotation

    .line 91086
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final A5N(ILcom/facebook/ads/redexgen/X/Kb;)Lcom/facebook/ads/redexgen/X/Kf;
    .locals 4

    .line 91087
    const/4 v0, 0x2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 91088
    return-object v1

    .line 91089
    :sswitch_0
    const/16 v2, 0x26

    const/16 v1, 0x17

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jt;->A02(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/jj;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jj;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/jd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/jd;-><init>(Lcom/facebook/ads/redexgen/X/KW;)V

    return-object v0

    .line 91090
    :sswitch_1
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/jx;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jx;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    return-object v0

    .line 91091
    :sswitch_2
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    .line 91092
    :cond_0
    const/16 v2, 0x3d

    const/16 v1, 0x14

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jt;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/jj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/jj;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/jd;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jd;-><init>(Lcom/facebook/ads/redexgen/X/KW;)V

    goto :goto_0

    .line 91093
    :sswitch_3
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;->A05(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91094
    return-object v1

    .line 91095
    :cond_1
    :sswitch_4
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/js;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/js;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    return-object v0

    .line 91096
    :sswitch_5
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/k0;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/k0;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    return-object v0

    .line 91097
    :sswitch_6
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Kb;->A02:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/redexgen/X/jr;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jr;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    return-object v0

    .line 91098
    :sswitch_7
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/jt;->A00(Lcom/facebook/ads/redexgen/X/Kb;)Lcom/facebook/ads/redexgen/X/KX;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/jn;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jn;-><init>(Lcom/facebook/ads/redexgen/X/KX;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    return-object v0

    .line 91099
    :sswitch_8
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return-object v1

    .line 91100
    :cond_2
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/jt;->A00(Lcom/facebook/ads/redexgen/X/Kb;)Lcom/facebook/ads/redexgen/X/KX;

    move-result-object v3

    .line 91101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;->A05(I)Z

    move-result v2

    .line 91102
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;->A05(I)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/jo;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/jo;-><init>(Lcom/facebook/ads/redexgen/X/KX;ZZ)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    goto :goto_1

    .line 91103
    :sswitch_9
    new-instance v1, Lcom/facebook/ads/redexgen/X/jm;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/jm;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    return-object v0

    .line 91104
    :sswitch_a
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    return-object v1

    .line 91105
    :cond_3
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/jl;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/jl;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    goto :goto_2

    .line 91106
    :sswitch_b
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/jt;->A01(Lcom/facebook/ads/redexgen/X/Kb;)Lcom/facebook/ads/redexgen/X/Kh;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/jp;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jp;-><init>(Lcom/facebook/ads/redexgen/X/Kh;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    return-object v0

    .line 91107
    :sswitch_c
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jt;->A05(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    return-object v1

    .line 91108
    :cond_4
    const/4 v2, 0x0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ju;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ju;-><init>(ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    goto :goto_3

    .line 91109
    :sswitch_d
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Kb;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/jk;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jk;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    return-object v0

    .line 91110
    :sswitch_e
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/jt;->A01(Lcom/facebook/ads/redexgen/X/Kb;)Lcom/facebook/ads/redexgen/X/Kh;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/jq;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/jq;-><init>(Lcom/facebook/ads/redexgen/X/Kh;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ji;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ji;-><init>(Lcom/facebook/ads/redexgen/X/KJ;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_e
        0x3 -> :sswitch_d
        0x4 -> :sswitch_d
        0xf -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_a
        0x15 -> :sswitch_9
        0x1b -> :sswitch_8
        0x24 -> :sswitch_7
        0x59 -> :sswitch_6
        0x80 -> :sswitch_e
        0x81 -> :sswitch_5
        0x82 -> :sswitch_3
        0x86 -> :sswitch_2
        0x87 -> :sswitch_5
        0x8a -> :sswitch_4
        0xac -> :sswitch_1
        0x101 -> :sswitch_0
    .end sparse-switch
.end method

.class public final Lcom/facebook/ads/redexgen/X/m5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/EA;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/0y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:J

.field public final A08:Lcom/facebook/ads/redexgen/X/3T;

.field public final A09:Lcom/facebook/ads/redexgen/X/EU;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "This is no longer set in the constructor"
    .end annotation
.end field

.field public final A0A:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3145
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ziZaTeBfSFNnIBcgtlZExnB4uOVj2q5B"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5IZt5NWgPCitKNTqtiA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "aLHVXVzU6ljMUMq9dZgrDfQ8JzHl8MF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mvLcqO7QF6VGSUKAdCZC8bhhp8aLucng"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FQUZNhR4lN6thgMMBkcdaTgoY6ZzypcM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "72R8UBsha86AOqtb805OpiOBiH7oe8El"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AjNBccUrYW9zDFgtuo7TyJwkSvkBJU7y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GkSBWsvGG5dBFRJxqtw9GV4lDtiTWOM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/m5;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 98070
    const/16 v2, 0x61a8

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v0, 0x2710

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/facebook/ads/redexgen/X/m5;-><init>(IIIF)V

    .line 98071
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 13

    .line 98072
    const-wide/16 v10, 0x7d0

    sget-object v12, Lcom/facebook/ads/redexgen/X/3T;->A00:Lcom/facebook/ads/redexgen/X/3T;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v6, 0x4ff

    const/16 v7, 0x2cf

    const/high16 v9, 0x3f400000    # 0.75f

    move-object v0, p0

    move/from16 v8, p4

    move/from16 v5, p3

    move v4, p2

    move v3, p1

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/redexgen/X/m5;-><init>(Lcom/facebook/ads/redexgen/X/EU;IIIIIIFFJLcom/facebook/ads/redexgen/X/3T;)V

    .line 98073
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EU;)V
    .locals 13

    .line 98074
    const-wide/16 v10, 0x7d0

    sget-object v12, Lcom/facebook/ads/redexgen/X/3T;->A00:Lcom/facebook/ads/redexgen/X/3T;

    const/4 v2, -0x1

    const/16 v3, 0x2710

    const/16 v4, 0x61a8

    const/16 v5, 0x61a8

    const/16 v6, 0x4ff

    const/16 v7, 0x2cf

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v9, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/redexgen/X/m5;-><init>(Lcom/facebook/ads/redexgen/X/EU;IIIIIIFFJLcom/facebook/ads/redexgen/X/3T;)V

    .line 98075
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EU;IIIIIIFFJLcom/facebook/ads/redexgen/X/3T;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/EU;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            value = "No longer set through factory"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            value = "Non standard variable; used in oculus"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            value = "Removed from upstream"
        .end annotation
    .end param

    .line 98076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98077
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/m5;->A09:Lcom/facebook/ads/redexgen/X/EU;

    .line 98078
    iput p2, p0, Lcom/facebook/ads/redexgen/X/m5;->A0A:I

    .line 98079
    iput p3, p0, Lcom/facebook/ads/redexgen/X/m5;->A05:I

    .line 98080
    iput p4, p0, Lcom/facebook/ads/redexgen/X/m5;->A02:I

    .line 98081
    iput p5, p0, Lcom/facebook/ads/redexgen/X/m5;->A06:I

    .line 98082
    iput p6, p0, Lcom/facebook/ads/redexgen/X/m5;->A04:I

    .line 98083
    iput p7, p0, Lcom/facebook/ads/redexgen/X/m5;->A03:I

    .line 98084
    iput p8, p0, Lcom/facebook/ads/redexgen/X/m5;->A00:F

    .line 98085
    iput p9, p0, Lcom/facebook/ads/redexgen/X/m5;->A01:F

    .line 98086
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/m5;->A07:J

    .line 98087
    iput-object p12, p0, Lcom/facebook/ads/redexgen/X/m5;->A08:Lcom/facebook/ads/redexgen/X/3T;

    .line 98088
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/oH;[IILcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/0y;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oH;",
            "[II",
            "Lcom/facebook/ads/redexgen/X/EU;",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/Ds;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/0y;"
        }
    .end annotation

    .local v29, "adaptationCheckpoints":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    move-object/from16 v14, p0

    .line 98089
    new-instance v15, Lcom/facebook/ads/redexgen/X/0y;

    iget v13, v14, Lcom/facebook/ads/redexgen/X/m5;->A0A:I

    iget v0, v14, Lcom/facebook/ads/redexgen/X/m5;->A05:I

    int-to-long v8, v0

    iget v0, v14, Lcom/facebook/ads/redexgen/X/m5;->A02:I

    int-to-long v6, v0

    iget v0, v14, Lcom/facebook/ads/redexgen/X/m5;->A06:I

    int-to-long v4, v0

    iget v12, v14, Lcom/facebook/ads/redexgen/X/m5;->A04:I

    iget v11, v14, Lcom/facebook/ads/redexgen/X/m5;->A03:I

    iget v10, v14, Lcom/facebook/ads/redexgen/X/m5;->A00:F

    move-object v15, v15

    iget v3, v14, Lcom/facebook/ads/redexgen/X/m5;->A01:F

    iget-wide v1, v14, Lcom/facebook/ads/redexgen/X/m5;->A07:J

    iget-object v0, v14, Lcom/facebook/ads/redexgen/X/m5;->A08:Lcom/facebook/ads/redexgen/X/3T;

    move-object/from16 v33, p5

    move-object/from16 v19, p4

    move/from16 v18, p3

    move-object/from16 v17, p2

    move-object/from16 v16, p1

    move/from16 v28, v11

    move/from16 v29, v10

    move/from16 v30, v3

    move-wide/from16 v31, v1

    move-object/from16 v34, v0

    move-wide/from16 v25, v4

    move/from16 v27, v12

    move-wide/from16 v21, v8

    move-wide/from16 v23, v6

    move/from16 v20, v13

    invoke-direct/range {v15 .. v34}, Lcom/facebook/ads/redexgen/X/0y;-><init>(Lcom/facebook/ads/redexgen/X/oH;[IILcom/facebook/ads/redexgen/X/EU;IJJJIIFFJLjava/util/List;Lcom/facebook/ads/redexgen/X/3T;)V

    return-object v15
.end method


# virtual methods
.method public final A5T([Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)[Lcom/facebook/ads/redexgen/X/lj;
    .locals 13

    .line 98090
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/0y;->A01([Lcom/facebook/ads/redexgen/X/E9;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v5

    .line 98091
    .local v1, "adaptationCheckpoints":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    array-length v0, p1

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/lj;

    .line 98092
    .local v2, "selections":[Lcom/facebook/ads/redexgen/X/lj;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_4

    .line 98093
    aget-object v7, p1, v3

    .line 98094
    .local v4, "definition":Lcom/facebook/ads/redexgen/X/E9;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/E9;->A02:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 98095
    .end local v4    # "definition":Lcom/facebook/ads/redexgen/X/E9;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98096
    :cond_1
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/E9;->A02:[I

    array-length v6, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/m5;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/m5;->A0B:[Ljava/lang/String;

    const-string v1, "4JDRhnBkti3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 98097
    iget-object v6, v7, Lcom/facebook/ads/redexgen/X/E9;->A01:Lcom/facebook/ads/redexgen/X/oH;

    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/E9;->A02:[I

    const/4 v0, 0x0

    aget v2, v1, v0

    iget v1, v7, Lcom/facebook/ads/redexgen/X/E9;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/0x;

    invoke-direct {v0, v6, v2, v1}, Lcom/facebook/ads/redexgen/X/0x;-><init>(Lcom/facebook/ads/redexgen/X/oH;II)V

    .line 98098
    :goto_2
    aput-object v0, v4, v3

    goto :goto_1

    :cond_3
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/E9;->A01:Lcom/facebook/ads/redexgen/X/oH;

    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/E9;->A02:[I

    iget v10, v7, Lcom/facebook/ads/redexgen/X/E9;->A00:I

    .line 98099
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/Am;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/ads/redexgen/X/Am;

    .line 98100
    move-object v7, p0

    move-object v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/m5;->A00(Lcom/facebook/ads/redexgen/X/oH;[IILcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/Am;)Lcom/facebook/ads/redexgen/X/0y;

    move-result-object v0

    goto :goto_2

    .line 98101
    .end local v3    # "i":I
    :cond_4
    return-object v4
.end method

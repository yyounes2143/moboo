.class public final Lcom/facebook/ads/redexgen/X/6Y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6X;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6Z;

.field public A01:Z

.field public A02:Z

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/6Y;

.field public A05:Lcom/facebook/ads/redexgen/X/mA;

.field public A06:Lcom/facebook/ads/redexgen/X/EL;

.field public final A07:Lcom/facebook/ads/redexgen/X/mM;

.field public final A08:Ljava/lang/Object;

.field public final A09:[Lcom/facebook/ads/redexgen/X/Cr;

.field public final A0A:Lcom/facebook/ads/redexgen/X/6X;

.field public final A0B:Lcom/facebook/ads/redexgen/X/EK;

.field public final A0C:[Lcom/facebook/ads/redexgen/X/7D;

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 394
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qTjlphzGhjtz23pZpbkrfGV3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gcvQ0aFRAZsVeDDMvPpq9fmBIR43z3dS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1g2pSH5s64tGUAh3eJ0e3X43Q9jzw3mq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lB1M4R9KcDs1NZsKBVQ3JQYLP4RbMvTH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7AgciWFjZyCuzmH359m88XAJrahqi7eF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Et2BwvNp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oz1eJxJHgMWzrYsZQ0zZlFN1YCxGY3CZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Iy7o67ktSbvMBIxm3lxnuK7UTKgUaVFx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6Y;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6Y;->A04()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/7D;JLcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/CL;Lcom/facebook/ads/redexgen/X/6Z;Lcom/facebook/ads/redexgen/X/EL;)V
    .locals 9
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Old exoplayer method. requires deleting"
    .end annotation

    .line 17890
    move-object v1, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17891
    iput-object p1, v1, Lcom/facebook/ads/redexgen/X/6Y;->A0C:[Lcom/facebook/ads/redexgen/X/7D;

    .line 17892
    move-object/from16 v4, p7

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    sub-long/2addr p2, v2

    iput-wide p2, v1, Lcom/facebook/ads/redexgen/X/6Y;->A03:J

    .line 17893
    iput-object p4, v1, Lcom/facebook/ads/redexgen/X/6Y;->A0B:Lcom/facebook/ads/redexgen/X/EK;

    .line 17894
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A08:Ljava/lang/Object;

    .line 17895
    iput-object v4, v1, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    .line 17896
    sget-object v0, Lcom/facebook/ads/redexgen/X/mA;->A06:Lcom/facebook/ads/redexgen/X/mA;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A05:Lcom/facebook/ads/redexgen/X/mA;

    .line 17897
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    .line 17898
    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Cr;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A09:[Lcom/facebook/ads/redexgen/X/Cr;

    .line 17899
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A0D:[Z

    .line 17900
    new-instance v0, Lcom/facebook/ads/redexgen/X/nN;

    move-object v2, p6

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/nN;-><init>(Lcom/facebook/ads/redexgen/X/6Y;Lcom/facebook/ads/redexgen/X/CL;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A0A:Lcom/facebook/ads/redexgen/X/6X;

    .line 17901
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/6Y;->A0A:Lcom/facebook/ads/redexgen/X/6X;

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/6Z;->A01:J

    .line 17902
    move-object v4, p5

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/6Y;->A00(Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/6X;Lcom/facebook/ads/redexgen/X/EO;JJ)Lcom/facebook/ads/redexgen/X/mM;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    .line 17903
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/6X;Lcom/facebook/ads/redexgen/X/EO;JJ)Lcom/facebook/ads/redexgen/X/mM;
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "MediaSourceList is temporarily changed to MediaSourceAdapter"
    .end annotation

    .line 17904
    invoke-interface {p1, p0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/6X;->A5O(Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/redexgen/X/EO;J)Lcom/facebook/ads/redexgen/X/mM;

    move-result-object p1

    .line 17905
    .local p5, "mediaPeriod":Lcom/facebook/ads/redexgen/X/mM;
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p5, v1

    if-eqz v0, :cond_0

    .line 17906
    new-instance p0, Lcom/facebook/ads/redexgen/X/9F;

    const/4 p2, 0x1

    const-wide/16 p3, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/9F;-><init>(Lcom/facebook/ads/redexgen/X/mM;ZJJ)V

    move-object p1, p0

    .line 17907
    :cond_0
    return-object p1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6Y;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 3

    .line 17908
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17909
    return-void

    .line 17910
    :cond_0
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/EL;->A00:I

    if-ge v2, v0, :cond_2

    .line 17911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/EL;->A00(I)Z

    move-result v1

    .line 17912
    .local v1, "rendererEnabled":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EL;->A04:[Lcom/facebook/ads/redexgen/X/lj;

    aget-object v0, v0, v2

    .line 17913
    .local v2, "trackSelection":Lcom/facebook/ads/redexgen/X/lj;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 17914
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lj;->A5p()V

    .line 17915
    .end local v1    # "rendererEnabled":Z
    .end local v2    # "trackSelection":Lcom/facebook/ads/redexgen/X/lj;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17916
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private A03()V
    .locals 3

    .line 17917
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17918
    return-void

    .line 17919
    :cond_0
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/EL;->A00:I

    if-ge v2, v0, :cond_2

    .line 17920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/EL;->A00(I)Z

    move-result v1

    .line 17921
    .local v1, "rendererEnabled":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/EL;->A04:[Lcom/facebook/ads/redexgen/X/lj;

    aget-object v0, v0, v2

    .line 17922
    .local v2, "trackSelection":Lcom/facebook/ads/redexgen/X/lj;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 17923
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lj;->A6C()V

    .line 17924
    .end local v1    # "rendererEnabled":Z
    .end local v2    # "trackSelection":Lcom/facebook/ads/redexgen/X/lj;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17925
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6Y;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x51t
        0x79t
        0x78t
        0x75t
        0x7dt
        0x4ct
        0x79t
        0x6et
        0x75t
        0x73t
        0x78t
        0x54t
        0x73t
        0x70t
        0x78t
        0x79t
        0x6et
        0x1ct
        0x29t
        0x3et
        0x25t
        0x23t
        0x28t
        0x6ct
        0x3et
        0x29t
        0x20t
        0x29t
        0x2dt
        0x3ft
        0x29t
        0x6ct
        0x2at
        0x2dt
        0x25t
        0x20t
        0x29t
        0x28t
        0x62t
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/6X;Lcom/facebook/ads/redexgen/X/mM;)V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Temporary bridging of MediaSourceList with MediaSourceAdapter"
    .end annotation

    .line 17926
    :try_start_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/9F;

    if-eqz v0, :cond_0

    .line 17927
    check-cast p1, Lcom/facebook/ads/redexgen/X/9F;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9F;->A05:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/6X;->AH0(Lcom/facebook/ads/redexgen/X/mM;)V

    goto :goto_0

    .line 17928
    :cond_0
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/6X;->AH0(Lcom/facebook/ads/redexgen/X/mM;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17929
    :catch_0
    move-exception p1

    .line 17930
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Y;->A01(III)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x11

    const/16 v1, 0x16

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17931
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private A06([Lcom/facebook/ads/redexgen/X/Cr;)V
    .locals 3

    .line 17932
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A0C:[Lcom/facebook/ads/redexgen/X/7D;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 17933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A0C:[Lcom/facebook/ads/redexgen/X/7D;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7D;->A9F()I

    move-result v1

    const/4 v0, -0x2

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    .line 17934
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/EL;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17935
    new-instance v0, Lcom/facebook/ads/redexgen/X/mO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mO;-><init>()V

    aput-object v0, p1, v2

    .line 17936
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17937
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private A07([Lcom/facebook/ads/redexgen/X/Cr;)V
    .locals 3

    .line 17938
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A0C:[Lcom/facebook/ads/redexgen/X/7D;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 17939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A0C:[Lcom/facebook/ads/redexgen/X/7D;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7D;->A9F()I

    move-result v1

    const/4 v0, -0x2

    if-ne v1, v0, :cond_0

    .line 17940
    const/4 v0, 0x0

    aput-object v0, p1, v2

    .line 17941
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17942
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private A08()Z
    .locals 1

    .line 17943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A09()J
    .locals 5

    .line 17944
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A02:Z

    if-nez v0, :cond_0

    .line 17945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    return-wide v0

    .line 17946
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A01:Z

    const-wide/high16 v3, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/mM;->A70()J

    move-result-wide v1

    .line 17947
    .local v3, "bufferedPositionUs":J
    :goto_0
    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/6Z;->A00:J

    :cond_1
    return-wide v1

    .line 17948
    :cond_2
    move-wide v1, v3

    goto :goto_0
.end method

.method public final A0A()J
    .locals 2

    .line 17949
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A02:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/mM;->A8T()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A0B()J
    .locals 2

    .line 17950
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A03:J

    return-wide v0
.end method

.method public final A0C(J)J
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
    .end annotation

    .line 17951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cv;->A6y(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0D(J)J
    .locals 2

    .line 17952
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A0B()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final A0E(J)J
    .locals 2

    .line 17953
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A0B()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/EL;JZ)J
    .locals 6

    .line 17954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A0C:[Lcom/facebook/ads/redexgen/X/7D;

    array-length v0, v0

    new-array v5, v0, [Z

    move-object v0, p0

    move v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6Y;->A0G(Lcom/facebook/ads/redexgen/X/EL;JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/EL;JZ[Z)J
    .locals 12

    .line 17955
    move-object v3, p0

    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/EL;->A00:I

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-ge v5, v0, :cond_2

    .line 17956
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/6Y;->A0D:[Z

    if-nez p4, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    .line 17957
    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/EL;->A01(Lcom/facebook/ads/redexgen/X/EL;I)Z

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/6Y;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6Y;->A0F:[Ljava/lang/String;

    const-string v1, "ZW5cY05fUZ7YDJtoLiROAD1s3u7pqZaY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "DBvv8TdqbKzS7YgGUgxEKNMIgeBwY4FK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    aput-boolean v4, v6, v5

    .line 17958
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17959
    .end local v2    # "i":I
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A09:[Lcom/facebook/ads/redexgen/X/Cr;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6Y;->A07([Lcom/facebook/ads/redexgen/X/Cr;)V

    .line 17960
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A02()V

    .line 17961
    iput-object p1, v3, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    .line 17962
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A03()V

    .line 17963
    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/EL;->A04:[Lcom/facebook/ads/redexgen/X/lj;

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/6Y;->A0D:[Z

    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/6Y;->A09:[Lcom/facebook/ads/redexgen/X/Cr;

    .line 17964
    move-object/from16 v9, p5

    move-wide v10, p2

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/mM;->AIP([Lcom/facebook/ads/redexgen/X/lj;[Z[Lcom/facebook/ads/redexgen/X/Cr;[ZJ)J

    move-result-wide v5

    .line 17965
    .end local p3
    .local v2, "positionUs":J
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A09:[Lcom/facebook/ads/redexgen/X/Cr;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6Y;->A06([Lcom/facebook/ads/redexgen/X/Cr;)V

    .line 17966
    iput-boolean v4, v3, Lcom/facebook/ads/redexgen/X/6Y;->A01:Z

    .line 17967
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A09:[Lcom/facebook/ads/redexgen/X/Cr;

    array-length v0, v0

    if-ge v4, v0, :cond_6

    .line 17968
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A09:[Lcom/facebook/ads/redexgen/X/Cr;

    aget-object v0, v0, v4

    if-eqz v0, :cond_4

    .line 17969
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/EL;->A00(I)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 17970
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/6Y;->A0C:[Lcom/facebook/ads/redexgen/X/7D;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7D;->A9F()I

    move-result v1

    const/4 v0, -0x2

    if-eq v1, v0, :cond_3

    .line 17971
    iput-boolean v2, v3, Lcom/facebook/ads/redexgen/X/6Y;->A01:Z

    .line 17972
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17973
    :cond_4
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/EL;->A04:[Lcom/facebook/ads/redexgen/X/lj;

    aget-object v0, v0, v4

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 17974
    .end local v6    # "i":I
    :cond_6
    return-wide v5
.end method

.method public final A0H(Z)J
    .locals 4
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
    .end annotation

    .line 17975
    if-nez p1, :cond_0

    .line 17976
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A03:J

    return-wide v0

    .line 17977
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A03:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A0I()Lcom/facebook/ads/redexgen/X/6Y;
    .locals 1

    .line 17978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/mA;
    .locals 1

    .line 17979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A05:Lcom/facebook/ads/redexgen/X/mA;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/EL;
    .locals 1

    .line 17980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A06:Lcom/facebook/ads/redexgen/X/EL;

    return-object v0
.end method

.method public final A0L(FLcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/EL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 17981
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6Y;->A0B:Lcom/facebook/ads/redexgen/X/EK;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6Y;->A0C:[Lcom/facebook/ads/redexgen/X/7D;

    .line 17982
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A0J()Lcom/facebook/ads/redexgen/X/mA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A04:Lcom/facebook/ads/redexgen/X/mL;

    invoke-virtual {v3, v2, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/EK;->A0b([Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/EL;

    move-result-object v4

    .line 17983
    .local v0, "selectorResult":Lcom/facebook/ads/redexgen/X/EL;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/EL;->A04:[Lcom/facebook/ads/redexgen/X/lj;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, v3, v1

    .line 17984
    .local v4, "trackSelection":Lcom/facebook/ads/redexgen/X/lj;
    if-eqz v0, :cond_0

    .line 17985
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/lj;->AEc(F)V

    .line 17986
    .end local v4    # "trackSelection":Lcom/facebook/ads/redexgen/X/lj;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17987
    :cond_1
    return-object v4
.end method

.method public final A0M()V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "MediaSourceAdapter to be replaced with MediaSourceList"
    .end annotation

    .line 17988
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A02()V

    .line 17989
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Y;->A0A:Lcom/facebook/ads/redexgen/X/6X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/6Y;->A05(Lcom/facebook/ads/redexgen/X/6X;Lcom/facebook/ads/redexgen/X/mM;)V

    .line 17990
    return-void
.end method

.method public final A0N(FLcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 17991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A02:Z

    .line 17992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/mM;->A9E()Lcom/facebook/ads/redexgen/X/mA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A05:Lcom/facebook/ads/redexgen/X/mA;

    .line 17993
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6Y;->A0L(FLcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/EL;

    move-result-object v3

    .line 17994
    .local v0, "selectorResult":Lcom/facebook/ads/redexgen/X/EL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    .line 17995
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6Y;->A0F(Lcom/facebook/ads/redexgen/X/EL;JZ)J

    move-result-wide v2

    .line 17996
    .local v1, "newStartPositionUs":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/6Y;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/6Z;->A03:J

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/6Y;->A03:J

    .line 17997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/6Z;->A00(J)Lcom/facebook/ads/redexgen/X/6Z;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/6Z;

    .line 17998
    return-void
.end method

.method public final A0O(J)V
    .locals 3

    .line 17999
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A08()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 18000
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6Y;->A0D(J)J

    move-result-wide v1

    .line 18001
    .local v0, "loadingPeriodPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/mM;->A54(J)Z

    .line 18002
    return-void
.end method

.method public final A0P(J)V
    .locals 3

    .line 18003
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A08()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 18004
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A02:Z

    if-eqz v0, :cond_0

    .line 18005
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6Y;->A0D(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/mM;->AGm(J)V

    .line 18006
    :cond_0
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/6Y;)V
    .locals 1

    .line 18007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    if-ne p1, v0, :cond_0

    .line 18008
    return-void

    .line 18009
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A02()V

    .line 18010
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Y;->A04:Lcom/facebook/ads/redexgen/X/6Y;

    .line 18011
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6Y;->A03()V

    .line 18012
    return-void
.end method

.method public final A0R()Z
    .locals 5

    .line 18013
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A02:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A01:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A07:Lcom/facebook/ads/redexgen/X/mM;

    .line 18014
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/mM;->A70()J

    move-result-wide v3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 18015
    :goto_0
    return v0

    .line 18016
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

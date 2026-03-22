.class public final Lcom/facebook/ads/redexgen/X/jr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KJ;


# static fields
.field public static A06:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Z

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ka;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:[Lcom/facebook/ads/redexgen/X/H1;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jr;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ka;",
            ">;)V"
        }
    .end annotation

    .line 90918
    .local p1, "subtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90919
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jr;->A04:Ljava/util/List;

    .line 90920
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/H1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A05:[Lcom/facebook/ads/redexgen/X/H1;

    .line 90921
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A02:J

    .line 90922
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jr;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

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

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jr;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x10t
        0x10t
        0xct
        0x9t
        0x3t
        0x1t
        0x14t
        0x9t
        0xft
        0xet
        -0x31t
        0x4t
        0x16t
        0x2t
        0x13t
        0x15t
        0x2t
        0x13t
    .end array-data
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4J;I)Z
    .locals 2

    .line 90923
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 90924
    return v1

    .line 90925
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 90926
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jr;->A03:Z

    .line 90927
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:I

    .line 90928
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A03:Z

    return v0
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 6

    .line 90929
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A03:Z

    if-eqz v0, :cond_3

    .line 90930
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/jr;->A02(Lcom/facebook/ads/redexgen/X/4J;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90931
    return-void

    .line 90932
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:I

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/jr;->A02(Lcom/facebook/ads/redexgen/X/4J;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90933
    return-void

    .line 90934
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    .line 90935
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v3

    .line 90936
    .local v2, "bytesAvailable":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jr;->A05:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v1, v2

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v0, v2, v5

    .line 90937
    .local v5, "output":Lcom/facebook/ads/redexgen/X/H1;
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 90938
    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 90939
    .end local v5    # "output":Lcom/facebook/ads/redexgen/X/H1;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 90940
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A01:I

    .line 90941
    .end local v0    # "dataPosition":I
    .end local v2    # "bytesAvailable":I
    :cond_3
    return-void
.end method

.method public final A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 7

    .line 90942
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A05:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 90943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A04:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/Ka;

    .line 90944
    .local v1, "subtitleInfo":Lcom/facebook/ads/redexgen/X/Ka;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 90945
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v3

    .line 90946
    .local v2, "output":Lcom/facebook/ads/redexgen/X/H1;
    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 90947
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v5

    .line 90948
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jr;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Ka;->A02:[B

    .line 90949
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Ka;->A01:Ljava/lang/String;

    .line 90950
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90951
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 90952
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 90953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A05:[Lcom/facebook/ads/redexgen/X/H1;

    aput-object v3, v0, v4

    .line 90954
    .end local v1    # "subtitleInfo":Lcom/facebook/ads/redexgen/X/Ka;
    .end local v2    # "output":Lcom/facebook/ads/redexgen/X/H1;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90955
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final AG5()V
    .locals 11

    .line 90956
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A03:Z

    if-eqz v0, :cond_1

    .line 90957
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/jr;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 90958
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jr;->A05:[Lcom/facebook/ads/redexgen/X/H1;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v2, v0

    .line 90959
    .local v3, "output":Lcom/facebook/ads/redexgen/X/H1;
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/jr;->A02:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/jr;->A01:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 90960
    .end local v3    # "output":Lcom/facebook/ads/redexgen/X/H1;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90961
    :cond_0
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/jr;->A03:Z

    .line 90962
    :cond_1
    return-void
.end method

.method public final AG6(JI)V
    .locals 3

    .line 90963
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_0

    .line 90964
    return-void

    .line 90965
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A03:Z

    .line 90966
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    .line 90967
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/jr;->A02:J

    .line 90968
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A01:I

    .line 90969
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:I

    .line 90970
    return-void
.end method

.method public final AIL()V
    .locals 2

    .line 90971
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A03:Z

    .line 90972
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A02:J

    .line 90973
    return-void
.end method

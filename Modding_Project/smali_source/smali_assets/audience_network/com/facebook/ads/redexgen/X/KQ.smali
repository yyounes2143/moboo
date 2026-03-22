.class public final Lcom/facebook/ads/redexgen/X/KQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KP;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/KP;

.field public A07:Lcom/facebook/ads/redexgen/X/KP;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:[B

.field public final A0C:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Go;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Gp;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Lcom/facebook/ads/redexgen/X/Gs;

.field public final A0F:Lcom/facebook/ads/redexgen/X/H1;

.field public final A0G:Z

.field public final A0H:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 949
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PiFB59Vxde45j8XGh3VNLS0bXquL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eCGnEp7n3q"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QH0EN4bfbiXOmvaYxmEgWcgYRTVGFgtW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ynU2FJVvbbIz4lLWIxM7HwzaaEzIs2yM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "B"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nKAZbJPu58l8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2xLWRKjlXe7o2y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tMbtJGMRwKJD523"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H1;ZZ)V
    .locals 3

    .line 48909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48910
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0F:Lcom/facebook/ads/redexgen/X/H1;

    .line 48911
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0G:Z

    .line 48912
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0H:Z

    .line 48913
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0D:Landroid/util/SparseArray;

    .line 48914
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0C:Landroid/util/SparseArray;

    .line 48915
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KP;-><init>(Lcom/facebook/ads/redexgen/X/KO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A06:Lcom/facebook/ads/redexgen/X/KP;

    .line 48916
    new-instance v0, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KP;-><init>(Lcom/facebook/ads/redexgen/X/KO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A07:Lcom/facebook/ads/redexgen/X/KP;

    .line 48917
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0B:[B

    .line 48918
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0B:[B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gs;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/Gs;-><init>([BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    .line 48919
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KQ;->A01()V

    .line 48920
    return-void
.end method

.method private A00(I)V
    .locals 8

    .line 48921
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KQ;->A05:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 48922
    return-void

    .line 48923
    :cond_0
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0A:Z

    .line 48924
    .local p0, "flags":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/KQ;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A04:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    .line 48925
    .local v1, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0F:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/KQ;->A05:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 48926
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 48927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A08:Z

    .line 48928
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A09:Z

    .line 48929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A07:Lcom/facebook/ads/redexgen/X/KP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KP;->A02()V

    .line 48930
    return-void
.end method

.method public final A02(JIJ)V
    .locals 6

    .line 48931
    iput p3, p0, Lcom/facebook/ads/redexgen/X/KQ;->A01:I

    .line 48932
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/KQ;->A03:J

    .line 48933
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A02:J

    .line 48934
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0G:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A01:I

    if-eq v0, v5, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0H:Z

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A01:I

    if-eq v0, v5, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A01:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 48935
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KQ;->A06:Lcom/facebook/ads/redexgen/X/KP;

    .line 48936
    .local v0, "newSliceHeader":Lcom/facebook/ads/redexgen/X/KP;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KQ;->A07:Lcom/facebook/ads/redexgen/X/KP;

    sget-object v1, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v1, "uj74NyijhUvg4q"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/KQ;->A06:Lcom/facebook/ads/redexgen/X/KP;

    .line 48937
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/KQ;->A07:Lcom/facebook/ads/redexgen/X/KP;

    .line 48938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A07:Lcom/facebook/ads/redexgen/X/KP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KP;->A02()V

    .line 48939
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A00:I

    .line 48940
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/KQ;->A08:Z

    .line 48941
    .end local v0    # "newSliceHeader":Lcom/facebook/ads/redexgen/X/KP;
    :cond_3
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Go;)V
    .locals 2

    .line 48942
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0C:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Go;->A00:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48943
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Gp;)V
    .locals 2

    .line 48944
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0D:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gp;->A09:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48945
    return-void
.end method

.method public final A05([BII)V
    .locals 22

    .line 48946
    move/from16 v5, p3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A08:Z

    if-nez v1, :cond_0

    .line 48947
    return-void

    .line 48948
    :cond_0
    move/from16 v6, p2

    sub-int/2addr v5, v6

    .line 48949
    .local v2, "readLength":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0B:[B

    array-length v2, v1

    iget v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A00:I

    add-int/2addr v1, v5

    const/4 v4, 0x2

    if-ge v2, v1, :cond_1

    .line 48950
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0B:[B

    iget v7, v0, Lcom/facebook/ads/redexgen/X/KQ;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v2, v2, v1

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x7a

    if-eq v2, v1, :cond_5

    sget-object v3, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v2, "fF62whIImPZuUxQ3wOrH7qahZ1W3GZDe"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    add-int/2addr v7, v5

    mul-int/lit8 v1, v7, 0x2

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0B:[B

    .line 48951
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A00:I

    move-object/from16 v3, p1

    invoke-static {v3, v6, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48952
    iget v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A00:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A00:I

    .line 48953
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A00:I

    const/4 v2, 0x0

    invoke-virtual {v5, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A08([BII)V

    .line 48954
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A0B(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 48955
    return-void

    .line 48956
    :cond_2
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 48957
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v9

    .line 48958
    .local v3, "nalRefIdc":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 48959
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A09()Z

    move-result v1

    if-nez v1, :cond_3

    .line 48960
    return-void

    .line 48961
    :cond_3
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 48962
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A09()Z

    move-result v1

    if-nez v1, :cond_4

    .line 48963
    return-void

    .line 48964
    :cond_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v10

    .line 48965
    .local v4, "sliceType":I
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0H:Z

    if-nez v1, :cond_7

    .line 48966
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/KQ;->A08:Z

    .line 48967
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KQ;->A07:Lcom/facebook/ads/redexgen/X/KP;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/KP;->A03(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48968
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v1, "L"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "t7NRPrzJk7qeXS0lN2m3lGyrxGU0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 48969
    :cond_7
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A09()Z

    move-result v1

    if-nez v1, :cond_8

    .line 48970
    return-void

    .line 48971
    :cond_8
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v12

    .line 48972
    .local v15, "picParameterSetId":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_9

    .line 48973
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/KQ;->A08:Z

    .line 48974
    return-void

    .line 48975
    :cond_9
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Go;

    .line 48976
    .local v14, "ppsData":Lcom/facebook/ads/redexgen/X/Go;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0D:Landroid/util/SparseArray;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Go;->A01:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/Gp;

    .line 48977
    .local v13, "spsData":Lcom/facebook/ads/redexgen/X/Gp;
    iget-boolean v2, v8, Lcom/facebook/ads/redexgen/X/Gp;->A0D:Z

    if-eqz v2, :cond_b

    .line 48978
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/Gs;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 48979
    return-void

    .line 48980
    :cond_a
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 48981
    :cond_b
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    iget v6, v8, Lcom/facebook/ads/redexgen/X/Gp;->A02:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v3, v2

    const/16 v2, 0x1f

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x52

    if-eq v3, v2, :cond_c

    sget-object v4, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v3, "Y"

    const/4 v2, 0x4

    aput-object v3, v4, v2

    const-string v3, "LBdvSwh0xb7fkSyUzFJrubBBNhQW"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/Gs;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 48982
    :goto_0
    return-void

    :cond_c
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/Gs;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    .line 48983
    :cond_d
    const/4 v13, 0x0

    .line 48984
    .local v5, "fieldPicFlag":Z
    const/4 v14, 0x0

    .line 48985
    .local v9, "bottomFieldFlagPresent":Z
    const/4 v15, 0x0

    .line 48986
    .local v10, "bottomFieldFlag":Z
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/Gp;->A02:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v11

    .line 48987
    .local p2, "frameNum":I
    iget-boolean v3, v8, Lcom/facebook/ads/redexgen/X/Gp;->A0C:Z

    const/4 v2, 0x1

    if-nez v3, :cond_10

    .line 48988
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A0B(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 48989
    return-void

    .line 48990
    :cond_e
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v13

    .line 48991
    if-eqz v13, :cond_12

    .line 48992
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A0B(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 48993
    return-void

    .line 48994
    :cond_f
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v15

    .line 48995
    const/4 v14, 0x1

    goto :goto_1

    .line 48996
    :cond_10
    sget-object v4, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0xa

    if-eq v4, v3, :cond_11

    sget-object v6, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v4, "9PoEa2ZU2Rc4Mb"

    const/4 v3, 0x6

    aput-object v4, v6, v3

    goto :goto_1

    :cond_11
    sget-object v6, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v4, "45zkVvkeN2w0fF"

    const/4 v3, 0x6

    aput-object v4, v6, v3

    goto :goto_1

    .line 48997
    :cond_12
    sget-object v4, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v4, v4, v3

    const/16 v3, 0x1f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x52

    if-eq v4, v3, :cond_13

    sget-object v6, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v4, "3"

    const/4 v3, 0x4

    aput-object v4, v6, v3

    const-string v4, "19iwLQZiC4kcbLDxX6EkwfmmLREP"

    const/4 v3, 0x0

    aput-object v4, v6, v3

    .line 48998
    .end local v9    # "bottomFieldFlagPresent":Z
    .end local v10    # "bottomFieldFlag":Z
    .local p3, "bottomFieldFlagPresent":Z
    .local p4, "bottomFieldFlag":Z
    :cond_13
    :goto_1
    iget v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A01:I

    if-ne v3, v5, :cond_14

    const/16 v16, 0x1

    .line 48999
    .local v7, "idrPicFlag":Z
    :goto_2
    const/16 v17, 0x0

    .line 49000
    .local v9, "idrPicId":I
    if-eqz v16, :cond_16

    .line 49001
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A09()Z

    move-result v3

    if-nez v3, :cond_15

    .line 49002
    return-void

    .line 49003
    :cond_14
    const/16 v16, 0x0

    goto :goto_2

    .line 49004
    :cond_15
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v17

    .line 49005
    .end local v9    # "idrPicId":I
    .local p5, "idrPicId":I
    :cond_16
    const/16 v18, 0x0

    .line 49006
    .local v9, "picOrderCntLsb":I
    const/16 v19, 0x0

    .line 49007
    .local v10, "deltaPicOrderCntBottom":I
    const/16 v20, 0x0

    .line 49008
    .local v11, "deltaPicOrderCnt0":I
    const/16 v21, 0x0

    .line 49009
    .local v16, "deltaPicOrderCnt1":I
    iget v3, v8, Lcom/facebook/ads/redexgen/X/Gp;->A07:I

    if-nez v3, :cond_1a

    .line 49010
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/Gp;->A06:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A0B(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 49011
    return-void

    .line 49012
    :cond_17
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    iget v2, v8, Lcom/facebook/ads/redexgen/X/Gp;->A06:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v18

    .line 49013
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/Go;->A02:Z

    if-eqz v1, :cond_1c

    if-nez v13, :cond_1c

    .line 49014
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A09()Z

    move-result v1

    if-nez v1, :cond_18

    .line 49015
    return-void

    .line 49016
    :cond_18
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    move-result v19

    sget-object v2, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v2, v2, v1

    const/16 v1, 0x1f

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x52

    if-eq v2, v1, :cond_19

    sget-object v3, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v2, "kr3yeibAy42hiyE0dA9TA4Dy6aRxjun2"

    const/4 v1, 0x2

    aput-object v2, v3, v1

    goto :goto_3

    .line 49017
    :cond_19
    sget-object v3, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v2, "MkKVWDrQaD"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    goto :goto_3

    .line 49018
    :cond_1a
    iget v3, v8, Lcom/facebook/ads/redexgen/X/Gp;->A07:I

    if-ne v3, v2, :cond_1c

    iget-boolean v2, v8, Lcom/facebook/ads/redexgen/X/Gp;->A0B:Z

    if-nez v2, :cond_1c

    .line 49019
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Gs;->A09()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 49020
    return-void

    .line 49021
    :cond_1b
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    move-result v20

    .line 49022
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/Go;->A02:Z

    if-eqz v1, :cond_1c

    if-nez v13, :cond_1c

    .line 49023
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A09()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 49024
    return-void

    .line 49025
    :cond_1c
    sget-object v3, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v2, v3, v1

    const/4 v1, 0x7

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_1d

    sget-object v3, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v2, "lSna5RLd1h"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    goto :goto_3

    :cond_1d
    sget-object v3, Lcom/facebook/ads/redexgen/X/KQ;->A0I:[Ljava/lang/String;

    const-string v2, "3KoChTLYrqIZNd"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    goto :goto_3

    .line 49026
    :cond_1e
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A0E:Lcom/facebook/ads/redexgen/X/Gs;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    move-result v21

    .line 49027
    .end local v9    # "picOrderCntLsb":I
    .end local v10    # "deltaPicOrderCntBottom":I
    .end local v11    # "deltaPicOrderCnt0":I
    .end local v16    # "deltaPicOrderCnt1":I
    .local v8, "picOrderCntLsb":I
    .local p6, "deltaPicOrderCntBottom":I
    .local p7, "deltaPicOrderCnt0":I
    .local p8, "deltaPicOrderCnt1":I
    :goto_3
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/KQ;->A07:Lcom/facebook/ads/redexgen/X/KP;

    .end local v13    # "spsData":Lcom/facebook/ads/redexgen/X/Gp;
    .local p9, "spsData":Lcom/facebook/ads/redexgen/X/Gp;
    .end local v14    # "ppsData":Lcom/facebook/ads/redexgen/X/Go;
    .local p10, "ppsData":Lcom/facebook/ads/redexgen/X/Go;
    .end local v15    # "picParameterSetId":I
    .local p11, "picParameterSetId":I
    invoke-virtual/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/KP;->A04(Lcom/facebook/ads/redexgen/X/Gp;IIIIZZZZIIIII)V

    .line 49028
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/KQ;->A08:Z

    .line 49029
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 49030
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0H:Z

    return v0
.end method

.method public final A07(JIZZ)Z
    .locals 5

    .line 49031
    iget v1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A01:I

    const/16 v0, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0H:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A07:Lcom/facebook/ads/redexgen/X/KP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A06:Lcom/facebook/ads/redexgen/X/KP;

    .line 49032
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KP;->A01(Lcom/facebook/ads/redexgen/X/KP;Lcom/facebook/ads/redexgen/X/KP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49033
    :cond_0
    if-eqz p4, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A09:Z

    if-eqz v0, :cond_1

    .line 49034
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A02:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    .line 49035
    .local v1, "nalUnitLength":I
    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/KQ;->A00(I)V

    .line 49036
    .end local v1    # "nalUnitLength":I
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A04:J

    .line 49037
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A05:J

    .line 49038
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0A:Z

    .line 49039
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/KQ;->A09:Z

    .line 49040
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0G:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A07:Lcom/facebook/ads/redexgen/X/KP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KP;->A05()Z

    move-result p5

    .line 49041
    .local v0, "treatIFrameAsKeyframe":Z
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0A:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/KQ;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    if-eqz p5, :cond_5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A01:I

    if-ne v0, v3, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0A:Z

    .line 49042
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KQ;->A0A:Z

    return v0
.end method

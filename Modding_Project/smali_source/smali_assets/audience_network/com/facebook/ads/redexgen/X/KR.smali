.class public final Lcom/facebook/ads/redexgen/X/KR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/H1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 950
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ITeGogKqorZ7bSCIE87s8DTmQOo7Fv11"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MgkbApIEYzpKXgGasWREFXTi3GTadnaL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OAixFelLhBe3iSBS2M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ijopPBuuJeE4Ltql3uBrQuSo8nqq7R3R"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1SB5ttJ09JcNeK6D9rJTpC1clnicerw7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nbktskyiJneEJjHZifeKEa33HsJGsJ62"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZYvdfmJVTREWWhesr4Tm9ps4syTvrO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VkO2l5JSpUAFzoG39IjRbEodOO78G96O"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KR;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 0

    .line 49043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49044
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KR;->A0C:Lcom/facebook/ads/redexgen/X/H1;

    .line 49045
    return-void
.end method

.method private A00(I)V
    .locals 8

    .line 49046
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KR;->A04:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 49047
    return-void

    .line 49048
    :cond_0
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/KR;->A0B:Z

    .line 49049
    .local p0, "flags":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/KR;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A03:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    .line 49050
    .local v1, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KR;->A0C:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/KR;->A04:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 49051
    return-void
.end method

.method public static A01(I)Z
    .locals 1

    .line 49052
    const/16 v0, 0x20

    if-gt v0, p0, :cond_0

    const/16 v0, 0x23

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x27

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02(I)Z
    .locals 1

    .line 49053
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x28

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 49054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A07:Z

    .line 49055
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A06:Z

    .line 49056
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A05:Z

    .line 49057
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A0A:Z

    .line 49058
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A09:Z

    .line 49059
    return-void
.end method

.method public final A04(JIIJZ)V
    .locals 3

    .line 49060
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KR;->A06:Z

    .line 49061
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KR;->A05:Z

    .line 49062
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/KR;->A02:J

    .line 49063
    iput v1, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:I

    .line 49064
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/KR;->A01:J

    .line 49065
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/KR;->A02(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 49066
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A0A:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A09:Z

    if-nez v0, :cond_1

    .line 49067
    if-eqz p7, :cond_0

    .line 49068
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/KR;->A00(I)V

    .line 49069
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KR;->A0A:Z

    .line 49070
    :cond_1
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/KR;->A01(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49071
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A09:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A05:Z

    .line 49072
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/KR;->A09:Z

    .line 49073
    :cond_2
    const/16 v0, 0x10

    if-lt p4, v0, :cond_5

    const/16 v0, 0x15

    if-gt p4, v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A08:Z

    .line 49074
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A08:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    if-gt p4, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KR;->A07:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/KR;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49075
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 49076
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/KR;->A0D:[Ljava/lang/String;

    const-string v1, "HIa27EP0rmwgvhPEN5RK7GL0DsepbL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void
.end method

.method public final A05(JIZ)V
    .locals 2

    .line 49077
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A09:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A06:Z

    if-eqz v0, :cond_1

    .line 49078
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A0B:Z

    .line 49079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A09:Z

    .line 49080
    :cond_0
    :goto_0
    return-void

    .line 49081
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A05:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A06:Z

    if-eqz v0, :cond_0

    .line 49082
    :cond_2
    if-eqz p4, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A0A:Z

    if-eqz v0, :cond_3

    .line 49083
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A01:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    .line 49084
    .local v1, "nalUnitLength":I
    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/KR;->A00(I)V

    .line 49085
    .end local v1    # "nalUnitLength":I
    :cond_3
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A01:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A03:J

    .line 49086
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A04:J

    .line 49087
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A0B:Z

    .line 49088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A0A:Z

    goto :goto_0
.end method

.method public final A06([BII)V
    .locals 2

    .line 49089
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A07:Z

    if-eqz v0, :cond_0

    .line 49090
    add-int/lit8 v1, p2, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:I

    sub-int/2addr v1, v0

    .line 49091
    .local v0, "headerOffset":I
    if-ge v1, p3, :cond_2

    .line 49092
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A06:Z

    .line 49093
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KR;->A07:Z

    .line 49094
    .end local v0    # "headerOffset":I
    :cond_0
    :goto_1
    return-void

    .line 49095
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49096
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:I

    sub-int/2addr p3, p2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KR;->A00:I

    goto :goto_1
.end method

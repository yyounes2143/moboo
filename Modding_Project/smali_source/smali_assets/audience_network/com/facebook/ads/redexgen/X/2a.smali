.class public abstract Lcom/facebook/ads/redexgen/X/2a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2a;)V
    .locals 2

    .line 10053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10054
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    .line 10055
    iget v0, p1, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    .line 10056
    iget v0, p1, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    .line 10057
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    .line 10058
    iget v0, p1, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    .line 10059
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 10060
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/2a;-><init>(Ljava/lang/Object;J)V

    .line 10061
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 7

    .line 10062
    const/4 v6, -0x1

    move-object v0, p0

    move-wide v4, p4

    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/2a;-><init>(Ljava/lang/Object;IIJI)V

    .line 10063
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJI)V
    .locals 0

    .line 10064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10065
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    .line 10066
    iput p2, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    .line 10067
    iput p3, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    .line 10068
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    .line 10069
    iput p6, p0, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    .line 10070
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 7

    .line 10071
    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-wide v4, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/2a;-><init>(Ljava/lang/Object;IIJI)V

    .line 10072
    return-void
.end method


# virtual methods
.method public final A00()Z
    .locals 2

    .line 10073
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 10074
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 10075
    return v5

    .line 10076
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/2a;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 10077
    return v0

    .line 10078
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/2a;

    .line 10079
    .local v1, "periodId":Lcom/facebook/ads/redexgen/X/2a;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    if-ne v1, v0, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    if-ne v1, v0, :cond_2

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 10080
    const/16 v0, 0x11

    .line 10081
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A04:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 10082
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A00:I

    add-int/2addr v1, v0

    .line 10083
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A01:I

    add-int/2addr v1, v0

    .line 10084
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/2a;->A03:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 10085
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v3, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2a;->A02:I

    add-int/2addr v1, v0

    .line 10086
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

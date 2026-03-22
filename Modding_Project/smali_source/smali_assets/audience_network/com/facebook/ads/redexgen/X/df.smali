.class public final Lcom/facebook/ads/redexgen/X/df;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/nl;

.field public final A03:Landroid/net/Uri;

.field public final A04:Lcom/facebook/ads/redexgen/X/4w;

.field public final A05:Lcom/facebook/ads/redexgen/X/cu;

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cu;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/4w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79560
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 79561
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/df;->A05:Lcom/facebook/ads/redexgen/X/cu;

    .line 79562
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/df;->A04:Lcom/facebook/ads/redexgen/X/4w;

    .line 79563
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/df;->A03:Landroid/net/Uri;

    .line 79564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/df;->A05:Lcom/facebook/ads/redexgen/X/cu;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/df;->A03:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A09(Lcom/facebook/ads/redexgen/X/cu;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/df;->A06:Ljava/lang/String;

    .line 79565
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/df;->A00(I)V

    .line 79566
    return-void
.end method

.method private A00(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/df;->A02:Lcom/facebook/ads/redexgen/X/nl;

    if-eqz v0, :cond_0

    .line 79568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/df;->A02:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->close()V

    .line 79569
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/df;->A04:Lcom/facebook/ads/redexgen/X/4w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4w;->A5A()Lcom/facebook/ads/redexgen/X/nl;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/df;->A02:Lcom/facebook/ads/redexgen/X/nl;

    .line 79570
    new-instance v1, Lcom/facebook/ads/redexgen/X/56;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/df;->A03:Landroid/net/Uri;

    int-to-long v3, p1

    const-wide/16 v5, -0x1

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/df;->A06:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/56;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 79571
    .local v0, "dataSpec":Lcom/facebook/ads/redexgen/X/56;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/df;->A02:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/nl;->AFy(Lcom/facebook/ads/redexgen/X/56;)J

    move-result-wide v1

    long-to-int v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/df;->A01:J

    .line 79572
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 79573
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/df;->A01:J

    long-to-int v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/df;->A00:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/df;->A02:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->close()V

    .line 79575
    return-void
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79576
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 79577
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/df;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/df;->A02:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v1

    .line 79579
    .local v0, "read":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/df;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/df;->A00:I

    .line 79580
    return v1
.end method

.method public final skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79581
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/df;->A01:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/df;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    .line 79582
    .local v0, "available":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    .line 79583
    return-wide v1

    .line 79584
    .local v2, "skipped":J
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 79585
    move-wide p1, v3

    .line 79586
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/df;->A00:I

    int-to-long v1, v0

    add-long/2addr v1, p1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/df;->A00:I

    .line 79587
    iget v0, p0, Lcom/facebook/ads/redexgen/X/df;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/df;->A00(I)V

    .line 79588
    return-wide p1
.end method

.class public final Lcom/facebook/ads/redexgen/X/F9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/F8;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/F8;

.field public A03:Lcom/facebook/ads/redexgen/X/F8;

.field public A04:Z

.field public A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 685
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dMFZX87GqTT9Fs0Ar6j3E2RThJ3xoo5C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EZFFHtKPOVGLUG8dVwtPTz8nzxupRUs1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DY3mC9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dvwRzkCZI4VqlMgEqzZkoiwb96J7xIXP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wd3MOH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qlWDoilZ8SCd72klWsfV9j8AsjQ0qExG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jWVrW2Cr0ltYhYujxpjcdhq8TPZz7fCz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Hjt9g6OfaYlBY6sAvmXw7jkFi98u1lZw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F9;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35570
    new-instance v0, Lcom/facebook/ads/redexgen/X/F8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/F8;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    .line 35571
    new-instance v0, Lcom/facebook/ads/redexgen/X/F8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/F8;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A02:Lcom/facebook/ads/redexgen/X/F8;

    .line 35572
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A01:J

    .line 35573
    return-void
.end method


# virtual methods
.method public final A00()F
    .locals 5

    .line 35574
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F9;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A01()J

    move-result-wide v0

    long-to-double v3, v0

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 35576
    :goto_0
    return v0

    .line 35577
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public final A01()I
    .locals 1

    .line 35578
    iget v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A00:I

    return v0
.end method

.method public final A02()J
    .locals 2

    .line 35579
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F9;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A01()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A03()J
    .locals 2

    .line 35580
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F9;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A02()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public final A04()V
    .locals 3

    .line 35581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A03()V

    .line 35582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A02:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A03()V

    .line 35583
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/F9;->A04:Z

    .line 35584
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A01:J

    .line 35585
    iput v2, p0, Lcom/facebook/ads/redexgen/X/F9;->A00:I

    .line 35586
    return-void
.end method

.method public final A05(J)V
    .locals 7

    .line 35587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/F8;->A04(J)V

    .line 35588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A06()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/F9;->A05:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/F9;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35589
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/F9;->A01:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_4

    .line 35590
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A04:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A02:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A05()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35591
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A02:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A03()V

    .line 35592
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F9;->A02:Lcom/facebook/ads/redexgen/X/F8;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A01:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/F8;->A04(J)V

    .line 35593
    :cond_2
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/F9;->A04:Z

    .line 35594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A02:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/F8;->A04(J)V

    goto :goto_0

    .line 35595
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/F9;->A06:[Ljava/lang/String;

    const-string v1, "Bgvzqe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uyRQxe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_0

    .line 35596
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/F9;->A04:Z

    .line 35597
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A04:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A02:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A06()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35598
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    .line 35599
    .local v0, "previousMatcher":Lcom/facebook/ads/redexgen/X/F8;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A02:Lcom/facebook/ads/redexgen/X/F8;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    .line 35600
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/F9;->A02:Lcom/facebook/ads/redexgen/X/F8;

    .line 35601
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/F9;->A04:Z

    .line 35602
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/F9;->A05:Z

    .line 35603
    .end local v0    # "previousMatcher":Lcom/facebook/ads/redexgen/X/F8;
    :cond_5
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/F9;->A01:J

    .line 35604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A06()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    iput v3, p0, Lcom/facebook/ads/redexgen/X/F9;->A00:I

    .line 35605
    return-void

    .line 35606
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A00:I

    add-int/lit8 v3, v0, 0x1

    goto :goto_1
.end method

.method public final A06()Z
    .locals 1

    .line 35607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F9;->A03:Lcom/facebook/ads/redexgen/X/F8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F8;->A06()Z

    move-result v0

    return v0
.end method

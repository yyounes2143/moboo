.class public final Lcom/facebook/ads/redexgen/X/jj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KW;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/or;

.field public A01:Lcom/facebook/ads/redexgen/X/4R;

.field public A02:Lcom/facebook/ads/redexgen/X/H1;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 89966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89967
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 89968
    return-void
.end method

.method private A00()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "timestampAdjuster",
            "output"
        }
    .end annotation

    .line 89969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A01:Lcom/facebook/ads/redexgen/X/4R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89970
    return-void
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 11

    .line 89971
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jj;->A00()V

    .line 89972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A01:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4R;->A03()J

    move-result-wide v5

    .line 89973
    .local v8, "sampleTimestampUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A01:Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4R;->A04()J

    move-result-wide v1

    .line 89974
    .local v10, "subsampleOffsetUs":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 89975
    .end local v0
    :cond_0
    return-void

    .line 89976
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A00:Lcom/facebook/ads/redexgen/X/or;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/or;->A0M:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 89977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A00:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/or;->A07()Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/2D;->A0s(J)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 89978
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jj;->A02:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A00:Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 89979
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v8

    .line 89980
    .local v0, "sampleSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A02:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, p1, v8}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 89981
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/jj;->A02:Lcom/facebook/ads/redexgen/X/H1;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 89982
    return-void
.end method

.method public final AA2(Lcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 2

    .line 89983
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jj;->A01:Lcom/facebook/ads/redexgen/X/4R;

    .line 89984
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 89985
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x5

    invoke-interface {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A02:Lcom/facebook/ads/redexgen/X/H1;

    .line 89986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jj;->A02:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jj;->A00:Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 89987
    return-void
.end method

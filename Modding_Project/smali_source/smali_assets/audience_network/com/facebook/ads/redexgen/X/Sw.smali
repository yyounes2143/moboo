.class public final Lcom/facebook/ads/redexgen/X/Sw;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lorg/json/JSONObject;

.field public A04:Z

.field public A05:Z

.field public A06:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 64700
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64701
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:I

    .line 64702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Z

    .line 64703
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Z

    .line 64704
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A04:Z

    .line 64705
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:I

    .line 64706
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:I

    .line 64707
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 64708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64709
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:I

    .line 64710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Z

    .line 64711
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Z

    .line 64712
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A04:Z

    .line 64713
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:I

    .line 64714
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:I

    .line 64715
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 64716
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 64717
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:I

    .line 64718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Z

    .line 64719
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Z

    .line 64720
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A04:Z

    .line 64721
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:I

    .line 64722
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:I

    .line 64723
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 64724
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 64725
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 64726
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:I

    return v0
.end method

.method public final A03()Lorg/json/JSONObject;
    .locals 1

    .line 64727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A03:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final A04(I)V
    .locals 0

    .line 64728
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:I

    .line 64729
    return-void
.end method

.method public final A05(I)V
    .locals 0

    .line 64730
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:I

    .line 64731
    return-void
.end method

.method public final A06(I)V
    .locals 0

    .line 64732
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A02:I

    .line 64733
    return-void
.end method

.method public final A07(Lorg/json/JSONObject;)V
    .locals 0

    .line 64734
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A03:Lorg/json/JSONObject;

    .line 64735
    return-void
.end method

.method public final A08(Z)V
    .locals 0

    .line 64736
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Z

    .line 64737
    return-void
.end method

.method public final A09(Z)V
    .locals 0

    .line 64738
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A04:Z

    .line 64739
    return-void
.end method

.method public final A0A(Z)V
    .locals 0

    .line 64740
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Z

    .line 64741
    return-void
.end method

.method public final A0B()Z
    .locals 1

    .line 64742
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A05:Z

    return v0
.end method

.method public final A0C()Z
    .locals 1

    .line 64743
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A04:Z

    return v0
.end method

.method public final A0D()Z
    .locals 1

    .line 64744
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A06:Z

    return v0
.end method

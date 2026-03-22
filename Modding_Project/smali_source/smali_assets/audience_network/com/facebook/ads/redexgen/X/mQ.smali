.class public final Lcom/facebook/ads/redexgen/X/mQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClippingSampleStream"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/Cr;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/9F;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3152
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SXf2ikyU7x67I20o8i24dVpGUFSBqQTw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mkUiuiIj8yhWc2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZVpzrzkkS3TCIC8ssuB1q665Cly"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AyVvw5Y1t2x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iglXNLTRJoy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iTKB7JlXxZgW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zcduVvETVwMCfQslxyZfhoZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8SZ4gfyzqyWZuyWUMuDO3PJ5JnvEF7yK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9F;Lcom/facebook/ads/redexgen/X/Cr;)V
    .locals 0

    .line 98663
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mQ;->A02:Lcom/facebook/ads/redexgen/X/9F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98664
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/mQ;->A01:Lcom/facebook/ads/redexgen/X/Cr;

    .line 98665
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 98666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A00:Z

    .line 98667
    return-void
.end method

.method public final AAV()Z
    .locals 4

    .line 98668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A02:Lcom/facebook/ads/redexgen/X/9F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9F;->A03()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A01:Lcom/facebook/ads/redexgen/X/Cr;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cr;->AAV()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const-string v1, "tfusTrbeCFgw"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "N1qkw3c8e5Hqf14VA9IMw1Y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABs()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A01:Lcom/facebook/ads/redexgen/X/Cr;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cr;->ABs()V

    .line 98670
    return-void
.end method

.method public final AGf(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;I)I
    .locals 12

    .line 98671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A02:Lcom/facebook/ads/redexgen/X/9F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9F;->A03()Z

    move-result v0

    const/4 v8, -0x3

    if-eqz v0, :cond_0

    .line 98672
    return v8

    .line 98673
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A00:Z

    const/4 v5, 0x4

    const/4 v4, -0x4

    if-eqz v0, :cond_1

    .line 98674
    invoke-virtual {p2, v5}, Lcom/facebook/ads/redexgen/X/5I;->A02(I)V

    .line 98675
    return v4

    .line 98676
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A01:Lcom/facebook/ads/redexgen/X/Cr;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cr;->AGf(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;I)I

    move-result v6

    .line 98677
    .local v0, "result":I
    const/4 v7, -0x5

    const-wide/high16 v10, -0x8000000000000000L

    if-ne v6, v7, :cond_8

    .line 98678
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6N;->A00:Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const-string v1, "CgcnacS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast v6, Lcom/facebook/ads/redexgen/X/or;

    .line 98679
    .local v1, "format":Lcom/facebook/ads/redexgen/X/or;
    iget v0, v6, Lcom/facebook/ads/redexgen/X/or;->A08:I

    if-nez v0, :cond_2

    iget v0, v6, Lcom/facebook/ads/redexgen/X/or;->A09:I

    if-eqz v0, :cond_3

    .line 98680
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A02:Lcom/facebook/ads/redexgen/X/9F;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/9F;->A01:J

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v4, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const-string v1, "GNrNzPSs5rG"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "BRLad8Ppi7x"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    cmp-long v0, v2, v8

    if-eqz v0, :cond_6

    :goto_0
    const/4 v3, 0x0

    .line 98681
    .local v2, "encoderDelay":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A02:Lcom/facebook/ads/redexgen/X/9F;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v2, v0, v10

    if-eqz v2, :cond_4

    .line 98682
    .local v3, "encoderPadding":I
    :goto_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/or;->A07()Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 98683
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2D;->A0d(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 98684
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2D;->A0e(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 98685
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/6N;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 98686
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :cond_3
    return v7

    .line 98687
    :cond_4
    iget v5, v6, Lcom/facebook/ads/redexgen/X/or;->A09:I

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const-string v1, "EEmKLcyNYLT06pocayZ2GsCLcCuyLxXc"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "iurrvyyHueo7iqPuT2paMo28xJltVQ5w"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    cmp-long v0, v2, v8

    if-eqz v0, :cond_6

    goto :goto_0

    .line 98688
    :cond_6
    iget v3, v6, Lcom/facebook/ads/redexgen/X/or;->A08:I

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 98689
    .end local v1    # "format":Lcom/facebook/ads/redexgen/X/or;
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A02:Lcom/facebook/ads/redexgen/X/9F;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v2, v0, v10

    if-eqz v2, :cond_c

    if-ne v6, v4, :cond_9

    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A02:Lcom/facebook/ads/redexgen/X/9F;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9F;->A00:J

    cmp-long v7, v2, v0

    if-gez v7, :cond_a

    :cond_9
    if-ne v6, v8, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A02:Lcom/facebook/ads/redexgen/X/9F;

    .line 98690
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9F;->A70()J

    move-result-wide v1

    cmp-long v0, v1, v10

    if-nez v0, :cond_c

    iget-boolean v3, p2, Lcom/facebook/ads/redexgen/X/nY;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const-string v1, "1nwlHryK5EDeU2ZU0H4BcQJbxB1i4Ihb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "uJ2uSAytr2SiAHwLxUdt9xnwmqCI2wHf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_c

    .line 98691
    :cond_a
    :goto_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/nY;->A0A()V

    .line 98692
    invoke-virtual {p2, v5}, Lcom/facebook/ads/redexgen/X/5I;->A02(I)V

    .line 98693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A00:Z

    .line 98694
    return v4

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/mQ;->A03:[Ljava/lang/String;

    const-string v1, "inKi0NPX9S85"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "FN6Cq4NmwdrKNoi6ofH3HqR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_c

    goto :goto_3

    .line 98695
    :cond_c
    return v6
.end method

.method public final AJI(J)I
    .locals 1

    .line 98696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A02:Lcom/facebook/ads/redexgen/X/9F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9F;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98697
    const/4 v0, -0x3

    return v0

    .line 98698
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mQ;->A01:Lcom/facebook/ads/redexgen/X/Cr;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cr;->AJI(J)I

    move-result v0

    return v0
.end method

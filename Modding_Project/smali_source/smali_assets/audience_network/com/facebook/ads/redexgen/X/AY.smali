.class public final Lcom/facebook/ads/redexgen/X/AY;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderInitializationException"
.end annotation


# static fields
.field public static A05:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/AR;

.field public final A01:Lcom/facebook/ads/redexgen/X/AY;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AY;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/Throwable;ZI)V
    .locals 8

    .line 29696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17

    const/16 v1, 0x16

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2d

    const/4 v1, 0x3

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 29697
    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/AY;->A02(I)Ljava/lang/String;

    move-result-object v6

    .line 29698
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/AY;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/AR;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AY;)V

    .line 29699
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/or;Ljava/lang/Throwable;ZLcom/facebook/ads/redexgen/X/AR;)V
    .locals 9

    .line 29700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x15

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v6, p4

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/AR;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 29701
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x15

    move-object v3, p2

    if-lt v1, v0, :cond_0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/AY;->A04(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 29702
    :goto_0
    const/4 v8, 0x0

    move-object v1, p0

    move v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/AY;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/AR;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AY;)V

    .line 29703
    return-void

    .line 29704
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/AR;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AY;)V
    .locals 0

    .line 29705
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29706
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AY;->A03:Ljava/lang/String;

    .line 29707
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/AY;->A04:Z

    .line 29708
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/AY;->A00:Lcom/facebook/ads/redexgen/X/AR;

    .line 29709
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/AY;->A02:Ljava/lang/String;

    .line 29710
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/AY;->A01:Lcom/facebook/ads/redexgen/X/AY;

    .line 29711
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/AY;)Lcom/facebook/ads/redexgen/X/AY;
    .locals 8

    .line 29712
    new-instance v0, Lcom/facebook/ads/redexgen/X/AY;

    .line 29713
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AY;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 29714
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AY;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/AY;->A03:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/AY;->A04:Z

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/AY;->A00:Lcom/facebook/ads/redexgen/X/AR;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/AY;->A02:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/AY;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/AR;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AY;)V

    .line 29715
    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/redexgen/X/AY;)Lcom/facebook/ads/redexgen/X/AY;
    .locals 0

    .line 29716
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AY;->A00(Lcom/facebook/ads/redexgen/X/AY;)Lcom/facebook/ads/redexgen/X/AY;

    move-result-object p0

    return-object p0
.end method

.method public static A02(I)Ljava/lang/String;
    .locals 5

    .line 29717
    if-gez p0, :cond_0

    const/16 v2, 0x79

    const/4 v1, 0x4

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AY;->A03(III)Ljava/lang/String;

    move-result-object v4

    .line 29718
    .local v0, "sign":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/16 v1, 0x49

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29719
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29720
    return-object v0

    .line 29721
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AY;->A03(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AY;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 29722
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 29723
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29724
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x7d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AY;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0xct
        0x31t
        0x10t
        0x16t
        0x1at
        0x11t
        0x10t
        0x7t
        0x55t
        0x1ct
        0x1bt
        0x1ct
        0x1t
        0x55t
        0x13t
        0x14t
        0x1ct
        0x19t
        0x10t
        0x11t
        0x4ft
        0x55t
        0x65t
        0x44t
        0x42t
        0x4et
        0x45t
        0x44t
        0x53t
        0x1t
        0x48t
        0x4ft
        0x48t
        0x55t
        0x1t
        0x47t
        0x40t
        0x48t
        0x4dt
        0x44t
        0x45t
        0x1bt
        0x1t
        0x7at
        0x3ft
        0x4et
        0x42t
        0x1dt
        0x11t
        0x13t
        0x50t
        0x18t
        0x1ft
        0x1dt
        0x1bt
        0x1ct
        0x11t
        0x11t
        0x15t
        0x50t
        0x1ft
        0x1at
        0xdt
        0x50t
        0x1ft
        0x10t
        0x1at
        0xct
        0x11t
        0x17t
        0x1at
        0x6t
        0x50t
        0x13t
        0x1bt
        0x1at
        0x17t
        0x1ft
        0x4dt
        0x50t
        0x1bt
        0x6t
        0x11t
        0xet
        0x12t
        0x1ft
        0x7t
        0x1bt
        0xct
        0x50t
        0x13t
        0x1bt
        0x1at
        0x17t
        0x1ft
        0x1dt
        0x11t
        0x1at
        0x1bt
        0x1dt
        0x50t
        0x33t
        0x1bt
        0x1at
        0x17t
        0x1ft
        0x3dt
        0x11t
        0x1at
        0x1bt
        0x1dt
        0x2ct
        0x1bt
        0x10t
        0x1at
        0x1bt
        0xct
        0x1bt
        0xct
        0x21t
        0x24t
        0x2ft
        0x2dt
        0x15t
    .end array-data
.end method

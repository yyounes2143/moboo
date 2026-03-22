.class public final Lcom/facebook/ads/redexgen/X/lE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacTimestampSeeker"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Gc;

.field public final A02:Lcom/facebook/ads/redexgen/X/Gh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3102
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Qzrb2NyX11iip4M0Dun9HjrVhDBjGiaF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S4lxERGEQHczdoRlIRLlXReEKfWFWSGc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "txU8e6wljbe290bqTydjfEMDFUDvEmx5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZB68ibpDVF3DEFIIdRwQIG37zRUG2jhG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NKfzuQ6LKFKezVni40AKhLW9Qs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gUOm4cnsv29C5J2bDVOWEpGrIAhYUn7e"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xRx4EoAOCCZ90h8tA3pJ1YmFxzetviZR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6LlO7okteSZZNTbDPWq3J1SHLhykMwkf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lE;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gh;I)V
    .locals 1

    .line 96335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96336
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:Lcom/facebook/ads/redexgen/X/Gh;

    .line 96337
    iput p2, p0, Lcom/facebook/ads/redexgen/X/lE;->A00:I

    .line 96338
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A01:Lcom/facebook/ads/redexgen/X/Gc;

    .line 96339
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Gh;ILcom/facebook/ads/redexgen/X/HC;)V
    .locals 0

    .line 96340
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Gh;I)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/lN;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96341
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v1

    const-wide/16 v5, 0x6

    sub-long/2addr v1, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:Lcom/facebook/ads/redexgen/X/Gh;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lE;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A01:Lcom/facebook/ads/redexgen/X/Gc;

    .line 96342
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A09(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gh;ILcom/facebook/ads/redexgen/X/Gc;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96343
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/lE;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/lE;->A03:[Ljava/lang/String;

    const-string v1, "MdA2mB0qiCN7NKRKcBY3aVGEnEzRIKP4"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Kp5wPJFyOGMB7tBJUi3Fl7WX9iQtExSk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 96344
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v1

    sub-long/2addr v1, v5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    .line 96345
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 96346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:Lcom/facebook/ads/redexgen/X/Gh;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    return-wide v0

    .line 96347
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A01:Lcom/facebook/ads/redexgen/X/Gc;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Gc;->A00:J

    return-wide v0
.end method


# virtual methods
.method public final synthetic AFA()V
    .locals 0

    return-void
.end method

.method public final AIC(Lcom/facebook/ads/redexgen/X/lN;J)Lcom/facebook/ads/redexgen/X/GN;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96348
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v6

    .line 96349
    .local v0, "searchPosition":J
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lE;->A00(Lcom/facebook/ads/redexgen/X/lN;)J

    move-result-wide v2

    .line 96350
    .local v2, "leftFrameFirstSampleNumber":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v9

    .line 96351
    .local v4, "leftFramePosition":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lE;->A02:Lcom/facebook/ads/redexgen/X/Gh;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Gh;->A06:I

    .line 96352
    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 96353
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 96354
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lE;->A00(Lcom/facebook/ads/redexgen/X/lN;)J

    move-result-wide v0

    .line 96355
    .local v6, "rightFrameFirstSampleNumber":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v4

    .line 96356
    .local v8, "rightFramePosition":J
    cmp-long v8, v2, p2

    if-gtz v8, :cond_0

    cmp-long v8, v0, p2

    if-lez v8, :cond_0

    .line 96357
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/GN;->A03(J)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v0

    return-object v0

    .line 96358
    :cond_0
    cmp-long v8, v0, p2

    if-gtz v8, :cond_1

    .line 96359
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/GN;->A05(JJ)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v0

    return-object v0

    .line 96360
    :cond_1
    invoke-static {v2, v3, v6, v7}, Lcom/facebook/ads/redexgen/X/GN;->A04(JJ)Lcom/facebook/ads/redexgen/X/GN;

    move-result-object v0

    return-object v0
.end method

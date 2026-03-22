.class public final Lcom/facebook/ads/redexgen/X/gh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/internal/util/common/Stateful<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:Z

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/Nz;

.field public final A04:Lcom/facebook/ads/redexgen/X/O1;

.field public final A05:Lcom/facebook/ads/redexgen/X/O1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2788
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1rXfVnNZRCMKSBmKvXBkqyIampQHuBTT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2bLZXAk3pl72OxsXhKzzangZVfhmAhBr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LE0trkh5BaXy0JUPm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MtA6uT6DKVcUBVmop0u"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GFOlAA7vgdvYkzDNo5MadPPE0QeXaZAF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iEcBvH9q7CiihZ6SUT8L1eAmSvCZtCKk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3wBrZQLKvBQ6cLhc0qq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ySHp1IuW6hVExgFmQZh21v0rDd75pKs8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gh;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nz;)V
    .locals 3

    .line 83457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A01:Z

    .line 83459
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A02:Z

    .line 83460
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A00:Z

    .line 83461
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gh;->A03:Lcom/facebook/ads/redexgen/X/Nz;

    .line 83462
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Nz;->A01:D

    new-instance v0, Lcom/facebook/ads/redexgen/X/O1;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/O1;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A04:Lcom/facebook/ads/redexgen/X/O1;

    .line 83463
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Nz;->A01:D

    new-instance v0, Lcom/facebook/ads/redexgen/X/O1;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/O1;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A05:Lcom/facebook/ads/redexgen/X/O1;

    .line 83464
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nz;Landroid/os/Bundle;)V
    .locals 3

    .line 83465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A01:Z

    .line 83467
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A02:Z

    .line 83468
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A00:Z

    .line 83469
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gh;->A03:Lcom/facebook/ads/redexgen/X/Nz;

    .line 83470
    const/16 v2, 0x13

    const/16 v1, 0x9

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X2;->A00([B)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/O1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A04:Lcom/facebook/ads/redexgen/X/O1;

    .line 83471
    const/16 v2, 0x1c

    const/16 v1, 0xd

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X2;->A00([B)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/O1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A05:Lcom/facebook/ads/redexgen/X/O1;

    .line 83472
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A01:Z

    .line 83473
    const/16 v2, 0xd

    const/4 v1, 0x6

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A02:Z

    .line 83474
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A00:Z

    .line 83475
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gh;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x33

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1

    .line 83476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A00:Z

    .line 83477
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gh;->A02()V

    .line 83478
    return-void
.end method

.method private A02()V
    .locals 4

    .line 83479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A01:Z

    .line 83480
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A02:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gh;->A05:Lcom/facebook/ads/redexgen/X/O1;

    .line 83481
    .local v0, "endStatistics":Lcom/facebook/ads/redexgen/X/O1;
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/gh;->A03:Lcom/facebook/ads/redexgen/X/Nz;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/gh;->A00:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A02:Z

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Nz;->A00(ZZLcom/facebook/ads/redexgen/X/O1;)V

    .line 83482
    return-void

    .line 83483
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gh;->A04:Lcom/facebook/ads/redexgen/X/O1;

    goto :goto_0
.end method

.method private A03()V
    .locals 1

    .line 83484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A02:Z

    .line 83485
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gh;->A01()V

    .line 83486
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gh;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x2at
        -0x1et
        -0x20t
        -0x1dt
        -0x21t
        -0x28t
        -0x19t
        -0x28t
        -0x26t
        -0x1dt
        -0x27t
        -0x26t
        -0x27t
        -0x48t
        -0x57t
        -0x45t
        -0x45t
        -0x53t
        -0x54t
        -0x42t
        -0x51t
        -0x43t
        -0x42t
        -0x63t
        -0x42t
        -0x55t
        -0x42t
        -0x43t
        -0x4et
        -0x5bt
        -0x5ft
        -0x4dt
        -0x63t
        -0x62t
        -0x58t
        -0x5ft
        -0x71t
        -0x50t
        -0x63t
        -0x50t
        -0x51t
    .end array-data
.end method


# virtual methods
.method public final A05()Landroid/os/Bundle;
    .locals 5

    .line 83487
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 83488
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A05:Lcom/facebook/ads/redexgen/X/O1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X2;->A01(Ljava/io/Serializable;)[B

    move-result-object v4

    const/16 v2, 0x1c

    const/16 v1, 0xd

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 83489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A04:Lcom/facebook/ads/redexgen/X/O1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X2;->A01(Ljava/io/Serializable;)[B

    move-result-object v4

    const/16 v2, 0x13

    const/16 v1, 0x9

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 83490
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A01:Z

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83491
    const/16 v2, 0xd

    const/4 v1, 0x6

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A02:Z

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83492
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gh;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A00:Z

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83493
    return-object v3
.end method

.method public final A06()V
    .locals 1

    .line 83494
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A01:Z

    if-nez v0, :cond_0

    .line 83495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A05:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A03()V

    .line 83496
    :cond_0
    return-void
.end method

.method public final A07(DD)V
    .locals 10

    .line 83497
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A01:Z

    if-eqz v0, :cond_0

    .line 83498
    return-void

    .line 83499
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A04:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/O1;->A04(DD)V

    .line 83500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A05:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/O1;->A04(DD)V

    .line 83501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A03:Lcom/facebook/ads/redexgen/X/Nz;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Nz;->A03:Z

    if-eqz v0, :cond_2

    .line 83502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A05:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A00()Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A04()D

    move-result-wide v8

    .line 83503
    .local v0, "viewableSeconds":D
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A03:Lcom/facebook/ads/redexgen/X/Nz;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Nz;->A00:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v1, v6

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A04:Lcom/facebook/ads/redexgen/X/O1;

    .line 83504
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A00()Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A05()D

    move-result-wide v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gh;->A03:Lcom/facebook/ads/redexgen/X/Nz;

    sget-object v2, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    const-string v1, "T6gjK2QSsLcLO7czUZGr1vXDcxJirDTU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "hs34X0zFUnqhorBqOe1x1e05IcUuJ424"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Nz;->A00:D

    cmpl-double v0, v4, v1

    if-lez v0, :cond_5

    cmpl-double v3, v8, v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    const-string v1, "F30RTtpMpumHuhVQJj2Sxrc5BnRJWEU6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    .line 83505
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gh;->A01()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 83506
    sget-object v2, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    const-string v1, "tDZlaAUjytzZ2vtOC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_1
    if-nez v3, :cond_5

    goto :goto_1

    .line 83507
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gh;->A05:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A00()Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A02()D

    move-result-wide v8

    goto/16 :goto_0

    .line 83508
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    const-string v1, "PWt3UCdLmacUDAaKa7qG1WjHdRUwYQML"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "nsPDOGo5haoHqx4MxUvN1JuyDQrM6Fdb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 83509
    :cond_5
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gh;->A03:Lcom/facebook/ads/redexgen/X/Nz;

    sget-object v1, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/gh;->A07:[Ljava/lang/String;

    const-string v1, "fX9sFZGj0U97M4kLDXLqIJ6maPl5udls"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Nz;->A02:D

    cmpl-double v0, v8, v1

    if-ltz v0, :cond_6

    .line 83510
    :goto_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gh;->A03()V

    .line 83511
    :cond_6
    return-void

    :cond_7
    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Nz;->A02:D

    cmpl-double v0, v8, v1

    if-ltz v0, :cond_6

    goto :goto_2
.end method

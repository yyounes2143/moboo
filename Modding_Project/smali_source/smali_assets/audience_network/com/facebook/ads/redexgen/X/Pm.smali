.class public final Lcom/facebook/ads/redexgen/X/Pm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pl;,
        Lcom/facebook/ads/redexgen/X/Pk;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Pk;

.field public final A01:Lcom/facebook/ads/redexgen/X/Pl;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1510
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "90ZggfNQsOg49XfX2Gw1SU3vAhU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6e03JoSoFcAuCj0XHJ07P"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X2n0FB8CLVE6QonP7j41AEQOs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oGNNWvZthHEo2sMGR9jx6vYqjxoachM9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "D9nn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xFc2wx6BEzvoHtEzkiYe1GtwM37"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KcMIoFUA4KOHORJmTS9CHMjc27bv2njt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Hz1lzGXaGkVdCftBSZ2HywJOuLsdaxmO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pm;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pm;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pl;)V
    .locals 1

    .line 58531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58532
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    .line 58533
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Pk;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    .line 58534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    .line 58535
    return-void
.end method

.method private A00(I)I
    .locals 4

    .line 58536
    const/4 v3, -0x1

    if-gez p1, :cond_0

    .line 58537
    return v3

    .line 58538
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pl;->A7A()I

    move-result v2

    .line 58539
    .local v1, "limit":I
    move v1, p1

    .line 58540
    .local v2, "offset":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 58541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pk;->A03(I)I

    move-result v0

    .line 58542
    .local v3, "removedBefore":I
    sub-int v0, v1, v0

    sub-int v0, p1, v0

    .line 58543
    .local p0, "diff":I
    if-nez v0, :cond_1

    .line 58544
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pk;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58545
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58546
    :cond_1
    add-int/2addr v1, v0

    .line 58547
    .end local v3    # "removedBefore":I
    .end local p0    # "diff":I
    goto :goto_0

    .line 58548
    :cond_2
    return v1

    .line 58549
    :cond_3
    return v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x71t
        -0x7dt
        -0x35t
        -0x34t
        -0x39t
        -0x39t
        -0x38t
        -0x2ft
        -0x7dt
        -0x31t
        -0x34t
        -0x2at
        -0x29t
        -0x63t
        -0x15t
        -0x17t
        -0x10t
        -0x20t
        -0x1bt
        -0x22t
        -0x69t
        -0x15t
        -0x1at
        -0x69t
        -0x14t
        -0x1bt
        -0x21t
        -0x20t
        -0x25t
        -0x24t
        -0x69t
        -0x28t
        -0x69t
        -0x13t
        -0x20t
        -0x24t
        -0x12t
        -0x69t
        -0x15t
        -0x21t
        -0x28t
        -0x15t
        -0x69t
        -0x12t
        -0x28t
        -0x16t
        -0x69t
        -0x1bt
        -0x1at
        -0x15t
        -0x69t
        -0x21t
        -0x20t
        -0x25t
        -0x25t
        -0x24t
        -0x1bt
        0x2bt
        0x1et
        0x1at
        0x2ct
        -0x2bt
        0x1et
        0x28t
        -0x2bt
        0x23t
        0x24t
        0x29t
        -0x2bt
        0x16t
        -0x2bt
        0x18t
        0x1dt
        0x1et
        0x21t
        0x19t
        -0x1ft
        -0x2bt
        0x18t
        0x16t
        0x23t
        0x23t
        0x24t
        0x29t
        -0x2bt
        0x1dt
        0x1et
        0x19t
        0x1at
        -0x2bt
    .end array-data
.end method

.method private A03(Landroid/view/View;)V
    .locals 1

    .line 58550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Pl;->ADA(Landroid/view/View;)V

    .line 58552
    return-void
.end method

.method private A04(Landroid/view/View;)Z
    .locals 1

    .line 58553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Pl;->ADv(Landroid/view/View;)V

    .line 58555
    const/4 v0, 0x1

    return v0

    .line 58556
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A05()I
    .locals 2

    .line 58557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pl;->A7A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A06()I
    .locals 1

    .line 58558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pl;->A7A()I

    move-result v0

    return v0
.end method

.method public final A07(Landroid/view/View;)I
    .locals 3

    .line 58559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Pl;->A9z(Landroid/view/View;)I

    move-result v2

    .line 58560
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 58561
    return v1

    .line 58562
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Pk;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58563
    return v1

    .line 58564
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Pk;->A03(I)I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method public final A08(I)Landroid/view/View;
    .locals 5

    .line 58565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 58566
    .local v0, "count":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 58567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 58568
    .local v2, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Pl;->A7D(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v1

    .line 58569
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/Qg;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 58570
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58571
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58572
    return-object v2

    .line 58573
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58574
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A09(I)Landroid/view/View;
    .locals 2

    .line 58575
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A00(I)I

    move-result v1

    .line 58576
    .local v0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Pl;->A79(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(I)Landroid/view/View;
    .locals 1

    .line 58577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Pl;->A79(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()V
    .locals 3

    .line 58578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pk;->A04()V

    .line 58579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 58580
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Pl;->ADv(Landroid/view/View;)V

    .line 58581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 58582
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 58583
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pl;->AHg()V

    .line 58584
    return-void
.end method

.method public final A0C(I)V
    .locals 2

    .line 58585
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A00(I)I

    move-result v1

    .line 58586
    .local v0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pk;->A09(I)Z

    .line 58587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Pl;->A5o(I)V

    .line 58588
    return-void
.end method

.method public final A0D(I)V
    .locals 3

    .line 58589
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A00(I)I

    move-result v2

    .line 58590
    .local v0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Pl;->A79(I)Landroid/view/View;

    move-result-object v1

    .line 58591
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 58592
    return-void

    .line 58593
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Pk;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58594
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Pm;->A04(Landroid/view/View;)Z

    .line 58595
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Pl;->AHm(I)V

    .line 58596
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 4

    .line 58597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Pl;->A9z(Landroid/view/View;)I

    move-result v1

    .line 58598
    .local v0, "offset":I
    if-ltz v1, :cond_0

    .line 58599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pk;->A06(I)V

    .line 58600
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Landroid/view/View;)V

    .line 58601
    return-void

    .line 58602
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Landroid/view/View;)V
    .locals 2

    .line 58603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Pl;->A9z(Landroid/view/View;)I

    move-result v1

    .line 58604
    .local v0, "index":I
    if-gez v1, :cond_0

    .line 58605
    return-void

    .line 58606
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pk;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58607
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A04(Landroid/view/View;)Z

    .line 58608
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Pl;->AHm(I)V

    .line 58609
    return-void
.end method

.method public final A0G(Landroid/view/View;)V
    .locals 4

    .line 58610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Pl;->A9z(Landroid/view/View;)I

    move-result v1

    .line 58611
    .local v0, "offset":I
    if-ltz v1, :cond_2

    .line 58612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pk;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pk;->A05(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    .line 58614
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pm;->A04:[Ljava/lang/String;

    const-string v1, "8IGbKDWrlSqGtsrcKzoZxkVKvdJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "U0TRNaLdUZe04yrOWBaiBfN34lF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A04(Landroid/view/View;)Z

    .line 58615
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58616
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v1, 0x2b

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58617
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 58618
    if-gez p2, :cond_1

    .line 58619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Pl;->A7A()I

    move-result v1

    .line 58620
    .local v0, "offset":I
    .restart local v0    # "offset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v1, p4}, Lcom/facebook/ads/redexgen/X/Pk;->A07(IZ)V

    .line 58621
    if-eqz p4, :cond_0

    .line 58622
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Landroid/view/View;)V

    .line 58623
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1, v1, p3}, Lcom/facebook/ads/redexgen/X/Pl;->A4C(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 58624
    return-void

    .line 58625
    .end local v0    # "offset":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Pm;->A00(I)I

    move-result v1

    goto :goto_0
.end method

.method public final A0I(Landroid/view/View;IZ)V
    .locals 4

    .line 58626
    if-gez p2, :cond_1

    .line 58627
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pm;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58628
    .end local v0
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Pm;->A00(I)I

    move-result v3

    goto :goto_0

    .line 58629
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pm;->A04:[Ljava/lang/String;

    const-string v1, "WWxR4kuTyiSS3k1dOopZM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jpAqbovCz6NUDLwJv0FYFncHe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Pl;->A7A()I

    move-result v3

    .line 58630
    .local v0, "offset":I
    .restart local v0    # "offset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v3, p3}, Lcom/facebook/ads/redexgen/X/Pk;->A07(IZ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    .line 58631
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pm;->A04:[Ljava/lang/String;

    const-string v1, "lrFB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz p3, :cond_3

    .line 58632
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Landroid/view/View;)V

    .line 58633
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/Pl;->addView(Landroid/view/View;I)V

    .line 58634
    return-void
.end method

.method public final A0J(Landroid/view/View;Z)V
    .locals 1

    .line 58635
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/Pm;->A0I(Landroid/view/View;IZ)V

    .line 58636
    return-void
.end method

.method public final A0K(Landroid/view/View;)Z
    .locals 1

    .line 58637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final A0L(Landroid/view/View;)Z
    .locals 3

    .line 58638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Pl;->A9z(Landroid/view/View;)I

    move-result v2

    .line 58639
    .local v0, "index":I
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne v2, v0, :cond_0

    .line 58640
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A04(Landroid/view/View;)Z

    .line 58641
    return v1

    .line 58642
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Pk;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Pk;->A09(I)Z

    .line 58644
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pm;->A04(Landroid/view/View;)Z

    .line 58645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:Lcom/facebook/ads/redexgen/X/Pl;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Pl;->AHm(I)V

    .line 58646
    return v1

    .line 58647
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 58648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pk;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

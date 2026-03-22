.class public final Lcom/facebook/ads/redexgen/X/gi;
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
.field public static A03:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/O1;

.field public final A01:Lcom/facebook/ads/redexgen/X/dZ;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/gh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gi;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/dZ;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Nz;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/ads/redexgen/X/dZ;",
            ")V"
        }
    .end annotation

    .line 83512
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83513
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Ljava/util/List;

    .line 83514
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/gi;->A01:Lcom/facebook/ads/redexgen/X/dZ;

    .line 83515
    const/16 v2, 0xa

    const/4 v1, 0x5

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gi;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 83516
    .local v0, "testStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 83517
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gh;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/gh;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Landroid/os/Bundle;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83518
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83519
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gi;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X2;->A00([B)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/O1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Lcom/facebook/ads/redexgen/X/O1;

    .line 83520
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/facebook/ads/redexgen/X/dZ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Nz;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/dZ;",
            ")V"
        }
    .end annotation

    .line 83521
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83522
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Ljava/util/List;

    .line 83523
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/gi;->A01:Lcom/facebook/ads/redexgen/X/dZ;

    .line 83524
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Nz;

    .line 83525
    .local v1, "rule":Lcom/facebook/ads/redexgen/X/Nz;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/gh;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/gh;-><init>(Lcom/facebook/ads/redexgen/X/Nz;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83526
    .end local v1    # "rule":Lcom/facebook/ads/redexgen/X/Nz;
    goto :goto_0

    .line 83527
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/O1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/O1;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Lcom/facebook/ads/redexgen/X/O1;

    .line 83528
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gi;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x24

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gi;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0xbt
        -0xat
        -0x1dt
        -0xat
        -0x15t
        -0xbt
        -0xat
        -0x15t
        -0x1bt
        -0xbt
        -0x3ct
        -0x4bt
        -0x3dt
        -0x3ct
        -0x3dt
    .end array-data
.end method


# virtual methods
.method public final A02()Landroid/os/Bundle;
    .locals 5

    .line 83529
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 83530
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Lcom/facebook/ads/redexgen/X/O1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X2;->A01(Ljava/io/Serializable;)[B

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gi;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 83531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 83532
    .local v1, "testStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gh;

    .line 83533
    .local v3, "test":Lcom/facebook/ads/redexgen/X/gh;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gh;->A05()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83534
    .end local v3    # "test":Lcom/facebook/ads/redexgen/X/gh;
    goto :goto_0

    .line 83535
    :cond_0
    const/16 v2, 0xa

    const/4 v1, 0x5

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gi;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83536
    return-object v4
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/O1;
    .locals 1

    .line 83537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Lcom/facebook/ads/redexgen/X/O1;

    return-object v0
.end method

.method public final A04()V
    .locals 2

    .line 83538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A03()V

    .line 83539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gh;

    .line 83540
    .local v1, "test":Lcom/facebook/ads/redexgen/X/gh;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gh;->A06()V

    .line 83541
    .end local v1    # "test":Lcom/facebook/ads/redexgen/X/gh;
    goto :goto_0

    .line 83542
    :cond_0
    return-void
.end method

.method public final A05()V
    .locals 1

    .line 83543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A02()V

    .line 83544
    return-void
.end method

.method public final A06(DD)V
    .locals 4

    .line 83545
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-ltz v0, :cond_0

    .line 83546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/O1;->A05(DD)V

    .line 83547
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A01:Lcom/facebook/ads/redexgen/X/dZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dZ;->A9N()D

    move-result-wide v1

    .line 83548
    .local v0, "viewableRatio":D
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A00:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/facebook/ads/redexgen/X/O1;->A04(DD)V

    .line 83549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gi;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/gh;

    .line 83550
    .local v3, "test":Lcom/facebook/ads/redexgen/X/gh;
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/facebook/ads/redexgen/X/gh;->A07(DD)V

    .line 83551
    .end local v3    # "test":Lcom/facebook/ads/redexgen/X/gh;
    goto :goto_0

    .line 83552
    :cond_1
    return-void
.end method

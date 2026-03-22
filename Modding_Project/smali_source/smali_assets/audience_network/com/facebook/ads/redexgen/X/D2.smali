.class public final Lcom/facebook/ads/redexgen/X/D2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/3X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/3X<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 645
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wnvxif6ytcBGtz0Mqv5PMSHqncXz0DK7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "L7XB5FnCPhx5DqxmHlZAG0IW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "W7hvMAjIuj2lsI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WrlikZWMylRqaSPi0Ibe0HqhEkIhSSyj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "po5n5kVohPdvLQNJ9M8nO8P4vS7WmOX1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qra4pPEOgaq041jIiRoYAjwA6HXH5OR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0kvmHOBdOwqUCsJ2namrKa5OUETi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Uzr0GTjpGam7FLw5cJa3iEu5W45H5eya"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D2;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33558
    .local p0, "this":Lcom/facebook/ads/redexgen/X/D2;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/mC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mC;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/D2;-><init>(Lcom/facebook/ads/redexgen/X/3X;)V

    .line 33559
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3X;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/3X<",
            "TV;>;)V"
        }
    .end annotation

    .line 33560
    .local p0, "this":Lcom/facebook/ads/redexgen/X/D2;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    .local p1, "removeCallback":Lcom/facebook/ads/redexgen/X/3X;, "Lcom/facebook/ads/androidx/media3/common/util/Consumer<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33561
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    .line 33562
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:Lcom/facebook/ads/redexgen/X/3X;

    .line 33563
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 33564
    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 33565
    .local p0, "this":Lcom/facebook/ads/redexgen/X/D2;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A01(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 33566
    .local v2, "this":Lcom/facebook/ads/redexgen/X/D2;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 33567
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 33568
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 33569
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    goto :goto_0

    .line 33570
    :cond_1
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 33571
    iget v3, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A03:[Ljava/lang/String;

    const-string v1, "5gSetCnK4GRsLk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9X4w0tOvMLq1romZr5jnatJ22c9uDFke"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    goto :goto_1

    .line 33572
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/D2;->A03:[Ljava/lang/String;

    const-string v1, "mGDCyGfOZW37eucZgDEYXrj36iZYXBw1"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A02()V
    .locals 3

    .line 33573
    .local p0, "this":Lcom/facebook/ads/redexgen/X/D2;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 33574
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:Lcom/facebook/ads/redexgen/X/3X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A31(Ljava/lang/Object;)V

    .line 33575
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33576
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 33577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33578
    return-void
.end method

.method public final A03(I)V
    .locals 3

    .line 33579
    .local p0, "this":Lcom/facebook/ads/redexgen/X/D2;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 33580
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:Lcom/facebook/ads/redexgen/X/3X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A31(Ljava/lang/Object;)V

    .line 33581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 33582
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 33583
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 33584
    return-void

    .line 33585
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final A04(I)V
    .locals 3

    .line 33586
    .local p0, "this":Lcom/facebook/ads/redexgen/X/D2;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 33587
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:Lcom/facebook/ads/redexgen/X/3X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A31(Ljava/lang/Object;)V

    .line 33588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 33589
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    if-lez v0, :cond_0

    .line 33590
    iget v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 33591
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33592
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final A05(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 33593
    .local p1, "this":Lcom/facebook/ads/redexgen/X/D2;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    .line 33594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 33595
    iput v2, p0, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 33596
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 33597
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 33598
    .local v0, "lastStartKey":I
    if-lt p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 33599
    if-ne v0, p1, :cond_2

    .line 33600
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D2;->A02:Lcom/facebook/ads/redexgen/X/3X;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/3X;->A31(Ljava/lang/Object;)V

    .line 33601
    .end local v0    # "lastStartKey":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 33602
    return-void

    .line 33603
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A06()Z
    .locals 1

    .line 33604
    .local p0, "this":Lcom/facebook/ads/redexgen/X/D2;, "Lcom/facebook/ads/androidx/media3/exoplayer/source/SpannedData<TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D2;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

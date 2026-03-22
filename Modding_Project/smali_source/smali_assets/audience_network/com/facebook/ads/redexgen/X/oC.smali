.class public final Lcom/facebook/ads/redexgen/X/oC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1S;


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/1R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1R<",
            "Lcom/facebook/ads/redexgen/X/oC;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/oH;

.field public final A01:Lcom/facebook/ads/redexgen/X/Am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3258
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oC;->A04:Ljava/lang/String;

    .line 3259
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oC;->A03:Ljava/lang/String;

    .line 3260
    new-instance v0, Lcom/facebook/ads/redexgen/X/oD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oD;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/oC;->A02:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oH;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oH;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 101521
    .local p2, "trackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101522
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101523
    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    if-ge v1, v0, :cond_1

    .line 101524
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oC;->A00:Lcom/facebook/ads/redexgen/X/oH;

    .line 101525
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Am;->A05(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oC;->A01:Lcom/facebook/ads/redexgen/X/Am;

    .line 101526
    return-void

    .line 101527
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/oC;
    .locals 3

    .line 101528
    sget-object v0, Lcom/facebook/ads/redexgen/X/oC;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 101529
    .local v0, "trackGroupBundle":Landroid/os/Bundle;
    sget-object v0, Lcom/facebook/ads/redexgen/X/oH;->A06:Lcom/facebook/ads/redexgen/X/1R;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1R;->A6X(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/oH;

    .line 101530
    .local v1, "mediaTrackGroup":Lcom/facebook/ads/redexgen/X/oH;
    sget-object v0, Lcom/facebook/ads/redexgen/X/oC;->A03:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 101531
    .local v2, "tracks":[I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AD;->A0A([I)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/oC;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/oC;-><init>(Lcom/facebook/ads/redexgen/X/oH;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 101532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oC;->A00:Lcom/facebook/ads/redexgen/X/oH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oH;->A02:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 101533
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 101534
    return v3

    .line 101535
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 101536
    .end local v2
    :cond_1
    return v2

    .line 101537
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/oC;

    .line 101538
    .local v2, "that":Lcom/facebook/ads/redexgen/X/oC;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oC;->A00:Lcom/facebook/ads/redexgen/X/oH;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oC;->A00:Lcom/facebook/ads/redexgen/X/oH;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oH;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oC;->A01:Lcom/facebook/ads/redexgen/X/Am;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/oC;->A01:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Am;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 101539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oC;->A00:Lcom/facebook/ads/redexgen/X/oH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oH;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oC;->A01:Lcom/facebook/ads/redexgen/X/Am;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Am;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

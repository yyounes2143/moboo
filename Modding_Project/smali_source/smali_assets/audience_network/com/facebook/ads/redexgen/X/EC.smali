.class public final Lcom/facebook/ads/redexgen/X/EC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/li;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo$RendererSupport;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/mA;

.field public final A02:[I

.field public final A03:[I

.field public final A04:[Lcom/facebook/ads/redexgen/X/mA;

.field public final A05:[Ljava/lang/String;

.field public final A06:[[[I


# direct methods
.method public constructor <init>([Ljava/lang/String;[I[Lcom/facebook/ads/redexgen/X/mA;[I[[[ILcom/facebook/ads/redexgen/X/mA;)V
    .locals 1

    .line 34540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34541
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EC;->A05:[Ljava/lang/String;

    .line 34542
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/EC;->A03:[I

    .line 34543
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/EC;->A04:[Lcom/facebook/ads/redexgen/X/mA;

    .line 34544
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/EC;->A06:[[[I

    .line 34545
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/EC;->A02:[I

    .line 34546
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/EC;->A01:Lcom/facebook/ads/redexgen/X/mA;

    .line 34547
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A00:I

    .line 34548
    return-void
.end method

.method private final A00(III)I
    .locals 1

    .line 34549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A06:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    aget v0, v0, p3

    return v0
.end method

.method private final A01(II[I)I
    .locals 7

    .line 34550
    const/4 v6, 0x0

    .line 34551
    .local v0, "handledTrackCount":I
    const/16 v2, 0x10

    .line 34552
    .local v1, "adaptiveSupport":I
    const/4 v5, 0x0

    .line 34553
    .local v2, "multipleMimeTypes":Z
    const/4 v4, 0x0

    .line 34554
    .local v3, "firstSampleMimeType":Ljava/lang/String;
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_0
    array-length v0, p3

    if-ge v3, v0, :cond_1

    .line 34555
    aget v1, p3, v3

    .line 34556
    .local v5, "trackIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A04:[Lcom/facebook/ads/redexgen/X/mA;

    aget-object v0, v0, p1

    .line 34557
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/mA;->A05(I)Lcom/facebook/ads/redexgen/X/oH;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/oH;->A08(I)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 34558
    .local v6, "sampleMimeType":Ljava/lang/String;
    add-int/lit8 v1, v6, 0x1

    .end local v0    # "handledTrackCount":I
    .local p0, "handledTrackCount":I
    if-nez v6, :cond_0

    .line 34559
    move-object v4, v0

    .line 34560
    .end local v3    # "firstSampleMimeType":Ljava/lang/String;
    .local v0, "firstSampleMimeType":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A06:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    aget v0, v0, v3

    .line 34561
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/76;->A01(I)I

    move-result v0

    .line 34562
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 34563
    .end local v5    # "trackIndex":I
    .end local v6    # "sampleMimeType":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move v6, v1

    goto :goto_0

    .line 34564
    .end local v0    # "firstSampleMimeType":Ljava/lang/String;
    .restart local v3    # "firstSampleMimeType":Ljava/lang/String;
    :cond_0
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v5

    move v5, v0

    goto :goto_1

    .line 34565
    .end local v4    # "i":I
    .end local p0    # "handledTrackCount":I
    .local v0, "handledTrackCount":I
    :cond_1
    if-eqz v5, :cond_2

    .line 34566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A02:[I

    aget v0, v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 34567
    :cond_2
    return v2
.end method


# virtual methods
.method public final A02()I
    .locals 1

    .line 34568
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A00:I

    return v0
.end method

.method public final A03(I)I
    .locals 1

    .line 34569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A03:[I

    aget v0, v0, p1

    return v0
.end method

.method public final A04(III)I
    .locals 1

    .line 34570
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/EC;->A00(III)I

    move-result v0

    .line 34571
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/76;->A03(I)I

    move-result v0

    return v0
.end method

.method public final A05(IIZ)I
    .locals 6

    .line 34572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A04:[Lcom/facebook/ads/redexgen/X/mA;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/mA;->A05(I)Lcom/facebook/ads/redexgen/X/oH;

    move-result-object v0

    iget v5, v0, Lcom/facebook/ads/redexgen/X/oH;->A01:I

    .line 34573
    .local v0, "trackCount":I
    new-array v4, v5, [I

    .line 34574
    .local v1, "trackIndices":[I
    const/4 v3, 0x0

    .line 34575
    .local v2, "trackIndexCount":I
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 34576
    invoke-virtual {p0, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/EC;->A04(III)I

    move-result v1

    .line 34577
    .local v4, "fixedSupport":I
    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    if-eqz p3, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 34578
    :cond_0
    add-int/lit8 v0, v3, 0x1

    .end local v2    # "trackIndexCount":I
    .local v5, "trackIndexCount":I
    aput v2, v4, v3

    move v3, v0

    .line 34579
    .end local v4    # "fixedSupport":I
    .end local v5    # "trackIndexCount":I
    .restart local v2    # "trackIndexCount":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34580
    .end local v3    # "i":I
    :cond_2
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 34581
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/EC;->A01(II[I)I

    move-result v0

    return v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/mA;
    .locals 1

    .line 34582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A01:Lcom/facebook/ads/redexgen/X/mA;

    return-object v0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/mA;
    .locals 1

    .line 34583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EC;->A04:[Lcom/facebook/ads/redexgen/X/mA;

    aget-object v0, v0, p1

    return-object v0
.end method

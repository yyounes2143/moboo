.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3084
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vVy2df4lc7XJo6Qz4oe5hY5QclkC1msO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bFvn9GGSA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rJdjwYHSXqwF2zqWmrmsaMbWn2fRncDM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "n0CUwbX8duflj29qDaNo1eMJPSMz1wy0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EiLK9xVNP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "A5gtacIkI4zY7q4KKlTUB2LfKAwpac0M"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JPTmrF60o3pcMj8GdjYW3ZF0hHRl1hXe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XraBGFY8gaqj8WwGw2mb8M1qw4f4gRNF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hm;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;)V"
        }
    .end annotation

    .line 95538
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95539
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    .line 95540
    invoke-static {p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 95541
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1c

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
    .locals 4

    const/16 v0, 0x15

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    const-string v1, "JwKkffSlx5R8SL1B7VrP8aoEQpNEGvf5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x72t
        0x71t
        0x69t
        0x53t
        0x71t
        0x6at
        0x77t
        0x71t
        0x70t
        0x24t
        0x3et
        0x6dt
        0x7bt
        0x79t
        0x73t
        0x7bt
        0x70t
        0x6at
        0x6dt
        0x23t
    .end array-data
.end method

.method public static A02(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;)Z"
        }
    .end annotation

    .line 95542
    .local v7, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 95543
    return v6

    .line 95544
    :cond_0
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget-wide v3, v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    .line 95545
    .local v2, "previousEndTimeMs":J
    const/4 v5, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    const-string v1, "hwBz3ErsuLDi1NRUfjE078y2qAcndrMF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v5, v7, :cond_3

    .line 95546
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget-wide v1, v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    .line 95547
    const/4 v0, 0x1

    return v0

    .line 95548
    :cond_2
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget-wide v3, v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    .line 95549
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 95550
    .end local v0    # "i":I
    :cond_3
    return v6
.end method


# virtual methods
.method public final synthetic A9S()[B
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2c;->A01(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic A9T()Lcom/facebook/ads/redexgen/X/or;
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2c;->A00(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 95551
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 95552
    if-ne p0, p1, :cond_0

    .line 95553
    const/4 v0, 0x1

    return v0

    .line 95554
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 95555
    .end local v0
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 95556
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;

    .line 95557
    .local v0, "that":Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 95558
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 95559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 95560
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 95561
    return-void
.end method

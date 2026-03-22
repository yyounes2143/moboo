.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# static fields
.field public static A05:[B

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3085
    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hl;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 0

    .line 95562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95563
    iput-wide p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A02:J

    .line 95564
    iput-wide p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A01:J

    .line 95565
    iput-wide p5, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00:J

    .line 95566
    iput-wide p7, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A04:J

    .line 95567
    iput-wide p9, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A03:J

    .line 95568
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 95569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95570
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A02:J

    .line 95571
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A01:J

    .line 95572
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00:J

    .line 95573
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A04:J

    .line 95574
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A03:J

    .line 95575
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 0

    .line 95576
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x68

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

    const/16 v0, 0x76

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A05:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0x1t
        0x51t
        0x49t
        0x50t
        0x55t
        0x50t
        0x31t
        0x53t
        0x46t
        0x54t
        0x46t
        0x4ft
        0x55t
        0x42t
        0x55t
        0x4at
        0x50t
        0x4ft
        0x35t
        0x4at
        0x4et
        0x46t
        0x54t
        0x55t
        0x42t
        0x4et
        0x51t
        0x36t
        0x54t
        0x1et
        -0x1bt
        -0x27t
        0x29t
        0x21t
        0x28t
        0x2dt
        0x28t
        0xct
        0x22t
        0x33t
        0x1et
        -0xat
        0x3t
        -0x9t
        0x4dt
        0x40t
        0x3bt
        0x3ct
        0x46t
        0x2at
        0x40t
        0x51t
        0x3ct
        0x14t
        -0x31t
        -0x3dt
        0x19t
        0xct
        0x7t
        0x8t
        0x12t
        -0xat
        0x17t
        0x4t
        0x15t
        0x17t
        -0xdt
        0x12t
        0x16t
        0xct
        0x17t
        0xct
        0x12t
        0x11t
        -0x20t
        0x12t
        0x34t
        0x39t
        0x2et
        0x34t
        0x33t
        -0x1bt
        0x35t
        0x2dt
        0x34t
        0x39t
        0x34t
        -0x1bt
        0x32t
        0x2at
        0x39t
        0x26t
        0x29t
        0x26t
        0x39t
        0x26t
        -0x1t
        -0x1bt
        0x35t
        0x2dt
        0x34t
        0x39t
        0x34t
        0x18t
        0x39t
        0x26t
        0x37t
        0x39t
        0x15t
        0x34t
        0x38t
        0x2et
        0x39t
        0x2et
        0x34t
        0x33t
        0x2t
    .end array-data
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

    .line 95577
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 95578
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 95579
    return v5

    .line 95580
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 95581
    .end local v2
    :cond_1
    return v2

    .line 95582
    :cond_2
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    .line 95583
    .local v2, "other":Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;
    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A04:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A04:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A03:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .line 95584
    const/16 v0, 0x11

    .line 95585
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A02:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/q7;->A00(J)I

    move-result v0

    add-int/2addr v2, v0

    .line 95586
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A01:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/q7;->A00(J)I

    move-result v0

    add-int/2addr v2, v0

    .line 95587
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/q7;->A00(J)I

    move-result v0

    add-int/2addr v2, v0

    .line 95588
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A04:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/q7;->A00(J)I

    move-result v0

    add-int/2addr v2, v0

    .line 95589
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/q7;->A00(J)I

    move-result v0

    add-int/2addr v2, v0

    .line 95590
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 95591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4c

    const/16 v1, 0x2a

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1f

    const/16 v1, 0xc

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A01:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x37

    const/16 v1, 0x15

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A04:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2b

    const/16 v1, 0xc

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 95592
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A02:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95593
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95594
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A00:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95595
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A04:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95596
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->A03:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95597
    return-void
.end method

.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;
.super Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 475
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ht;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[BJ)V
    .locals 0

    .line 22862
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 22863
    iput-wide p4, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A01:J

    .line 22864
    iput-wide p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A00:J

    .line 22865
    iput-object p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A02:[B

    .line 22866
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 22867
    invoke-direct {p0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 22868
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A01:J

    .line 22869
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A00:J

    .line 22870
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A02:[B

    .line 22871
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/Ht;)V
    .locals 0

    .line 22872
    invoke-direct {p0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;IJ)Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;
    .locals 5

    .line 22873
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v2

    .line 22874
    .local p1, "identifier":J
    add-int/lit8 v0, p1, -0x4

    new-array v4, v0, [B

    .line 22875
    .local p3, "privateBytes":[B
    const/4 v1, 0x0

    array-length v0, v4

    invoke-virtual {p0, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 22876
    new-instance v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;

    move-wide p0, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    return-object v1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 22877
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22878
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A00:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22879
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/scte35/PrivateCommand;->A02:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 22880
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/Hh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;
    .locals 2

    .line 39479
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/Hh;)V

    return-object v0
.end method

.method private final A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;
    .locals 1

    .line 39480
    new-array v0, p1, [Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 39481
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hh;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 39482
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hh;->A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v0

    return-object v0
.end method

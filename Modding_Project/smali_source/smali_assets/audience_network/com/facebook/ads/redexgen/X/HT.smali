.class public final Lcom/facebook/ads/redexgen/X/HT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;
    .locals 1

    .line 39398
    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    invoke-direct {v0, p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private final A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;
    .locals 1

    .line 39399
    new-array v0, p1, [Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 39400
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/HT;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 39401
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/HT;->A01(I)[Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v0

    return-object v0
.end method

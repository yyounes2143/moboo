.class public final Lcom/facebook/ads/redexgen/X/2b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/common/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/ads/androidx/media3/common/Metadata;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 1

    .line 10088
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, p1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private final A01(I)[Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 1

    .line 10089
    new-array v0, p1, [Lcom/facebook/ads/androidx/media3/common/Metadata;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 10090
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2b;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 10091
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2b;->A01(I)[Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    return-object v0
.end method

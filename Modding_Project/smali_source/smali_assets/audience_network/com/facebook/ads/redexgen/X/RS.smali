.class public final Lcom/facebook/ads/redexgen/X/RS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeBannerAdApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/RP;,
        Lcom/facebook/ads/redexgen/X/RQ;,
        Lcom/facebook/ads/redexgen/X/RR;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Qc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1554
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "068yMtBHtCdtzUYBTQD9IwnMWW1doBJF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2l8Hok5ewW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SqMVYGMc7AyphtDxx4DkXGESiOtqp3Wk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "n7xht10RjuH04nLwyOxbbpbZUJ6bFNP5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hemUdCIRyaFDmP64bLQtQG29khNbMpFH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0krrnlsRXu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "j9YMm5Kfv7iMZif7VGfsQGY8YQ9Z0I42"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SiUubuHC3Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RS;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RS;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 2

    .line 62751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62752
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    .line 62753
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    sget-object v0, Lcom/facebook/ads/redexgen/X/V6;->A05:Lcom/facebook/ads/redexgen/X/V6;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1b(Lcom/facebook/ads/redexgen/X/V6;)V

    .line 62754
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/RS;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/RS;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RS;->A02:[Ljava/lang/String;

    const-string v1, "SDJ7CqIuYGJEmotuvG7btG7Q2tCK4c6p"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "3TZdd6KNeaSFSkmrHNZK7GULPPfkGOEa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x32

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RS;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x32t
        -0x36t
        -0x37t
        -0x3t
        -0x14t
        -0xft
        -0x13t
        -0xat
        -0x15t
        -0x13t
        -0x2at
        -0x13t
        -0x4t
        -0x1t
        -0x9t
        -0x6t
        -0xdt
    .end array-data
.end method

.method private A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 8

    .line 62755
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v3

    .line 62756
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    new-instance v4, Lcom/facebook/ads/redexgen/X/fZ;

    invoke-direct {v4, p0, p1, v3}, Lcom/facebook/ads/redexgen/X/fZ;-><init>(Lcom/facebook/ads/redexgen/X/RS;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Qc;)V

    .line 62757
    .local v1, "nativeBannerImageLoadTaskListener":Lcom/facebook/ads/redexgen/X/RQ;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A15()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v7

    .line 62758
    .local v2, "adIcon":Lcom/facebook/ads/redexgen/X/Up;
    if-eqz v7, :cond_3

    .line 62759
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A11()Lcom/facebook/ads/redexgen/X/SF;

    move-result-object v1

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0N(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 62760
    .local v3, "preloadedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/RS;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62761
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RS;->A02:[Ljava/lang/String;

    const-string v1, "oesEo3u5gOmbsNZfXjsimFyw8pPXYbZZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 62762
    .local v4, "adContextWrapper":Lcom/facebook/ads/redexgen/X/dL;
    if-eqz v5, :cond_2

    .line 62763
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A1g()Z

    move-result v2

    .line 62764
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A1D()Ljava/lang/String;

    move-result-object v1

    .line 62765
    invoke-static {v0, v5, v2, v1}, Lcom/facebook/ads/redexgen/X/Qc;->A05(Lcom/facebook/ads/redexgen/X/dL;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62766
    .local v5, "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, p1}, Lcom/facebook/ads/redexgen/X/Qc;->A0f(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 62767
    new-instance v0, Lcom/facebook/ads/redexgen/X/fY;

    invoke-direct {v0, p0, v3, v1}, Lcom/facebook/ads/redexgen/X/fY;-><init>(Lcom/facebook/ads/redexgen/X/RS;Lcom/facebook/ads/redexgen/X/Qc;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 62768
    .end local v5    # "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 62769
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A1g()Z

    move-result v1

    const/4 v6, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/RP;

    invoke-direct {v5, v0, v4, v1, v6}, Lcom/facebook/ads/redexgen/X/RP;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/RQ;ZLcom/facebook/ads/redexgen/X/fZ;)V

    .line 62770
    .local v5, "loadImageTask":Lcom/facebook/ads/redexgen/X/RP;
    const/4 v0, 0x1

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/RR;

    .line 62771
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A1D()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/RR;

    invoke-direct {v1, v2, v0, v6}, Lcom/facebook/ads/redexgen/X/RR;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fZ;)V

    const/4 v0, 0x0

    aput-object v1, v4, v0

    .line 62772
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/RP;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 62773
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A16()Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v5

    .line 62774
    .local v3, "adListener":Lcom/facebook/ads/redexgen/X/QQ;
    sget-object v6, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RS;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_0

    .line 62775
    .local v4, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    sget-object v2, Lcom/facebook/ads/redexgen/X/RS;->A02:[Ljava/lang/String;

    const-string v1, "aFZFEDb6phUkMJAuumeHd9ws0nVx9tBY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 62776
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    .line 62777
    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, -0x1

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 62778
    if-eqz v5, :cond_4

    .line 62779
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/Uh;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 62780
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RS;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62781
    .end local v3    # "adListener":Lcom/facebook/ads/redexgen/X/QQ;
    .end local v4    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :goto_0
    return-void
.end method


# virtual methods
.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    .line 62782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RS;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 62783
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 62784
    .local p0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 62785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/RS;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    .line 62786
    :cond_0
    if-eqz p3, :cond_1

    .line 62787
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RS;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62788
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Qc;->A1M(Landroid/view/View;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 62789
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/RS;->A02:[Ljava/lang/String;

    const-string v1, "ll9cTRtW3a"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "WGLVGgKdvO"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Qc;->A1N(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 62790
    :goto_0
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 62791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RS;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 62792
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 62793
    .local p3, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 62794
    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/fh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    .line 62795
    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/fh;->A0M(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V

    .line 62796
    :cond_0
    if-eqz p3, :cond_1

    .line 62797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/facebook/ads/redexgen/X/Qc;->A1Q(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;Z)V

    .line 62798
    :goto_0
    return-void

    .line 62799
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RS;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/Qc;->A1R(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Z)V

    goto :goto_0
.end method

.class public final Lcom/facebook/ads/redexgen/X/RK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdApi;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/NativeAd;

.field public final A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1550
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Qf6uI4y6btMkRXvA96gvAPpQqYMeMLVQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xsH0pc0gEvMtYCBpu3k37P2MSYje76"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eIeN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vYRtnf0lNdhCyq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0cPKH6qR821KJSq9ovGwsT1tt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LdRpqMhVSgJGWZUoheR2iPgR57uht61Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hYjvJgOs8spNmgMi7B8jHFIGUAKFh9RM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RK;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 2

    .line 62536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62537
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/NativeAd;

    .line 62538
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RK;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 62539
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v1

    .line 62540
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    sget-object v0, Lcom/facebook/ads/redexgen/X/V6;->A06:Lcom/facebook/ads/redexgen/X/V6;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1b(Lcom/facebook/ads/redexgen/X/V6;)V

    .line 62541
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 0

    .line 62542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62543
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/NativeAd;

    .line 62544
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RK;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 62545
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/Qc;
    .locals 1

    .line 62546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RK;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A01()Ljava/lang/String;
    .locals 1

    .line 62547
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 62548
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation

    .line 62549
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1I()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62550
    const/4 v0, 0x0

    return-object v0

    .line 62551
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62552
    .local v0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1I()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Qc;

    .line 62553
    .local v2, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62554
    .end local v2    # "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    goto :goto_0

    .line 62555
    :cond_1
    return-object v4
.end method

.method public final getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;
    .locals 4

    .line 62556
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62557
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->VIDEO:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0

    .line 62558
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1I()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62559
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1I()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62560
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0

    .line 62561
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A14()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 62562
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A14()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62563
    sget-object v3, Lcom/facebook/ads/NativeAd$AdCreativeType;->IMAGE:Lcom/facebook/ads/NativeAd$AdCreativeType;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RK;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/RK;->A02:[Ljava/lang/String;

    const-string v1, "KhCZfMyUHPJBMWXSGegcdmWrt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "8FosuavNBsKEQf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62564
    :cond_3
    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->UNKNOWN:Lcom/facebook/ads/NativeAd$AdCreativeType;

    return-object v0
.end method

.method public final getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;
    .locals 1

    .line 62565
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A19()Lcom/facebook/ads/redexgen/X/Uu;

    move-result-object v0

    .line 62566
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uu;->A00(Lcom/facebook/ads/redexgen/X/Uu;)Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 62567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RK;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    .line 62568
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;)V
    .locals 1

    .line 62569
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/RK;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 62570
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 62571
    .local p4, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p3, :cond_0

    .line 62572
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    .line 62573
    .local v0, "adObjectContext":Lcom/facebook/ads/redexgen/X/dL;
    invoke-virtual {p3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    .line 62574
    .local v1, "downloadContext":Lcom/facebook/ads/redexgen/X/dL;
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/dL;->A0L(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 62575
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A15()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    .line 62576
    invoke-static {v0, p3, v1}, Lcom/facebook/ads/redexgen/X/Qc;->A0k(Lcom/facebook/ads/internal/api/NativeAdImageApi;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 62577
    .end local v0    # "adObjectContext":Lcom/facebook/ads/redexgen/X/dL;
    .end local v1    # "downloadContext":Lcom/facebook/ads/redexgen/X/dL;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/facebook/ads/redexgen/X/RK;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 62578
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 62579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/RK;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 62580
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 62581
    .local p3, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 62582
    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/fh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0L(Lcom/facebook/ads/NativeAd;)V

    .line 62583
    :cond_0
    if-eqz p3, :cond_1

    .line 62584
    invoke-virtual {p3}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/fh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RK;->A01:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    .line 62585
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0M(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V

    .line 62586
    :cond_1
    if-eqz p4, :cond_2

    .line 62587
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lcom/facebook/ads/redexgen/X/Qc;->A1P(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 62588
    :goto_0
    return-void

    .line 62589
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RK;->A00()Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/RK;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/RK;->A02:[Ljava/lang/String;

    const-string v1, "Y8dslRp9uWVtvGXxjU2U0Td790Xm7bcp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/Qc;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 1
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

    .line 62590
    .local p4, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/RK;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 62591
    return-void
.end method

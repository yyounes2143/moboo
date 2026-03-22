.class public Lcom/facebook/ads/redexgen/X/fw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xn;


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/R0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2763
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8tOzOPKLz5DDIwqC88XBXxH90bmVDotF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YCktuRbEMhZaz9U821mncTHWO05lwCqY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Eq7g3criU65KDBPK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XEHycrxPk7FQv1FkL381pmPNBNbKujpl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "niYnM4G6gzmxtC7fq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sRQOtQAi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8G5qrnHnaOtx52JqPPi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6arHmIfqlBfM2iqNpfy3RxuQJelIt1eI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fw;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 1

    .line 81682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81683
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    .line 81684
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 2

    .line 81685
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/R0;->A07()Lcom/facebook/ads/redexgen/X/cw;

    move-result-object v1

    .line 81686
    .local v0, "mediationOverlay":Lcom/facebook/ads/redexgen/X/cw;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/R0;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81687
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/R0;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 81688
    :cond_0
    return-void
.end method


# virtual methods
.method public A3w(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 81689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/R0;

    .line 81690
    .local v0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/R0;
    if-eqz v1, :cond_0

    .line 81691
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/R0;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81692
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/R0;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 81693
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/fw;->A00(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 81694
    :cond_0
    return-void
.end method

.method public A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 81695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/R0;

    .line 81696
    .local v0, "audienceNetworkActivityApi":Lcom/facebook/ads/redexgen/X/R0;
    if-eqz v1, :cond_0

    .line 81697
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/R0;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81698
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/R0;->A04()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81699
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/fw;->A00(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 81700
    :cond_0
    return-void
.end method

.method public A4b(Ljava/lang/String;)V
    .locals 1

    .line 81701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R0;->A0C(Ljava/lang/String;)V

    .line 81703
    :cond_0
    return-void
.end method

.method public A4c(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 1

    .line 81704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/R0;->A0E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V

    .line 81706
    :cond_0
    return-void
.end method

.method public AAf(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 4

    .line 81707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81708
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/facebook/ads/redexgen/X/fw;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/fw;->A01:[Ljava/lang/String;

    const-string v1, "IO1gKUYJJG6YtU6JnI8y"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/R0;->A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    .line 81709
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public ACf(I)V
    .locals 1

    .line 81710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R0;

    .line 81711
    .local v0, "activityApi":Lcom/facebook/ads/redexgen/X/R0;
    if-eqz v0, :cond_0

    .line 81712
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 81713
    :cond_0
    return-void
.end method

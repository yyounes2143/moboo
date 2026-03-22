.class public final Lcom/facebook/ads/redexgen/X/S9;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Qc;->A0g(Landroid/view/View;Landroid/view/View;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/iN;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Qc;

.field public final synthetic A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1586
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hBf0w5eWi1Spl1ubHLZPwgySyKwDkFls"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "R1QfRDzVW3llag6pkWHTLJyFxLfuZYUb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hIMvI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VChjXPEjBKz9WEtkkyfZeEDOAtDm6pyS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZAoFS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FLKekHrPvHjWwOMiUj748H2wUl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "P5m22x1ZKo3VUkYY2cMyPktUJxi7JgjH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Nk3fSWmW4cxCKGmv1zm92qMESviF4Rnt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/S9;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qc;Landroid/view/View;ZLcom/facebook/ads/redexgen/X/iN;)V
    .locals 0

    .line 63488
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Landroid/view/View;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/S9;->A01:Lcom/facebook/ads/redexgen/X/iN;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 63489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Q(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uz;->A06()V

    .line 63490
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 63491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Q(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uz;->A0A()V

    .line 63492
    return-void
.end method

.method public final A03()V
    .locals 4

    .line 63493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Q(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uz;->A0B()V

    .line 63494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    .line 63495
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 63496
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    if-eqz v0, :cond_0

    .line 63498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/internal/api/AdNativeComponentView;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->getAdContentsView()Landroid/view/View;

    move-result-object v1

    .line 63499
    .local v0, "videoView":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/dY;

    if-eqz v0, :cond_0

    .line 63500
    check-cast v1, Lcom/facebook/ads/redexgen/X/dY;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dY;->A05()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0V(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0T()V

    .line 63502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Q(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uz;->A08()V

    .line 63503
    return-void

    .line 63504
    .end local v0    # "videoView":Landroid/view/View;
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Z

    if-eqz v0, :cond_1

    .line 63505
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 63506
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A06(Lcom/facebook/ads/redexgen/X/Qc;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63507
    .local v1, "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 63508
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Qc;->A0f(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 63509
    .end local v0    # "iv":Landroid/widget/ImageView;
    .end local v1    # "loadedNativeBannerIconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Q(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0I(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A01:Lcom/facebook/ads/redexgen/X/iN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iN;->A0G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A0C(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V

    .line 63510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0V(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0V(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    .line 63512
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Y(Lcom/facebook/ads/redexgen/X/Qc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Y(Lcom/facebook/ads/redexgen/X/Qc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 63513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Y(Lcom/facebook/ads/redexgen/X/Qc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/eW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eW;->A03()V

    .line 63514
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0S(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 63515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0l(Lcom/facebook/ads/redexgen/X/Qc;)V

    .line 63516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A08(Lcom/facebook/ads/redexgen/X/Qc;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A09(Lcom/facebook/ads/redexgen/X/Qc;)Landroid/view/View;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/S9;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A04:[Ljava/lang/String;

    const-string v1, "XqswFkrS2Yg5WXkyCZy0rAQHDfEy407U"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "6zRr91flYJNmh2JhyLNuVxqP1ZintOSM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    .line 63517
    :cond_4
    return-void

    .line 63518
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A08(Lcom/facebook/ads/redexgen/X/Qc;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0A(Landroid/view/View;)V

    .line 63519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A09(Lcom/facebook/ads/redexgen/X/Qc;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A09(Landroid/view/View;)V

    .line 63520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0P(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Us;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0E(Lcom/facebook/ads/redexgen/X/Us;)V

    .line 63521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0s(Lcom/facebook/ads/redexgen/X/Qc;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0I(Z)V

    .line 63522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0t(Lcom/facebook/ads/redexgen/X/Qc;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0M(Z)V

    .line 63523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0u(Lcom/facebook/ads/redexgen/X/Qc;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0L(Z)V

    .line 63524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0v(Lcom/facebook/ads/redexgen/X/Qc;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0J(Z)V

    .line 63525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0D(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0C(Lcom/facebook/ads/redexgen/X/Mc;)V

    .line 63526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0w(Lcom/facebook/ads/redexgen/X/Qc;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0K(Z)V

    .line 63527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    .line 63528
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0B(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/NativeAdLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A00(Lcom/facebook/ads/NativeAdLayout;)Lcom/facebook/ads/redexgen/X/Md;

    move-result-object v0

    .line 63529
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0D(Lcom/facebook/ads/redexgen/X/Md;)V

    .line 63530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0X(Lcom/facebook/ads/redexgen/X/Qc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0F(Ljava/lang/String;)V

    .line 63531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0N(Z)V

    .line 63532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0B(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/NativeAdLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0B(Lcom/facebook/ads/NativeAdLayout;)V

    .line 63533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Z(Lcom/facebook/ads/redexgen/X/Qc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/iC;->A0G(Ljava/lang/ref/WeakReference;)V

    .line 63534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0E(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/iC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MR;->A03()V

    goto :goto_0

    .line 63535
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63536
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Q(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uz;->A04()V

    .line 63537
    :goto_0
    return-void

    .line 63538
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0V(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0T()V

    .line 63539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0Q(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uz;->A07()V

    .line 63540
    return-void
.end method

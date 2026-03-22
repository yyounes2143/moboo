.class public abstract Lcom/facebook/ads/redexgen/X/G2;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xo;


# static fields
.field public static final A0E:Landroid/widget/RelativeLayout$LayoutParams;

.field public static final A0F:I

.field public static final A0G:I


# instance fields
.field public A00:Z

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/hy;

.field public final A03:Lcom/facebook/ads/redexgen/X/SF;

.field public final A04:Lcom/facebook/ads/redexgen/X/dL;

.field public final A05:Lcom/facebook/ads/redexgen/X/US;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A07:Lcom/facebook/ads/redexgen/X/XH;

.field public final A08:Lcom/facebook/ads/redexgen/X/Xm;

.field public final A09:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A0A:Lcom/facebook/ads/redexgen/X/YY;

.field public final A0B:Lcom/facebook/ads/redexgen/X/eX;

.field public final A0C:Lcom/facebook/ads/redexgen/X/XC;

.field public final A0D:Lcom/facebook/ads/redexgen/X/eW;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 704
    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/G2;->A0F:I

    .line 705
    const/high16 v1, 0x42800000    # 64.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/G2;->A0G:I

    .line 706
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/G2;->A0E:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 4

    .line 36906
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36907
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A01:Z

    .line 36908
    new-instance v0, Lcom/facebook/ads/redexgen/X/G7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/G7;-><init>(Lcom/facebook/ads/redexgen/X/G2;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A0D:Lcom/facebook/ads/redexgen/X/eW;

    .line 36909
    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A07:Lcom/facebook/ads/redexgen/X/XH;

    .line 36910
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A00:Z

    .line 36911
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 36912
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/G2;->A0A:Lcom/facebook/ads/redexgen/X/YY;

    .line 36913
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/G2;->A05:Lcom/facebook/ads/redexgen/X/US;

    .line 36914
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36915
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/G2;->A03:Lcom/facebook/ads/redexgen/X/SF;

    .line 36916
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/G2;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    .line 36917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36918
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A05:Lcom/facebook/ads/redexgen/X/US;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A06:Lcom/facebook/ads/redexgen/X/Ua;

    .line 36919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A0D:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v2, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/eX;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A0B:Lcom/facebook/ads/redexgen/X/eX;

    .line 36920
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A0B:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36921
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0i()I

    move-result v0

    .line 36922
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0W(I)V

    .line 36923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A0B:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0j()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0X(I)V

    .line 36924
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G2;->A0Z()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    .line 36925
    new-instance v0, Lcom/facebook/ads/redexgen/X/XC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XC;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A0C:Lcom/facebook/ads/redexgen/X/XC;

    .line 36926
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A0C:Lcom/facebook/ads/redexgen/X/XC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XB;->A02:Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A05(Lcom/facebook/ads/redexgen/X/XB;)V

    .line 36927
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G2;->A0j()Z

    move-result v0

    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_0

    .line 36928
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/G2;->setFitsSystemWindows(Z)V

    .line 36929
    :cond_0
    return-void
.end method

.method private A0Z()Lcom/facebook/ads/redexgen/X/Xm;
    .locals 6

    .line 36930
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G2;->A0b()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    .line 36931
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Xm;->setFullscreen(Z)V

    .line 36932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A04()I

    move-result v4

    .line 36933
    .local v2, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36934
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36935
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36936
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A24()Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    .line 36937
    invoke-virtual {v1, v5, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setPageDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/NF;)V

    .line 36938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36939
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36940
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A05(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v0

    .line 36941
    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Xm;->A0A(Lcom/facebook/ads/redexgen/X/My;Z)V

    .line 36942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A02()I

    move-result v0

    if-nez v0, :cond_2

    .line 36943
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/G2;->A01:Z

    .line 36944
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36945
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A02()I

    move-result v0

    if-ltz v0, :cond_1

    .line 36946
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressSpinnerInvisible(Z)V

    .line 36947
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/G3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/G3;-><init>(Lcom/facebook/ads/redexgen/X/G2;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Xl;)V

    .line 36948
    return-object v1

    .line 36949
    :cond_2
    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36950
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method private A0a()V
    .locals 4

    .line 36951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36952
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36953
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36954
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/cV;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/cV;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/N9;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36955
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cV;->A0A(Lcom/facebook/ads/redexgen/X/My;)Lcom/facebook/ads/redexgen/X/cV;

    move-result-object v0

    .line 36956
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cV;->A0F()Lcom/facebook/ads/redexgen/X/cX;

    move-result-object v2

    .line 36957
    .local v0, "introView":Lcom/facebook/ads/redexgen/X/cX;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A06:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0U:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 36958
    sget-object v0, Lcom/facebook/ads/redexgen/X/G2;->A0E:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/G2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36959
    new-instance v0, Lcom/facebook/ads/redexgen/X/G5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/G5;-><init>(Lcom/facebook/ads/redexgen/X/G2;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/cX;->A04(Lcom/facebook/ads/redexgen/X/cW;)V

    .line 36960
    .end local v0    # "introView":Lcom/facebook/ads/redexgen/X/cX;
    :goto_0
    return-void

    .line 36961
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G2;->A0f()V

    goto :goto_0
.end method


# virtual methods
.method public abstract A0b()Lcom/facebook/ads/redexgen/X/Xm;
.end method

.method public final A0c()V
    .locals 1

    .line 36962
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A00:Z

    if-nez v0, :cond_0

    .line 36963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A0B:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 36964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A00:Z

    .line 36965
    :cond_0
    return-void
.end method

.method public final A0d()V
    .locals 2

    .line 36966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 36967
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36968
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hy;->A2B(Z)V

    .line 36969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0M(I)V

    .line 36970
    return-void
.end method

.method public abstract A0e()V
.end method

.method public abstract A0f()V
.end method

.method public final A0g(ILcom/facebook/ads/redexgen/X/Vt;Lcom/facebook/ads/redexgen/X/Cw;)V
    .locals 2

    .line 36971
    new-instance v1, Lcom/facebook/ads/redexgen/X/G6;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/facebook/ads/redexgen/X/G6;-><init>(Lcom/facebook/ads/redexgen/X/G2;ILcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Vt;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wd;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(ILcom/facebook/ads/redexgen/X/Wc;)V

    .line 36972
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    .line 36973
    return-void
.end method

.method public abstract A0h(Lcom/facebook/ads/redexgen/X/R0;)V
.end method

.method public abstract A0i()Z
.end method

.method public abstract A0j()Z
.end method

.method public final AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 2

    .line 36974
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    sget-object v0, Lcom/facebook/ads/redexgen/X/G2;->A0E:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 36975
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/G2;->A0h(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 36976
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G2;->A0a()V

    .line 36977
    return-void
.end method

.method public final AIB(Landroid/os/Bundle;)V
    .locals 0

    .line 36978
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 36979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 36980
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 36981
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 36982
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G2;->A0j()Z

    move-result v0

    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_0

    .line 36983
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/G2;->setFitsSystemWindows(Z)V

    .line 36984
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 36985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A0C:Lcom/facebook/ads/redexgen/X/XC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XC;->A03()V

    .line 36986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36987
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/G2;->A05:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36988
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A0B:Lcom/facebook/ads/redexgen/X/eX;

    .line 36989
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A07:Lcom/facebook/ads/redexgen/X/XH;

    .line 36990
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 36991
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v0

    .line 36992
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/US;->AAt(Ljava/lang/String;Ljava/util/Map;)V

    .line 36993
    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 36994
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A07:Lcom/facebook/ads/redexgen/X/XH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/XH;->A06(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 36995
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 0

    .line 36996
    return-void
.end method

.method public setUpFullscreenMode(Z)V
    .locals 2

    .line 36997
    if-eqz p1, :cond_0

    .line 36998
    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A03:Lcom/facebook/ads/redexgen/X/XB;

    .line 36999
    .local v0, "mode":Lcom/facebook/ads/redexgen/X/XB;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A0C:Lcom/facebook/ads/redexgen/X/XC;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/XC;->A05(Lcom/facebook/ads/redexgen/X/XB;)V

    .line 37000
    return-void

    .line 37001
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A02:Lcom/facebook/ads/redexgen/X/XB;

    goto :goto_0
.end method

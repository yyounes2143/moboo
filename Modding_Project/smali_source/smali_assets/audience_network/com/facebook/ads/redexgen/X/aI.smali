.class public final Lcom/facebook/ads/redexgen/X/aI;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/aH;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Xm;

.field public A01:Lcom/facebook/ads/redexgen/X/YA;

.field public final A02:Lcom/facebook/ads/redexgen/X/hy;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final A04:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A05:Lcom/facebook/ads/redexgen/X/aH;

.field public final A06:Lcom/facebook/ads/redexgen/X/E1;

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2484
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Q8PK8a4jCXFMgXydViX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2t"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0mtDJDWqZSrfiocTEOLDLA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JwyFxt7bdt7eCUIm0ln"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fPboxvDBMmOISakSS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MBnzPw5d2FxZEvBrnzM1TlMBrMh4WSuO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jLpHRmCuYtO7UfmYbZzhe3ed5a74x24O"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3APcS373YHqcuLzV9G"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aI;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Zv;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/aH;)V
    .locals 7

    .line 75878
    const/4 v0, 0x2

    new-array v6, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p4, v6, v0

    const/4 v0, 0x1

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v3, p3

    move-object v5, p7

    move-object v2, p2

    move-object v4, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/aI;-><init>(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/aH;[Landroid/view/View;)V

    .line 75879
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/aH;[Landroid/view/View;)V
    .locals 8

    .line 75880
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    .line 75881
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v2

    .line 75882
    move-object v0, p0

    move-object v7, p6

    move-object v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/aI;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/aH;[Landroid/view/View;)V

    .line 75883
    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/E1;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/aH;[Landroid/view/View;)V
    .locals 4

    .line 75884
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75885
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A07:Ljava/util/List;

    .line 75886
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 75887
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aI;->A00:Lcom/facebook/ads/redexgen/X/Xm;

    .line 75888
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 75889
    array-length v3, p7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p7, v2

    .line 75890
    .local v2, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 75891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A07:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75892
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75893
    :cond_1
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/aI;->A04:Lcom/facebook/ads/redexgen/X/Xn;

    .line 75894
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aI;->A06:Lcom/facebook/ads/redexgen/X/E1;

    .line 75895
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/aI;->A05:Lcom/facebook/ads/redexgen/X/aH;

    .line 75896
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aI;->A04()V

    .line 75897
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/aI;)Lcom/facebook/ads/redexgen/X/Xm;
    .locals 0

    .line 75898
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aI;->A00:Lcom/facebook/ads/redexgen/X/Xm;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aI;)Lcom/facebook/ads/redexgen/X/aH;
    .locals 0

    .line 75899
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aI;->A05:Lcom/facebook/ads/redexgen/X/aH;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/aI;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 75900
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aI;->A06:Lcom/facebook/ads/redexgen/X/E1;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/aI;)Ljava/util/List;
    .locals 0

    .line 75901
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aI;->A07:Ljava/util/List;

    return-object p0
.end method

.method private A04()V
    .locals 10

    .line 75902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0p()Lcom/facebook/ads/RewardData;

    move-result-object v3

    .line 75903
    .local v0, "rewardData":Lcom/facebook/ads/RewardData;
    if-nez v3, :cond_0

    .line 75904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A22()Lcom/facebook/ads/redexgen/X/N6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N6;->A05()Ljava/lang/String;

    move-result-object v5

    .line 75905
    .local v6, "title":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/YA;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 75906
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A22()Lcom/facebook/ads/redexgen/X/N6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N6;->A04()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 75907
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A22()Lcom/facebook/ads/redexgen/X/N6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N6;->A03()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0r:Lcom/facebook/ads/redexgen/X/XX;

    .line 75908
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, -0x1

    const/high16 v4, -0x1000000

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/YA;-><init>(Lcom/facebook/ads/redexgen/X/dL;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/YA;

    .line 75909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/YA;->A02:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aF;-><init>(Lcom/facebook/ads/redexgen/X/aI;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/YA;->A01:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aG;-><init>(Lcom/facebook/ads/redexgen/X/aI;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75911
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75912
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/aI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75913
    return-void

    .line 75914
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 75915
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A22()Lcom/facebook/ads/redexgen/X/N6;

    move-result-object v2

    .line 75916
    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getQuantity()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N6;->A06(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private A05()V
    .locals 2

    .line 75917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A06:Lcom/facebook/ads/redexgen/X/E1;

    if-eqz v0, :cond_0

    .line 75918
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aI;->A06:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dT;->A07:Lcom/facebook/ads/redexgen/X/dT;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0g(Lcom/facebook/ads/redexgen/X/dT;)V

    .line 75919
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A05:Lcom/facebook/ads/redexgen/X/aH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aH;->ACI()V

    .line 75920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0V()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75921
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A04:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hy;->A28(Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 75922
    :cond_1
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/aI;)V
    .locals 0

    .line 75923
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aI;->A05()V

    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/ViewGroup;)V
    .locals 7

    .line 75924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A06:Lcom/facebook/ads/redexgen/X/E1;

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75925
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/aI;->A06:Lcom/facebook/ads/redexgen/X/E1;

    const/16 v5, 0xb

    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/aI;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/aI;->A08:[Ljava/lang/String;

    const-string v1, "1Ran1dt8ESvXQPCOL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "wn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6, v4, v4, v5}, Lcom/facebook/ads/redexgen/X/E1;->A0m(ZZI)V

    .line 75926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 75927
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A00:Lcom/facebook/ads/redexgen/X/Xm;

    if-eqz v0, :cond_2

    .line 75928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A00:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 75929
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/aI;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/aI;->A08:[Ljava/lang/String;

    const-string v1, "6LHnkwVNW3v3BurcJpp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "pBsoAnuzgJgS4JAM4BB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 75930
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 75931
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 75932
    .end local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 75933
    :cond_4
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75934
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A05:Lcom/facebook/ads/redexgen/X/aH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aH;->AE8()V

    .line 75936
    return-void
.end method

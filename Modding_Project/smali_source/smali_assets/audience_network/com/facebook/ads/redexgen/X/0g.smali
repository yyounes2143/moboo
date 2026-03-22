.class public final Lcom/facebook/ads/redexgen/X/0g;
.super Lcom/facebook/ads/redexgen/X/5h;
.source ""


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/KE;

.field public A01:Lcom/facebook/ads/redexgen/X/cn;

.field public final A02:Lcom/facebook/ads/redexgen/X/US;

.field public final A03:Lcom/facebook/ads/redexgen/X/Qc;

.field public final A04:Lcom/facebook/ads/redexgen/X/5s;

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 13
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "q"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "A73Xi2G3GXsP7eqOYxzIEC2a49UqAHwv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tzkKnItTrh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5yGem34VUXIU78ICazF0QaKYuuceWMlm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "d26mhKEOwDnFCjn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "V"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vFFUszWLQFPwstqQ2PhnuKwIvdRc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cQLhl1S6XoLnT945hQssVDVRJiee0FVC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0g;->A06:[Ljava/lang/String;

    const/high16 v1, -0x3f800000    # -4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/0g;->A08:I

    .line 14
    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/0g;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Qc;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/5s;)V
    .locals 1

    .line 4992
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/5h;-><init>(Lcom/facebook/ads/redexgen/X/ai;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)V

    .line 4993
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/0g;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    .line 4994
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/0g;->A05:Ljava/lang/String;

    .line 4995
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/0g;->A04:Lcom/facebook/ads/redexgen/X/5s;

    .line 4996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A02:Lcom/facebook/ads/redexgen/X/US;

    .line 4997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Qc;->A1L(Landroid/view/View;)V

    .line 4998
    return-void
.end method


# virtual methods
.method public setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/cn;)V
    .locals 12

    .line 4999
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0g;->A01:Lcom/facebook/ads/redexgen/X/cn;

    .line 5000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    .line 5001
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0Q(Landroid/content/Context;)I

    move-result v1

    .line 5002
    .local v0, "extensionVariant":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v6

    .line 5003
    .local v1, "colorInfo":Lcom/facebook/ads/redexgen/X/My;
    new-instance v3, Lcom/facebook/ads/redexgen/X/KE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    .line 5004
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    .line 5005
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0r()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/0g;->A02:Lcom/facebook/ads/redexgen/X/US;

    .line 5006
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zc;->getDummyListener()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A04:Lcom/facebook/ads/redexgen/X/5s;

    .line 5007
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5s;->A0b()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    .line 5008
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v10

    .line 5009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5010
    const/4 v11, 0x0

    .line 5011
    :goto_0
    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/My;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/0g;->A00:Lcom/facebook/ads/redexgen/X/KE;

    .line 5012
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/0g;->A00:Lcom/facebook/ads/redexgen/X/KE;

    .line 5013
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0g;->A05:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5014
    invoke-virtual {v4, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;)V

    .line 5015
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0g;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1L(Landroid/view/View;)V

    .line 5016
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5017
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v5, 0x0

    if-ne v1, v0, :cond_1

    .line 5018
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/0g;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5019
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A03:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v11

    goto :goto_0

    .line 5020
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 5021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5022
    sget v0, Lcom/facebook/ads/redexgen/X/0g;->A08:I

    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {p0, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/0g;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_1

    .line 5025
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/0g;->A06:[Ljava/lang/String;

    const-string v1, "cEnNLXyXCc05OsZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0g;->A00:Lcom/facebook/ads/redexgen/X/KE;

    sget v2, Lcom/facebook/ads/redexgen/X/0g;->A07:I

    .line 5026
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/My;->A0A(Z)I

    move-result v1

    .line 5027
    const/4 v0, 0x5

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0N(Landroid/view/View;III)V

    .line 5028
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0g;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5029
    :cond_3
    :goto_1
    return-void
.end method

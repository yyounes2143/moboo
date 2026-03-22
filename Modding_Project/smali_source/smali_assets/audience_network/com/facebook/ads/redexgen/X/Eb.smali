.class public final Lcom/facebook/ads/redexgen/X/Eb;
.super Lcom/facebook/ads/redexgen/X/QC;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/QC<",
        "Lcom/facebook/ads/redexgen/X/EZ;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;

.field public final A02:Lcom/facebook/ads/redexgen/X/KE;

.field public final A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/List;ILcom/facebook/ads/redexgen/X/KE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/KE;",
            ")V"
        }
    .end annotation

    .line 34985
    .local p2, "screenshotUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QC;-><init>()V

    .line 34986
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Eb;->A03:Ljava/util/List;

    .line 34987
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:I

    .line 34988
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 34989
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Eb;->A02:Lcom/facebook/ads/redexgen/X/KE;

    .line 34990
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Eb;)Lcom/facebook/ads/redexgen/X/KE;
    .locals 0

    .line 34991
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A02:Lcom/facebook/ads/redexgen/X/KE;

    return-object p0
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/EZ;
    .locals 2

    .line 34992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ea;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ea;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 34993
    .local v0, "view":Lcom/facebook/ads/redexgen/X/Ea;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34994
    new-instance v0, Lcom/facebook/ads/redexgen/X/dH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dH;-><init>(Lcom/facebook/ads/redexgen/X/Eb;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ea;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34995
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/EZ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/EZ;-><init>(Lcom/facebook/ads/redexgen/X/Ea;)V

    return-object v0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/EZ;I)V
    .locals 5

    .line 34996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A03:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 34997
    .local v0, "url":Ljava/lang/String;
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 34998
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:I

    mul-int/lit8 v2, v0, 0x4

    .line 34999
    .local v2, "startSpacing":I
    if-nez p2, :cond_1

    .line 35000
    .local v3, "leftMargin":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eb;->A0B()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:I

    mul-int/lit8 v1, v0, 0x4

    .line 35001
    .local v4, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 35002
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EZ;->A0p()Lcom/facebook/ads/redexgen/X/Ea;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35003
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EZ;->A0p()Lcom/facebook/ads/redexgen/X/Ea;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ea;->A00(Ljava/lang/String;)V

    .line 35004
    return-void

    .line 35005
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:I

    goto :goto_1

    .line 35006
    :cond_1
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:I

    goto :goto_0
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 35007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A03:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 1

    .line 35008
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eb;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/EZ;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0K(Lcom/facebook/ads/redexgen/X/Qg;I)V
    .locals 0

    .line 35009
    check-cast p1, Lcom/facebook/ads/redexgen/X/EZ;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eb;->A02(Lcom/facebook/ads/redexgen/X/EZ;I)V

    return-void
.end method

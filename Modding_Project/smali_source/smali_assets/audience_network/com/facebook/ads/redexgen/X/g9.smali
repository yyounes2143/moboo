.class public final Lcom/facebook/ads/redexgen/X/g9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6g;->A0O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6g;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/g9;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 0

    .line 81965
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/g9;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x48

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/g9;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        0x4t
        0xft
        0xft
        0x8t
        0x7t
        -0x3dt
        0x4t
        0x17t
        0x17t
        0x4t
        0x6t
        0xbt
        -0x3dt
        0x12t
        0x11t
        -0x3dt
        0x4t
        -0x3dt
        0x6t
        0xbt
        0xct
        0xft
        0x7t
        -0x3dt
        0x1at
        0xbt
        0xct
        0x6t
        0xbt
        -0x3dt
        0xct
        0x16t
        -0x3dt
        0x11t
        0x12t
        0x17t
        -0x3dt
        0x7t
        0x8t
        0x17t
        0x4t
        0x6t
        0xbt
        0x8t
        0x7t
        -0x23t
        -0x3dt
        -0x35t
        -0x37t
        -0x2ct
        -0x2ct
        -0x33t
        -0x34t
        -0x78t
        -0x34t
        -0x33t
        -0x24t
        -0x37t
        -0x35t
        -0x30t
        -0x78t
        -0x29t
        -0x2at
        -0x78t
        -0x37t
        -0x2at
        -0x78t
        -0x37t
        -0x2ct
        -0x26t
        -0x33t
        -0x37t
        -0x34t
        -0x1ft
        -0x78t
        -0x34t
        -0x33t
        -0x24t
        -0x37t
        -0x35t
        -0x30t
        -0x33t
        -0x34t
        -0x78t
        -0x35t
        -0x30t
        -0x2ft
        -0x2ct
        -0x34t
        -0x78t
    .end array-data
.end method


# virtual methods
.method public final A4C(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 81966
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v4

    .line 81967
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/Qg;
    if-eqz v4, :cond_1

    .line 81968
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qg;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qg;->A0l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81969
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qg;->A0V()V

    .line 81970
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/6g;->A0w(Lcom/facebook/ads/redexgen/X/6g;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 81971
    return-void

    .line 81972
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    .line 81973
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A5o(I)V
    .locals 5

    .line 81974
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/g9;->A79(I)Landroid/view/View;

    move-result-object v0

    .line 81975
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 81976
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v4

    .line 81977
    .local v1, "vh":Lcom/facebook/ads/redexgen/X/Qg;
    if-eqz v4, :cond_1

    .line 81978
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qg;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qg;->A0l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81979
    :cond_0
    const/16 v0, 0x100

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0Z(I)V

    .line 81980
    .end local v1    # "vh":Lcom/facebook/ads/redexgen/X/Qg;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->A0u(Lcom/facebook/ads/redexgen/X/6g;I)V

    .line 81981
    return-void

    .line 81982
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/16 v1, 0x2b

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    .line 81983
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A79(I)Landroid/view/View;
    .locals 1

    .line 81984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A7A()I
    .locals 1

    .line 81985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final A7D(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 1

    .line 81986
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    return-object v0
.end method

.method public final A9z(Landroid/view/View;)I
    .locals 1

    .line 81987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ADA(Landroid/view/View;)V
    .locals 2

    .line 81988
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v1

    .line 81989
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/Qg;
    if-eqz v1, :cond_0

    .line 81990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0B(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/6g;)V

    .line 81991
    :cond_0
    return-void
.end method

.method public final ADv(Landroid/view/View;)V
    .locals 2

    .line 81992
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6g;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v1

    .line 81993
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/Qg;
    if-eqz v1, :cond_0

    .line 81994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0C(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/6g;)V

    .line 81995
    :cond_0
    return-void
.end method

.method public final AHg()V
    .locals 4

    .line 81996
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/g9;->A7A()I

    move-result v3

    .line 81997
    .local v0, "count":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 81998
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/g9;->A79(I)Landroid/view/View;

    move-result-object v1

    .line 81999
    .local v2, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6g;->A1g(Landroid/view/View;)V

    .line 82000
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 82001
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82002
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->removeAllViews()V

    .line 82003
    return-void
.end method

.method public final AHm(I)V
    .locals 2

    .line 82004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 82005
    .local v0, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 82006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6g;->A1g(Landroid/view/View;)V

    .line 82007
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 82008
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->removeViewAt(I)V

    .line 82009
    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 82010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/6g;->addView(Landroid/view/View;I)V

    .line 82011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g9;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6g;->A1f(Landroid/view/View;)V

    .line 82012
    return-void
.end method

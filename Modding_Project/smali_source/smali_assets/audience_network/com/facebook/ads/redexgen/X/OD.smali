.class public Lcom/facebook/ads/redexgen/X/OD;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xo;


# static fields
.field public static A0F:[B

.field public static final A0G:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/R6;

.field public final A07:Lcom/facebook/ads/redexgen/X/R0;

.field public final A08:Lcom/facebook/ads/redexgen/X/dL;

.field public final A09:Lcom/facebook/ads/redexgen/X/US;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A0B:Lcom/facebook/ads/redexgen/X/ZO;

.field public final A0C:Lcom/facebook/ads/redexgen/X/ZP;

.field public final A0D:Lcom/facebook/ads/redexgen/X/ZY;

.field public final A0E:Lcom/facebook/ads/redexgen/X/LJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1441
    invoke-static {}, Lcom/facebook/ads/redexgen/X/OD;->A0D()V

    const-class v0, Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OD;->A0G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R0;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 3

    .line 55147
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55148
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Oi;-><init>(Lcom/facebook/ads/redexgen/X/OD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A06:Lcom/facebook/ads/redexgen/X/R6;

    .line 55149
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/OD;->A05:Z

    .line 55150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A01:J

    .line 55151
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/OD;->A03:Z

    .line 55152
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/R0;

    .line 55153
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/OD;->A09:Lcom/facebook/ads/redexgen/X/US;

    .line 55154
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/OD;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    .line 55155
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OD;->A08:Lcom/facebook/ads/redexgen/X/dL;

    .line 55156
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55157
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A9n()V

    .line 55158
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OD;->A0E()Lcom/facebook/ads/redexgen/X/ZY;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0D:Lcom/facebook/ads/redexgen/X/ZY;

    .line 55159
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/U8;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 55160
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0D:Lcom/facebook/ads/redexgen/X/ZY;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {v2, p2, v0}, Lcom/facebook/ads/redexgen/X/LJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/ZY;)V

    .line 55161
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    .line 55162
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZO;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/redexgen/X/ZO;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    .line 55163
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->setId(I)V

    .line 55164
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Of;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Of;-><init>(Lcom/facebook/ads/redexgen/X/OD;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->setListener(Lcom/facebook/ads/redexgen/X/ZN;)V

    .line 55165
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZO;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/ZZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LJ;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/ZZ;)V

    .line 55166
    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZP;

    invoke-direct {v0, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/ZP;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0C:Lcom/facebook/ads/redexgen/X/ZP;

    .line 55167
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OD;->A0F()V

    .line 55168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A06:Lcom/facebook/ads/redexgen/X/R6;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A0A(Lcom/facebook/ads/redexgen/X/R6;)V

    .line 55169
    return-void

    .line 55170
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0D:Lcom/facebook/ads/redexgen/X/ZY;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/LJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/ZY;)V

    goto :goto_0
.end method

.method public static A0C(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OD;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0xf2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OD;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x5at
        0x70t
        0x70t
        0x7dt
        0x70t
        0x14t
        0x3ft
        0x3dt
        0x70t
        0x13t
        0x3ft
        0x3et
        0x24t
        0x35t
        0x3et
        0x24t
        0x70t
        0x1ct
        0x3ft
        0x31t
        0x34t
        0x35t
        0x34t
        0x70t
        0x4t
        0x39t
        0x3dt
        0x35t
        0x6at
        0x70t
        0x30t
        0x1at
        0x1at
        0x17t
        0x1at
        0x76t
        0x55t
        0x5bt
        0x5et
        0x1at
        0x7ct
        0x53t
        0x54t
        0x53t
        0x49t
        0x52t
        0x1at
        0x6et
        0x53t
        0x57t
        0x5ft
        0x0t
        0x1at
        0x5ft
        0x75t
        0x75t
        0x78t
        0x75t
        0x19t
        0x3at
        0x34t
        0x31t
        0x75t
        0x6t
        0x21t
        0x34t
        0x27t
        0x21t
        0x75t
        0x1t
        0x3ct
        0x38t
        0x30t
        0x6ft
        0x75t
        0x75t
        0x5ft
        0x5ft
        0x52t
        0x5ft
        0x2dt
        0x1at
        0xct
        0xft
        0x10t
        0x11t
        0xct
        0x1at
        0x5ft
        0x3at
        0x11t
        0x1bt
        0x5ft
        0x2bt
        0x16t
        0x12t
        0x1at
        0x45t
        0x5ft
        0x6dt
        0x47t
        0x47t
        0x4at
        0x47t
        0x34t
        0x4t
        0x15t
        0x8t
        0xbt
        0xbt
        0x47t
        0x35t
        0x2t
        0x6t
        0x3t
        0x1et
        0x47t
        0x33t
        0xet
        0xat
        0x2t
        0x5dt
        0x47t
        0x57t
        0x7dt
        0x7dt
        0x70t
        0x7dt
        0xet
        0x38t
        0x2et
        0x2et
        0x34t
        0x32t
        0x33t
        0x7dt
        0x1bt
        0x34t
        0x33t
        0x34t
        0x2et
        0x35t
        0x7dt
        0x9t
        0x34t
        0x30t
        0x38t
        0x67t
        0x7dt
        0x2at
        0x1at
        0x30t
        0x30t
        0x3dt
        0x30t
        0x58t
        0x71t
        0x7et
        0x74t
        0x7ct
        0x75t
        0x62t
        0x30t
        0x44t
        0x79t
        0x7dt
        0x75t
        0x2at
        0x30t
        0x61t
        0x51t
        0x4ct
        0x54t
        0x50t
        0x46t
        0x51t
        0x3t
        0x50t
        0x46t
        0x50t
        0x50t
        0x4at
        0x4ct
        0x4dt
        0x3t
        0x47t
        0x42t
        0x57t
        0x42t
        0x3t
        0x4ft
        0x4ct
        0x44t
        0x44t
        0x46t
        0x47t
        0x3t
        0x63t
        0x3t
        0x7et
        0x7dt
        0x70t
        0x6at
        0x6bt
        0x25t
        0x7dt
        0x73t
        0x7et
        0x71t
        0x74t
        0x43t
        0x53t
        0x4et
        0x56t
        0x52t
        0x44t
        0x53t
        0x74t
        0x73t
        0x6dt
        0x55t
        0x5at
        0x5ft
        0x53t
        0x58t
        0x42t
        0x62t
        0x59t
        0x5dt
        0x53t
        0x58t
        0x25t
        0x2ct
        0x23t
        0x29t
        0x21t
        0x28t
        0x3ft
        0x19t
        0x24t
        0x20t
        0x28t
    .end array-data
.end method


# virtual methods
.method public A0E()Lcom/facebook/ads/redexgen/X/ZY;
    .locals 1

    .line 55171
    new-instance v0, Lcom/facebook/ads/redexgen/X/OI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OI;-><init>(Lcom/facebook/ads/redexgen/X/OD;)V

    return-object v0
.end method

.method public A0F()V
    .locals 5

    .line 55172
    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55173
    .local v0, "controlsViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55174
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 55175
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55176
    .local v2, "webViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZO;->getId()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55177
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55178
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 55179
    const/high16 v1, 0x40000000    # 2.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 55180
    .local v3, "progressBarHeightPx":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55181
    .local v1, "progressBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZO;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55182
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0C:Lcom/facebook/ads/redexgen/X/ZP;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 55183
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0C:Lcom/facebook/ads/redexgen/X/ZP;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 55184
    return-void
.end method

.method public A0G()V
    .locals 2

    .line 55185
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/R0;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 55186
    return-void
.end method

.method public A0H(Ljava/lang/String;)V
    .locals 0

    .line 55187
    return-void
.end method

.method public AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 7

    .line 55188
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/OD;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 55189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A01:J

    .line 55190
    :cond_0
    const-wide/16 v1, -0x1

    const/16 v4, 0xe7

    const/16 v3, 0xb

    const/16 v0, 0x61

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0xdc

    const/16 v3, 0xb

    const/16 v0, 0x1a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0xd2

    const/16 v3, 0xa

    const/16 v0, 0xd

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_2

    .line 55191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A02:Ljava/lang/String;

    .line 55192
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A04:Ljava/lang/String;

    .line 55193
    invoke-virtual {p1, v6, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A00:J

    .line 55194
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A02:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A02:Ljava/lang/String;

    .line 55195
    .local v0, "url":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0B:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ZO;->setUrl(Ljava/lang/String;)V

    .line 55196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/LJ;->loadUrl(Ljava/lang/String;)V

    .line 55197
    return-void

    .line 55198
    :cond_1
    const/16 v2, 0xc7

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 55199
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A02:Ljava/lang/String;

    .line 55200
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A04:Ljava/lang/String;

    .line 55201
    invoke-virtual {p2, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A00:J

    goto :goto_0
.end method

.method public final AEV(Z)V
    .locals 5

    .line 55202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->onPause()V

    .line 55203
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A03:Z

    if-eqz v0, :cond_0

    .line 55204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A03:Z

    .line 55205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    .line 55206
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->getFirstUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/ZR;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/ZR;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A00:J

    .line 55207
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ZR;->A01(J)Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A01:J

    .line 55208
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ZR;->A03(J)Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    .line 55209
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->getResponseEndMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ZR;->A04(J)Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    .line 55210
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->getDomContentLoadedMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ZR;->A00(J)Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    .line 55211
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->getScrollReadyMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ZR;->A05(J)Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    .line 55212
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->getLoadFinishMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ZR;->A02(J)Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v2

    .line 55213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ZR;->A06(J)Lcom/facebook/ads/redexgen/X/ZR;

    move-result-object v0

    .line 55214
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZR;->A07()Lcom/facebook/ads/redexgen/X/ZS;

    move-result-object v4

    .line 55215
    .local v0, "sessionData":Lcom/facebook/ads/redexgen/X/ZS;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OD;->A09:Lcom/facebook/ads/redexgen/X/US;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A04:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ZS;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/US;->AAr(Ljava/lang/String;Ljava/util/Map;)V

    .line 55216
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa9

    const/16 v1, 0x1e

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x95

    const/16 v1, 0x14

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ZS;->A01:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x35

    const/16 v1, 0x16

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ZS;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x4b

    const/16 v1, 0x18

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ZS;->A04:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ZS;->A00:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x63

    const/16 v1, 0x18

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ZS;->A05:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x17

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ZS;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x7b

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ZS;->A06:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55219
    .end local v0    # "sessionData":Lcom/facebook/ads/redexgen/X/ZS;
    :cond_0
    return-void
.end method

.method public final AF0(Z)V
    .locals 1

    .line 55220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->onResume()V

    .line 55221
    return-void
.end method

.method public final AIB(Landroid/os/Bundle;)V
    .locals 3

    .line 55222
    const/16 v2, 0xd2

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OD;->A0C(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A02:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55223
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 55224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A04:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 55225
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 55226
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/R0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A06:Lcom/facebook/ads/redexgen/X/R6;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A0B(Lcom/facebook/ads/redexgen/X/R6;)V

    .line 55227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zk;->A03(Landroid/webkit/WebView;)V

    .line 55228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OD;->A0E:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->destroy()V

    .line 55229
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 0

    .line 55230
    return-void
.end method

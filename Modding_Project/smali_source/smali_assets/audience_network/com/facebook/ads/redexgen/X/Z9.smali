.class public abstract Lcom/facebook/ads/redexgen/X/Z9;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Z6;)Landroid/widget/ImageView;
    .locals 8

    .line 74159
    move-object v3, p0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    move-object v6, p4

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Z5;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/LH;->AAv(Ljava/lang/String;)V

    .line 74160
    move-object v7, p2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/hy;->A2F()Z

    move-result v0

    move-object v5, p3

    move-object v4, p1

    if-eqz v0, :cond_0

    .line 74161
    new-instance p0, Lcom/facebook/ads/redexgen/X/Z4;

    .line 74162
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/hy;->A1y()I

    move-result p4

    new-instance v2, Lcom/facebook/ads/redexgen/X/Z7;

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Z7;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/hy;)V

    move-object p3, p6

    move-object p2, p5

    move-object p1, v3

    move-object p5, v2

    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Z4;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Z6;ILandroid/view/View$OnClickListener;)V

    .line 74163
    return-object p0

    .line 74164
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/Z8;

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Z8;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/hy;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZA;

    invoke-direct {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/ZA;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/Xn;Landroid/os/Handler;)Landroid/widget/ImageView;
    .locals 7

    .line 74165
    sget-object v6, Lcom/facebook/ads/redexgen/X/Z6;->A03:Lcom/facebook/ads/redexgen/X/Z6;

    move-object v5, p5

    move-object v3, p4

    move-object v4, p3

    move-object v2, p2

    move-object v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Z9;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Z6;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/hy;Landroid/view/View;)V
    .locals 6

    .line 74166
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v4

    .line 74167
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v5

    .line 74168
    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Z9;->A04(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/hy;Landroid/view/View;)V
    .locals 6

    .line 74169
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v4

    .line 74170
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v5

    .line 74171
    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Z9;->A04(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Z5;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 3

    .line 74172
    if-eqz p1, :cond_0

    .line 74173
    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0A:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 74174
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Z5;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/LH;->AAu(Ljava/lang/String;)V

    .line 74175
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v2

    .line 74176
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O2;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74177
    invoke-interface {p2, p4, p5}, Lcom/facebook/ads/redexgen/X/Xn;->AAf(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    .line 74178
    :cond_1
    :goto_0
    return-void

    .line 74179
    :cond_2
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/N9;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74180
    new-instance v1, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    .line 74181
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/N9;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 74182
    invoke-static {v1, p0, v0, p4}, Lcom/facebook/ads/redexgen/X/WN;->A0O(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;)Z

    goto :goto_0
.end method

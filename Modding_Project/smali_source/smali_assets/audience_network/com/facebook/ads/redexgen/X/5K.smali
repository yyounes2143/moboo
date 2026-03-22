.class public final Lcom/facebook/ads/redexgen/X/5K;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xo;
.implements Lcom/facebook/ads/redexgen/X/I3;


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/R0;

.field public A01:Lcom/facebook/ads/redexgen/X/R6;

.field public A02:Lcom/facebook/ads/redexgen/X/c0;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/hy;

.field public final A07:Lcom/facebook/ads/redexgen/X/dL;

.field public final A08:Lcom/facebook/ads/redexgen/X/US;

.field public final A09:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A0A:Lcom/facebook/ads/redexgen/X/XC;

.field public final A0B:Lcom/facebook/ads/redexgen/X/XH;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A0D:Lcom/facebook/ads/redexgen/X/YY;

.field public final A0E:Lcom/facebook/ads/redexgen/X/bl;

.field public final A0F:Lcom/facebook/ads/redexgen/X/bt;

.field public final A0G:Lcom/facebook/ads/redexgen/X/eW;

.field public final A0H:Lcom/facebook/ads/redexgen/X/eX;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 347
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UTx0mthy689a2sWy4JVu0tmbo5tf7DAX"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DpQrJfF4GGVCKG366ycalUQvQmaAeTpv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eTaJ9UlZkoiVo78onrsfkh8qyWU6l07Y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ASk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tRl9yBUHWghtVC3MTlEkON1DGIMHt5L9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IjjI8eijgHBxehc5IxL2bCSmbEZHlZYm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ajbOHBl4KDnxYMWXO0J67"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uiq3lL8JcMvDgND3txStxUQziaPHduab"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5K;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5K;->A0D()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/YY;I)V
    .locals 11

    .line 15092
    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15093
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Lcom/facebook/ads/redexgen/X/5K;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/redexgen/X/R6;

    .line 15094
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ih;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ih;-><init>(Lcom/facebook/ads/redexgen/X/5K;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0G:Lcom/facebook/ads/redexgen/X/eW;

    .line 15095
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/5K;->A03:Z

    .line 15096
    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 15097
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/5K;->A08:Lcom/facebook/ads/redexgen/X/US;

    .line 15098
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/5K;->A0C:Lcom/facebook/ads/redexgen/X/Xn;

    .line 15099
    iput-object p4, v0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 15100
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0D:Lcom/facebook/ads/redexgen/X/YY;

    .line 15101
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/bu;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v1

    .line 15102
    .local v7, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/bt;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 15103
    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    .line 15104
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/5K;->A04:Z

    .line 15105
    :goto_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/bt;->A0K()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A09:Lcom/facebook/ads/redexgen/X/Ua;

    .line 15106
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/bt;->A0L()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0B:Lcom/facebook/ads/redexgen/X/XH;

    .line 15107
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Id;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Id;-><init>(Lcom/facebook/ads/redexgen/X/5K;)V

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/bt;->A0c(Lcom/facebook/ads/redexgen/X/bs;)V

    .line 15108
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v2

    const/16 v1, 0x3eb

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 15109
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mo;->A1P()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15110
    new-instance v2, Lcom/facebook/ads/redexgen/X/bl;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/5K;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v6, v1}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/5K;->A09:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/5K;->A0C:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/5K;->A0D:Lcom/facebook/ads/redexgen/X/YY;

    new-instance v10, Lcom/facebook/ads/redexgen/X/Ib;

    invoke-direct {v10, v0}, Lcom/facebook/ads/redexgen/X/Ib;-><init>(Lcom/facebook/ads/redexgen/X/5K;)V

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/bl;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/bk;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    .line 15111
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/bl;->A0N()V

    .line 15112
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    .line 15113
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/bh;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;-><init>(Lcom/facebook/ads/redexgen/X/5K;)V

    .line 15114
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/I5;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15115
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/5K;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15116
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5K;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v5

    .line 15117
    .local v2, "mediaView":Landroid/view/ViewGroup;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0G:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v2, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/eX;

    invoke-direct {v1, v5, v2, v4, v3}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0H:Lcom/facebook/ads/redexgen/X/eX;

    .line 15118
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/5K;->A0H:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 15119
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mo;->A0i()I

    move-result v1

    .line 15120
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/eX;->A0W(I)V

    .line 15121
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/5K;->A0H:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mo;->A0j()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/eX;->A0X(I)V

    .line 15122
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0H:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/bt;->A0e(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 15123
    new-instance v1, Lcom/facebook/ads/redexgen/X/XC;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0A:Lcom/facebook/ads/redexgen/X/XC;

    .line 15124
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/5K;->A0A:Lcom/facebook/ads/redexgen/X/XC;

    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A02:Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/XC;->A05(Lcom/facebook/ads/redexgen/X/XB;)V

    .line 15125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/5K;->setBackgroundColor(I)V

    .line 15126
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15127
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v4

    .line 15128
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ue;->AK4(Landroid/view/View;Ljava/lang/String;ZZZ)V

    goto :goto_2

    .line 15129
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    goto :goto_1

    .line 15130
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Lcom/facebook/ads/redexgen/X/bt;

    move/from16 v4, p6

    invoke-direct {v1, v2, p4, p2, v4}, Lcom/facebook/ads/redexgen/X/bt;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/US;I)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    .line 15131
    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/5K;->A04:Z

    goto/16 :goto_0

    .line 15132
    :cond_2
    :goto_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 15133
    .local v0, "config":Lorg/json/JSONObject;
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/hy;->A2C()Z

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x44

    const/16 v2, 0x12

    const/16 v1, 0x14

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/5K;->A0B(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    const/16 v2, 0x10

    const/16 v1, 0x6b

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/5K;->A0B(III)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/16 v5, 0x34

    const/16 v2, 0x10

    const/16 v1, 0x61

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/5K;->A0B(III)Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x1a

    const/16 v2, 0xa

    const/4 v1, 0x1

    invoke-static {v5, v2, v1}, Lcom/facebook/ads/redexgen/X/5K;->A0B(III)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_3

    .line 15134
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15135
    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15136
    const/4 v1, 0x0

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15137
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mo;->A0o()J

    move-result-wide v1

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    .line 15138
    :cond_3
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Mo;->A0u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WR;->A05(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15139
    const/4 v1, 0x1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15140
    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15141
    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15142
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mo;->A0o()J

    move-result-wide v1

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15143
    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/bt;->A0j(Lorg/json/JSONObject;)V

    goto :goto_4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15144
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    .line 15145
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0M()Lcom/facebook/ads/redexgen/X/bg;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/Sv;->A15:I

    .line 15146
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5K;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/bg;->A04(ILjava/lang/String;)V

    .line 15147
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/hy;
    .locals 0

    .line 15148
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/R0;
    .locals 0

    .line 15149
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/R0;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 15150
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/US;
    .locals 0

    .line 15151
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A08:Lcom/facebook/ads/redexgen/X/US;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/Ua;
    .locals 0

    .line 15152
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A09:Lcom/facebook/ads/redexgen/X/Ua;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/XH;
    .locals 0

    .line 15153
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0B:Lcom/facebook/ads/redexgen/X/XH;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/Xn;
    .locals 0

    .line 15154
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0C:Lcom/facebook/ads/redexgen/X/Xn;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/YY;
    .locals 0

    .line 15155
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0D:Lcom/facebook/ads/redexgen/X/YY;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/bl;
    .locals 0

    .line 15156
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/bt;
    .locals 0

    .line 15157
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/eX;
    .locals 0

    .line 15158
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0H:Lcom/facebook/ads/redexgen/X/eX;

    return-object p0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5K;->A0I:[B

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

.method private A0C()V
    .locals 4

    .line 15159
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 15160
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 15161
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/cV;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/cV;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/N9;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 15162
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cV;->A0A(Lcom/facebook/ads/redexgen/X/My;)Lcom/facebook/ads/redexgen/X/cV;

    move-result-object v0

    .line 15163
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cV;->A0F()Lcom/facebook/ads/redexgen/X/cX;

    move-result-object v2

    .line 15164
    .local v0, "introView":Lcom/facebook/ads/redexgen/X/cX;
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/5K;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15165
    new-instance v0, Lcom/facebook/ads/redexgen/X/IW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/IW;-><init>(Lcom/facebook/ads/redexgen/X/5K;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/cX;->A04(Lcom/facebook/ads/redexgen/X/cW;)V

    .line 15166
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x6b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5K;->A0I:[B

    return-void

    :array_0
    .array-data 1
        0x18t
        0x2ft
        0x2ft
        0x32t
        0x2ft
        0x7dt
        0x3et
        0x2ft
        0x38t
        0x3ct
        0x29t
        0x34t
        0x33t
        0x3at
        0x7dt
        0x3et
        0x32t
        0x33t
        0x3bt
        0x34t
        0x3at
        0x7dt
        0x17t
        0xet
        0x12t
        0x13t
        0x4et
        0x45t
        0x4ct
        0x44t
        0x43t
        0x48t
        0x49t
        0x72t
        0x4ct
        0x49t
        0x24t
        0x2ft
        0x26t
        0x2et
        0x29t
        0x22t
        0x23t
        0x18t
        0x26t
        0x23t
        0x18t
        0x2et
        0x29t
        0x23t
        0x22t
        0x3ft
        0x2et
        0x25t
        0x2ct
        0x24t
        0x23t
        0x28t
        0x29t
        0x12t
        0x2ct
        0x29t
        0x12t
        0x39t
        0x22t
        0x39t
        0x2ct
        0x21t
        0x5bt
        0x50t
        0x59t
        0x51t
        0x56t
        0x5dt
        0x5ct
        0x67t
        0x4ct
        0x51t
        0x55t
        0x5dt
        0x67t
        0x4bt
        0x48t
        0x5dt
        0x56t
        0x4ct
        0x23t
        0x2ct
        0x29t
        0x23t
        0x2bt
        0x1ft
        0x33t
        0x2ft
        0x35t
        0x32t
        0x23t
        0x25t
        0x4at
        0x4ct
        0x5at
        0x4dt
        0x5ct
        0x53t
        0x56t
        0x5ct
        0x54t
    .end array-data
.end method

.method private final A0E()V
    .locals 5

    .line 15167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/bt;->A0d(Lcom/facebook/ads/redexgen/X/I3;)V

    .line 15168
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A04:Z

    if-nez v0, :cond_1

    .line 15169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5y()V

    .line 15170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0X()V

    .line 15171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I5;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 15172
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_3

    .line 15173
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 15174
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5z()V

    .line 15175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15176
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5K;->AJS()V

    .line 15177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ue;->ACx()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A0J:[Ljava/lang/String;

    const-string v1, "m5i7x933C7hHEFpC39NkE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15179
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    .line 15180
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15181
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5K;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15182
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5K;->A0C:Lcom/facebook/ads/redexgen/X/Xn;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 15183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1Q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5K;->A0A:Lcom/facebook/ads/redexgen/X/XC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XB;->A03:Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A05(Lcom/facebook/ads/redexgen/X/XB;)V

    .line 15185
    :cond_4
    return-void
.end method

.method private A0F(Ljava/lang/String;)V
    .locals 13

    .line 15186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15187
    return-void

    .line 15188
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/a5;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0D:Lcom/facebook/ads/redexgen/X/YY;

    .line 15189
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A7E()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/5K;->A0H:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/5K;->A0B:Lcom/facebook/ads/redexgen/X/XH;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/5K;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 15190
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v11

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/5K;->A0C:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-direct/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/a5;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 15191
    .local v0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/a5;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15192
    .local v1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x56

    const/16 v1, 0xc

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5K;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x62

    const/16 v1, 0x9

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5K;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/a5;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/ME;

    .line 15194
    return-void
.end method

.method private getMediaView()Landroid/view/ViewGroup;
    .locals 1

    .line 15264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    if-eqz v0, :cond_0

    .line 15265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    .line 15266
    :goto_0
    return-object v0

    .line 15267
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A9X()V
    .locals 1

    .line 15195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A0F(Ljava/lang/String;)V

    .line 15196
    return-void
.end method

.method public final A9Y(Ljava/lang/String;)V
    .locals 0

    .line 15197
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5K;->A0F(Ljava/lang/String;)V

    .line 15198
    return-void
.end method

.method public final A9c()V
    .locals 5

    .line 15199
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5K;->A0C:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0D:Lcom/facebook/ads/redexgen/X/YY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A6d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 15200
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5K;->A0D:Lcom/facebook/ads/redexgen/X/YY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 15201
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1A()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5K;->A0C:Lcom/facebook/ads/redexgen/X/Xn;

    new-instance v0, Lcom/facebook/ads/redexgen/X/dI;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/dI;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 15202
    .local v0, "serverSideRewardHandler":Lcom/facebook/ads/redexgen/X/dI;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dI;->A05()V

    .line 15203
    return-void
.end method

.method public final AAd()V
    .locals 2

    .line 15204
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ia;-><init>(Lcom/facebook/ads/redexgen/X/5K;)V

    .line 15205
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15206
    return-void
.end method

.method public final AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 1

    .line 15207
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bt;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 15208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/redexgen/X/R6;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/R0;->A0A(Lcom/facebook/ads/redexgen/X/R6;)V

    .line 15209
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/R0;

    .line 15210
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5K;->A0E()V

    .line 15211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15212
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5K;->A0C()V

    .line 15213
    :goto_0
    return-void

    .line 15214
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0W()V

    goto :goto_0
.end method

.method public final ADM()V
    .locals 0

    .line 15215
    return-void
.end method

.method public final ADQ()V
    .locals 1

    .line 15216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    if-eqz v0, :cond_0

    .line 15217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bl;->A0P()V

    .line 15218
    :cond_0
    return-void
.end method

.method public final AEF(Z)V
    .locals 1

    .line 15219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    if-eqz v0, :cond_0

    .line 15220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bl;->A0R(Z)V

    .line 15221
    :cond_0
    return-void
.end method

.method public final AEV(Z)V
    .locals 1

    .line 15222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    if-eqz v0, :cond_0

    .line 15223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bl;->A0S(Z)V

    .line 15224
    :cond_0
    if-eqz p1, :cond_1

    .line 15225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0Q()V

    .line 15226
    :goto_0
    return-void

    .line 15227
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0T()V

    goto :goto_0
.end method

.method public final AF0(Z)V
    .locals 1

    .line 15228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    if-eqz v0, :cond_0

    .line 15229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bl;->A0T(Z)V

    .line 15230
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A03:Z

    if-eqz v0, :cond_1

    .line 15231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A03:Z

    .line 15232
    return-void

    .line 15233
    :cond_1
    if-eqz p1, :cond_2

    .line 15234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0P()V

    .line 15235
    :goto_0
    return-void

    .line 15236
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0F:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0Y()V

    goto :goto_0
.end method

.method public final AFG()V
    .locals 1

    .line 15237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    if-eqz v0, :cond_0

    .line 15238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bl;->A0Q()V

    .line 15239
    :cond_0
    return-void
.end method

.method public final AFn(Z)V
    .locals 1

    .line 15240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    if-eqz v0, :cond_0

    .line 15241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bl;->A0U(Z)V

    .line 15242
    :cond_0
    return-void
.end method

.method public final AFp(Z)V
    .locals 1

    .line 15243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    if-eqz v0, :cond_0

    .line 15244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bl;->A0V(Z)V

    .line 15245
    :cond_0
    return-void
.end method

.method public final AG4(Ljava/lang/String;)V
    .locals 4

    .line 15246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/hy;->A26(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15247
    .local v0, "urlString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 15248
    return-void

    .line 15249
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 15250
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 15251
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    .line 15252
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0O(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 15253
    return-void
.end method

.method public final AIB(Landroid/os/Bundle;)V
    .locals 0

    .line 15254
    return-void
.end method

.method public final AJS()V
    .locals 1

    .line 15255
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A05:Z

    if-nez v0, :cond_0

    .line 15256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0H:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 15257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A05:Z

    .line 15258
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    .line 15259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/R0;

    if-nez v0, :cond_0

    .line 15260
    return-void

    .line 15261
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/R0;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 15262
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 15263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 15268
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 15269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5K;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->AJj(Landroid/view/View;)V

    .line 15271
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A0J:[Ljava/lang/String;

    const-string v1, "GZe1biqFkGajjfTMFdC84"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 15272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0E:Lcom/facebook/ads/redexgen/X/bl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bl;->A0O()V

    .line 15273
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0A:Lcom/facebook/ads/redexgen/X/XC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XC;->A03()V

    .line 15274
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5K;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 15275
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0B:Lcom/facebook/ads/redexgen/X/XH;

    .line 15276
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A0H:Lcom/facebook/ads/redexgen/X/eX;

    .line 15277
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 15278
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v0

    .line 15279
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/US;->AAt(Ljava/lang/String;Ljava/util/Map;)V

    .line 15280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/redexgen/X/R6;

    .line 15281
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/c0;

    .line 15282
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Lcom/facebook/ads/redexgen/X/R0;

    .line 15283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bu;->A04(Ljava/lang/String;)V

    .line 15284
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bt;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 15285
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 15286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->requestDisallowInterceptTouchEvent(Z)V

    .line 15287
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 0

    .line 15288
    return-void
.end method

.method public setRtfActionsJavascriptListener(Lcom/facebook/ads/redexgen/X/c0;)V
    .locals 0

    .line 15289
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/c0;

    .line 15290
    return-void
.end method

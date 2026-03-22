.class public final Lcom/facebook/ads/redexgen/X/Jx;
.super Lcom/facebook/ads/redexgen/X/ae;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wf;


# static fields
.field public static A0E:[Ljava/lang/String;

.field public static final A0F:I


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/dA;

.field public A02:Z

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Landroid/view/View;

.field public final A06:Landroid/widget/RelativeLayout;

.field public final A07:Landroid/widget/RelativeLayout;

.field public final A08:Lcom/facebook/ads/redexgen/X/hy;

.field public final A09:Lcom/facebook/ads/redexgen/X/Xm;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KL;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Wh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 879
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CRyUSCOowkTfoe8xXMA5e17hdMg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WkFBEVgF0nyPchlhdBM9PAwmOGJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zSHiyACtWS1MQDlmmeiywmMfEBCYqg8r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "a6voQfhnzW62WB0803n3akdQXSWLA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ESev22IS7ntvGAjOW6Y11JRWDyKuDF5b"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qYjSUGFL2zXSYltHWao95ysggj7pRI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zEaDWfefMQybHYLhUDvoHIQpUffGUNEN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lLaoJShXnQXOT6Cok4oNwdKWfBYo0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jx;->A0E:[Ljava/lang/String;

    const/high16 v1, 0x42a00000    # 80.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jx;->A0F:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;)V
    .locals 8

    .line 47131
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/ae;-><init>(Lcom/facebook/ads/redexgen/X/ai;Z)V

    .line 47132
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Landroid/os/Handler;

    .line 47133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A03:Z

    .line 47134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47135
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    .line 47136
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    .line 47137
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A09:Lcom/facebook/ads/redexgen/X/Xm;

    .line 47138
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 47139
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    invoke-static {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/Wh;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Wf;)Lcom/facebook/ads/redexgen/X/Wh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0D:Lcom/facebook/ads/redexgen/X/Wh;

    .line 47140
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Landroid/widget/RelativeLayout;

    .line 47141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 47142
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0r()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A00(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/KL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    .line 47143
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Landroid/widget/RelativeLayout;

    .line 47144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 47145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 47146
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/view/View;

    .line 47147
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jx;->A04()V

    .line 47148
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47149
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Jx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47150
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 47151
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    .line 47152
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 47153
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 47154
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 47155
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 47156
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 47157
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v5

    .line 47158
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Zv;->setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 47159
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jx;->A03()V

    .line 47160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47161
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 47162
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A00:F

    .line 47163
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wa;->A00(F)Ljava/lang/String;

    move-result-object v2

    .line 47164
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47165
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A04()Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MH;->A0C(Lcom/facebook/ads/redexgen/X/MH;)Ljava/lang/String;

    move-result-object v6

    .line 47166
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/LH;->AJw(Ljava/lang/String;IZZLjava/lang/String;)V

    .line 47167
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/KL;
    .locals 16

    .line 47168
    move-object/from16 v2, p0

    .line 47169
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 47170
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0M(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Jx;->A00:F

    .line 47171
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Jx;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A08(F)Z

    move-result v0

    move-object/from16 v7, p3

    if-eqz v0, :cond_1

    .line 47172
    new-instance v1, Lcom/facebook/ads/redexgen/X/5q;

    .line 47173
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    .line 47174
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v3

    sget v4, Lcom/facebook/ads/redexgen/X/Jx;->A0F:I

    .line 47175
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/ae;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v6

    .line 47176
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A07()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v8

    .line 47177
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v9

    .line 47178
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0G()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v10

    .line 47179
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v11

    .line 47180
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v12

    .line 47181
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v13

    .line 47182
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/facebook/ads/redexgen/X/5q;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V

    .line 47183
    .local v1, "adDetailsView":Lcom/facebook/ads/redexgen/X/KL;
    .restart local v1    # "adDetailsView":Lcom/facebook/ads/redexgen/X/KL;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47184
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KL;->setChainedAdInfo(Ljava/lang/String;)V

    .line 47185
    :cond_0
    return-object v1

    .line 47186
    .end local v1    # "adDetailsView":Lcom/facebook/ads/redexgen/X/KL;
    :cond_1
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Jx;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A09(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47187
    new-instance v1, Lcom/facebook/ads/redexgen/X/5p;

    .line 47188
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    .line 47189
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v3

    sget v4, Lcom/facebook/ads/redexgen/X/Jx;->A0F:I

    .line 47190
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/ae;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v6

    .line 47191
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A07()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v8

    .line 47192
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v9

    .line 47193
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0G()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v10

    .line 47194
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v11

    .line 47195
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v12

    .line 47196
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v13

    .line 47197
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/facebook/ads/redexgen/X/5p;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V

    .restart local v1    # "adDetailsView":Lcom/facebook/ads/redexgen/X/KL;
    goto :goto_0

    .line 47198
    .end local v1    # "adDetailsView":Lcom/facebook/ads/redexgen/X/KL;
    :cond_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/5r;

    .line 47199
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    .line 47200
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v3

    sget v4, Lcom/facebook/ads/redexgen/X/Jx;->A0F:I

    .line 47201
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/ae;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v6

    .line 47202
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A07()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v8

    .line 47203
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v9

    .line 47204
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0G()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v10

    .line 47205
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v11

    .line 47206
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v12

    .line 47207
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v13

    .line 47208
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/facebook/ads/redexgen/X/5r;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V

    goto :goto_0
.end method

.method private A01()V
    .locals 7

    .line 47209
    new-instance v1, Lcom/facebook/ads/redexgen/X/au;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47210
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47211
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47212
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/au;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Ua;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 47213
    .local v0, "interstitialWatchAndBrowseEndCard":Lcom/facebook/ads/redexgen/X/au;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A0D(Z)V

    .line 47214
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A09(Lcom/facebook/ads/redexgen/X/KE;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jx;->addView(Landroid/view/View;)V

    .line 47215
    return-void
.end method

.method private A02()V
    .locals 9

    .line 47216
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XP;->A0Z([Landroid/view/View;)V

    .line 47217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47218
    new-instance v2, Lcom/facebook/ads/redexgen/X/dA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47219
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    .line 47220
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47221
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/dA;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/KE;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Ua;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:Lcom/facebook/ads/redexgen/X/dA;

    .line 47222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:Lcom/facebook/ads/redexgen/X/dA;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/dA;->A0a(Z)V

    .line 47223
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47224
    .local v0, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:Lcom/facebook/ads/redexgen/X/dA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dA;->A0T()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Jx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47225
    .end local v0    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 47226
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jx;->A01()V

    goto :goto_0
.end method

.method private A03()V
    .locals 2

    .line 47227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 47228
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47229
    .local v0, "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Jx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KL;->setVisibility(I)V

    .line 47231
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A05(I)V

    .line 47232
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KL;->A0q(I)V

    .line 47233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KL;->bringToFront()V

    .line 47234
    return-void
.end method

.method private A04()V
    .locals 4

    .line 47235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/view/View;

    if-nez v0, :cond_0

    .line 47236
    return-void

    .line 47237
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/view/View;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 47239
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0D:Lcom/facebook/ads/redexgen/X/Wh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 47240
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wh;->A02(Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/Wg;

    move-result-object v2

    .line 47241
    .local v0, "supported":Lcom/facebook/ads/redexgen/X/Wg;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 47242
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 47243
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0H()Lcom/facebook/ads/redexgen/X/SO;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Wg;->A01:Z

    .line 47244
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SO;->A00(Z)V

    .line 47245
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0D:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/Wh;)V

    .line 47246
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Wg;->A00:Z

    if-eqz v0, :cond_2

    .line 47247
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aW;-><init>(Lcom/facebook/ads/redexgen/X/Jx;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47248
    :cond_1
    :goto_0
    return-void

    .line 47249
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47250
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/view/View;

    .line 47251
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1J(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aX;-><init>(Lcom/facebook/ads/redexgen/X/Jx;)V

    .line 47252
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private A05(I)V
    .locals 2

    .line 47253
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jx;->A06(I)V

    .line 47254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A07(ILandroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V

    .line 47255
    return-void
.end method

.method private A06(I)V
    .locals 7

    .line 47256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/view/View;

    if-nez v0, :cond_0

    .line 47257
    return-void

    .line 47258
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 47259
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 47260
    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 47261
    const/16 v3, 0x9

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 47262
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, -0x2

    if-ne p1, v2, :cond_1

    .line 47263
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 47264
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 47265
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47266
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47267
    return-void

    .line 47268
    :cond_1
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 47269
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 47270
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A09(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47271
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 47272
    :cond_2
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private final A07(ILandroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V
    .locals 3

    .line 47273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/5r;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/5q;

    if-eqz v0, :cond_3

    .line 47274
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 47275
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47276
    .local v0, "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 47277
    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/KL;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jx;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47279
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Jx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 47280
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jx;->A0E:[Ljava/lang/String;

    const-string v1, "EmhBF28Af3az5oL74X7a9tytdWpdYPgl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47281
    .end local v0    # "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/KL;->A0h(I)V

    .line 47282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/KL;->A0s(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V

    .line 47283
    return-void
.end method

.method public static A08(F)Z
    .locals 1

    .line 47284
    const v0, 0x3f333333    # 0.7f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A09(F)Z
    .locals 1

    .line 47285
    const v0, 0x3f99999a    # 1.2f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Jx;Z)Z
    .locals 0

    .line 47286
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    return p1
.end method


# virtual methods
.method public final A0C()Z
    .locals 1

    .line 47287
    const/4 v0, 0x0

    return v0
.end method

.method public final A0D()Z
    .locals 1

    .line 47288
    const/4 v0, 0x0

    return v0
.end method

.method public final A1A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
    .locals 1

    .line 47289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zv;->getCTAButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v0

    return-object v0
.end method

.method public final A1B()V
    .locals 2

    .line 47290
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->A1B()V

    .line 47291
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47292
    return-void
.end method

.method public final A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0

    .line 47293
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/ae;->A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 47294
    return-void
.end method

.method public final A1K()Z
    .locals 1

    .line 47295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0V()Z

    move-result v0

    return v0
.end method

.method public final A1M()Z
    .locals 1

    .line 47296
    const/4 v0, 0x1

    return v0
.end method

.method public final A1N(Z)Z
    .locals 1

    .line 47297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47298
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jx;->A1O()V

    .line 47299
    const/4 v0, 0x1

    return v0

    .line 47300
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A1O()V
    .locals 7

    .line 47301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47302
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Lcom/facebook/ads/redexgen/X/KL;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Landroid/widget/RelativeLayout;

    const/4 v5, 0x2

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XP;->A0Z([Landroid/view/View;)V

    .line 47303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A09:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0J(Landroid/view/View;)V

    .line 47304
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 47305
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jx;->A02()V

    .line 47306
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    .line 47307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0E()Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0E()Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/cT;->AFE(Z)V

    .line 47309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A09:Lcom/facebook/ads/redexgen/X/Xm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 47310
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    .line 47311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47312
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A09:Lcom/facebook/ads/redexgen/X/Xm;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 47313
    :goto_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/aY;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/aY;-><init>(Lcom/facebook/ads/redexgen/X/Jx;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 47314
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A00()J

    move-result-wide v0

    .line 47315
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47316
    :cond_0
    return-void

    .line 47317
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A09:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public final A1P()Z
    .locals 1

    .line 47318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final A1Q()Z
    .locals 1

    .line 47319
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 1

    .line 47320
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A03:Z

    if-eqz v0, :cond_1

    .line 47321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47322
    const/16 v0, 0x8

    return v0

    .line 47323
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 47324
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jx;->A1K()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 47325
    const/4 v0, 0x1

    return v0

    .line 47326
    :cond_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 47327
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ae;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:Lcom/facebook/ads/redexgen/X/dA;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:Lcom/facebook/ads/redexgen/X/dA;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dA;->A0W(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jx;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47330
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jx;->A0E:[Ljava/lang/String;

    const-string v1, "qGsvoGIijzM6smaTEa50KnvmYJop2SBn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    .line 47331
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A05(I)V

    .line 47332
    return-void
.end method

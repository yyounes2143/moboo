.class public final Lcom/facebook/ads/redexgen/X/Y9;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Y8;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:I


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/iB;

.field public final A02:Lcom/facebook/ads/redexgen/X/dL;

.field public final A03:Lcom/facebook/ads/redexgen/X/US;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A05:Lcom/facebook/ads/redexgen/X/XH;

.field public final A06:Lcom/facebook/ads/redexgen/X/Mn;

.field public final A07:Lcom/facebook/ads/redexgen/X/Y3;

.field public final A08:Lcom/facebook/ads/redexgen/X/eW;

.field public final A09:Lcom/facebook/ads/redexgen/X/eX;

.field public final A0A:Ljava/lang/String;

.field public final A0B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Y8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2386
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EYRP1PEEhxzmFZofVXiCCrEXWQs6qPAa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IPRTBS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NsAYUXCCkxBbK0XyUhCt1xHChz5fZfMK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fEJJ0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6651Qynk9CVpAvzNTMvYSQKVDYa6iazW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nD7S5n7VHEDKGeK1PzI1a27Vk58dSaaa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vFV0GS7SjmRPmH7mLZ5yrXn6gSrRknN8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LPfldR2r"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y9;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y9;->A0F()V

    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Y9;->A0E:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Ljava/lang/ref/WeakReference;IIIILcom/facebook/ads/redexgen/X/iB;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Lcom/facebook/ads/redexgen/X/US;",
            "Lcom/facebook/ads/redexgen/X/SF;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Y8;",
            ">;IIII",
            "Lcom/facebook/ads/redexgen/X/iB;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 73102
    .local p12, "adViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/MediumRectangleView$MediumRectangleViewListener;>;"
    move-object v5, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73103
    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XH;-><init>()V

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A05:Lcom/facebook/ads/redexgen/X/XH;

    .line 73104
    iput-object p1, v5, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 73105
    iput-object p2, v5, Lcom/facebook/ads/redexgen/X/Y9;->A03:Lcom/facebook/ads/redexgen/X/US;

    .line 73106
    move-object/from16 v0, p9

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 73107
    iput-object p4, v5, Lcom/facebook/ads/redexgen/X/Y9;->A0B:Ljava/lang/ref/WeakReference;

    .line 73108
    move-object/from16 v0, p10

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A0A:Ljava/lang/String;

    .line 73109
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0C()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v7

    .line 73110
    .local v6, "adDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    if-eqz v7, :cond_1

    .line 73111
    const/4 v4, -0x1

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 73112
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 73113
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Y9;->A03:Lcom/facebook/ads/redexgen/X/US;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A04:Lcom/facebook/ads/redexgen/X/Ua;

    .line 73114
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y9;->A06()Lcom/facebook/ads/redexgen/X/Ly;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A08:Lcom/facebook/ads/redexgen/X/eW;

    .line 73115
    move/from16 v0, p8

    invoke-direct {v5, p5, v0, p6, p7}, Lcom/facebook/ads/redexgen/X/Y9;->A07(IIII)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A09:Lcom/facebook/ads/redexgen/X/eX;

    .line 73116
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73117
    .local p4, "verticalLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73118
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v0}, Lcom/facebook/ads/redexgen/X/Y9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73119
    invoke-direct {v5, p3}, Lcom/facebook/ads/redexgen/X/Y9;->A04(Lcom/facebook/ads/redexgen/X/SF;)Lcom/facebook/ads/redexgen/X/Y3;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A07:Lcom/facebook/ads/redexgen/X/Y3;

    .line 73120
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A07:Lcom/facebook/ads/redexgen/X/Y3;

    if-eqz v0, :cond_0

    .line 73121
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/Y9;->A07:Lcom/facebook/ads/redexgen/X/Y3;

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73122
    :cond_0
    invoke-direct {v5, v7}, Lcom/facebook/ads/redexgen/X/Y9;->A02(Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/Mn;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Y9;->A06:Lcom/facebook/ads/redexgen/X/Mn;

    .line 73123
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/Y9;->A06:Lcom/facebook/ads/redexgen/X/Mn;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73124
    return-void

    .line 73125
    .end local p4    # "verticalLayout":Landroid/widget/LinearLayout;
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x20

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y9;->A09(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 73126
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/XH;
    .locals 0

    .line 73127
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A05:Lcom/facebook/ads/redexgen/X/XH;

    return-object p0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/Mn;
    .locals 17

    .line 73128
    move-object/from16 v0, p0

    .line 73129
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v5

    .line 73130
    .local v1, "adInfo":Lcom/facebook/ads/redexgen/X/Mp;
    new-instance v13, Lcom/facebook/ads/redexgen/X/61;

    invoke-direct {v13, v0}, Lcom/facebook/ads/redexgen/X/61;-><init>(Lcom/facebook/ads/redexgen/X/Y9;)V

    .line 73131
    .local v9, "adListener":Lcom/facebook/ads/redexgen/X/Xn;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Y9;->getOrientation()I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    .line 73132
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v9

    .line 73133
    .local v5, "adColors":Lcom/facebook/ads/redexgen/X/My;
    :goto_0
    new-instance v6, Lcom/facebook/ads/redexgen/X/Mn;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    sget v8, Lcom/facebook/ads/redexgen/X/Y9;->A0E:I

    .line 73134
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mz;->A06()Z

    move-result v10

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Y9;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/Y9;->A09:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/Y9;->A05:Lcom/facebook/ads/redexgen/X/XH;

    .line 73135
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v16

    const/16 v3, 0x20

    const/16 v2, 0x1f

    const/16 v1, 0x6e

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Y9;->A09(III)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v6 .. v16}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/dL;ILcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;)V

    .line 73136
    .local v2, "bottomView":Lcom/facebook/ads/redexgen/X/Mn;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v7

    .line 73137
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v8

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 73138
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v9

    .line 73139
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v10

    .line 73140
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Mn;->setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 73141
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73142
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Mn;->A0g()V

    .line 73143
    :cond_0
    return-object v6

    .line 73144
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/Y9;->A0D:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v3, v1

    const/4 v1, 0x3

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Y9;->A0D:[Ljava/lang/String;

    const-string v2, "bY8FFe1Y"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ml;->A00()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v9

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/Mn;
    .locals 0

    .line 73145
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A06:Lcom/facebook/ads/redexgen/X/Mn;

    return-object p0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/SF;)Lcom/facebook/ads/redexgen/X/Y3;
    .locals 11

    .line 73146
    new-instance v6, Lcom/facebook/ads/redexgen/X/Y6;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/Y6;-><init>(Lcom/facebook/ads/redexgen/X/Y9;)V

    .line 73147
    .local v0, "onAdReportingClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0b()Ljava/lang/String;

    move-result-object v7

    .line 73148
    .local v8, "videoUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    move-object v4, p1

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Y9;->A0H(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/iB;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 73149
    new-instance v1, Lcom/facebook/ads/redexgen/X/Lz;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y9;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Y9;->A04:Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Lz;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Ua;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 73150
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v6

    .line 73151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 73153
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 73154
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0O()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 73155
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0N()Ljava/lang/String;

    move-result-object v10

    .line 73156
    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Lz;->A0F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v1

    .line 73157
    .local v1, "videoView":Lcom/facebook/ads/redexgen/X/Lz;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73158
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Y9;->setViewAsCTA(Landroid/view/View;)V

    .line 73159
    :cond_1
    return-object v1

    .line 73160
    .end local v1    # "videoView":Lcom/facebook/ads/redexgen/X/Lz;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v2

    .line 73161
    .local v1, "coverImage":Lcom/facebook/ads/redexgen/X/Up;
    if-eqz v2, :cond_4

    .line 73162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Lcom/facebook/ads/redexgen/X/MZ;

    invoke-direct {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/MZ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View$OnClickListener;)V

    .line 73163
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MZ;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MZ;

    move-result-object v1

    .line 73164
    .local v2, "imageView":Lcom/facebook/ads/redexgen/X/MZ;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73165
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Y9;->setViewAsCTA(Landroid/view/View;)V

    .line 73166
    :cond_3
    return-object v1

    .line 73167
    .end local v2    # "imageView":Lcom/facebook/ads/redexgen/X/MZ;
    :cond_4
    return-object v8
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/Y3;
    .locals 0

    .line 73168
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A07:Lcom/facebook/ads/redexgen/X/Y3;

    return-object p0
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/Ly;
    .locals 1

    .line 73169
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ly;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ly;-><init>(Lcom/facebook/ads/redexgen/X/Y9;)V

    return-object v0
.end method

.method private A07(IIII)Lcom/facebook/ads/redexgen/X/eX;
    .locals 8

    .line 73170
    new-instance v1, Lcom/facebook/ads/redexgen/X/eX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A08:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v5, 0x1

    move-object v2, p0

    move v4, p2

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;IIZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 73171
    .local v0, "viewabilityChecker":Lcom/facebook/ads/redexgen/X/eX;
    invoke-virtual {v1, p3}, Lcom/facebook/ads/redexgen/X/eX;->A0W(I)V

    .line 73172
    invoke-virtual {v1, p4}, Lcom/facebook/ads/redexgen/X/eX;->A0X(I)V

    .line 73173
    return-object v1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/eX;
    .locals 0

    .line 73174
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A09:Lcom/facebook/ads/redexgen/X/eX;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y9;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y9;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y9;->A0D:[Ljava/lang/String;

    const-string v1, "HyV3wef6DGt1nbLL1fRSvAmBe6VeBas4"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Y9;)Ljava/lang/String;
    .locals 0

    .line 73175
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A0A:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Y9;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 73176
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A0B:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private A0C()V
    .locals 4

    .line 73177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0J()Ljava/lang/String;

    move-result-object v1

    .line 73178
    .local v0, "adChoicesLinkUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73179
    new-instance v3, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 73180
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 73181
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v0

    .line 73182
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0O(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 73183
    :cond_0
    return-void
.end method

.method private A0D()V
    .locals 3

    .line 73184
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y9;->A04:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0A:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 73185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 73186
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O2;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73187
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y9;->A0C()V

    .line 73188
    return-void

    .line 73189
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y9;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 73190
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v0

    .line 73191
    invoke-static {v2, v1, v0, p0}, Lcom/facebook/ads/redexgen/X/Ye;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Landroid/view/View;)Lcom/facebook/ads/redexgen/X/Yd;

    move-result-object v2

    .line 73192
    .local v0, "adReportingLayout":Lcom/facebook/ads/redexgen/X/Yd;
    if-nez v2, :cond_1

    .line 73193
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y9;->A0C()V

    .line 73194
    return-void

    .line 73195
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 73196
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Y9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73197
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Yd;->A0M()V

    .line 73198
    return-void
.end method

.method private A0E()V
    .locals 1

    .line 73199
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Y9;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A00:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Y9;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A09:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 73201
    :goto_0
    return-void

    .line 73202
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A09:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    goto :goto_0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Y9;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x6t
        0x1dt
        -0x27t
        0x1dt
        0x1at
        0x2dt
        0x1at
        -0x27t
        0x1bt
        0x2et
        0x27t
        0x1dt
        0x25t
        0x1et
        -0x27t
        0x22t
        0x2ct
        -0x27t
        0x1ct
        0x1at
        0x27t
        0x27t
        0x28t
        0x2dt
        -0x27t
        0x1bt
        0x1et
        -0x27t
        0x27t
        0x2et
        0x25t
        0x25t
        0x34t
        0x40t
        0x3et
        -0x1t
        0x37t
        0x32t
        0x34t
        0x36t
        0x33t
        0x40t
        0x40t
        0x3ct
        -0x1t
        0x32t
        0x35t
        0x44t
        -0x1t
        0x33t
        0x32t
        0x3ft
        0x3ft
        0x36t
        0x43t
        -0x1t
        0x34t
        0x3dt
        0x3at
        0x34t
        0x3ct
        0x36t
        0x35t
    .end array-data
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Y9;)V
    .locals 0

    .line 73203
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y9;->A0D()V

    return-void
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/iB;)Z
    .locals 3

    .line 73204
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/iB;->A0b()Ljava/lang/String;

    move-result-object v2

    .line 73205
    .local v0, "videoUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73206
    return v1

    .line 73207
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/SF;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 73208
    :cond_1
    return v1
.end method

.method private getOrientation()I
    .locals 1

    .line 73218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    .line 73219
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 73220
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0

    .line 73221
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setViewAsCTA(Landroid/view/View;)V
    .locals 1

    .line 73239
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y7;-><init>(Lcom/facebook/ads/redexgen/X/Y9;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73240
    return-void
.end method


# virtual methods
.method public final A0I()V
    .locals 1

    .line 73209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A07:Lcom/facebook/ads/redexgen/X/Y3;

    if-eqz v0, :cond_0

    .line 73210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A07:Lcom/facebook/ads/redexgen/X/Y3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y3;->A0A()V

    .line 73211
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A09:Lcom/facebook/ads/redexgen/X/eX;

    if-eqz v0, :cond_1

    .line 73212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A09:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    .line 73213
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 73214
    return-void
.end method

.method public final A0J()V
    .locals 4

    .line 73215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A07:Lcom/facebook/ads/redexgen/X/Y3;

    if-eqz v0, :cond_0

    .line 73216
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y9;->A07:Lcom/facebook/ads/redexgen/X/Y3;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y9;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y9;->A0D:[Ljava/lang/String;

    const-string v1, "hgkEcT5pEsAUKYMkvVnojxGMD5WCOUSh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "qBRuzdoZQfMYUt1SZmDdshQz8Ndd8EXP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Y3;->A0B()V

    .line 73217
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/redexgen/X/eX;
    .locals 1

    .line 73222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A09:Lcom/facebook/ads/redexgen/X/eX;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 73223
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 73224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A00:Z

    .line 73225
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y9;->A0E()V

    .line 73226
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 73227
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 73228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A00:Z

    .line 73229
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y9;->A0E()V

    .line 73230
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 73231
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y9;->A05:Lcom/facebook/ads/redexgen/X/XH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y9;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/XH;->A06(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 73232
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 73233
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 73234
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y9;->A0E()V

    .line 73235
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 73236
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 73237
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y9;->A0E()V

    .line 73238
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/4H;
.super Lcom/facebook/ads/redexgen/X/G2;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ae;

.field public A01:Lcom/facebook/ads/redexgen/X/Cw;

.field public final A02:Landroid/widget/ImageView;

.field public final A03:Lcom/facebook/ads/redexgen/X/R6;

.field public final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A06:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 275
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "opNTFb7MfNeLnBf1OFt8H8u3IMVbRu1d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IWQCWQwp5ID5RPcOdaIzYqbwlbVDrClG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KvkPuVSJhScWrt17epNc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "F0ODCmRg5uMMagWpVfR8fmvJ1OUGt5pq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F5r"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wG3QjEZJL94bFBL8PiZK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "A8E1xGSXICDDUeWE8x490gS0hcqgXwJC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2T9PYA9x4VF1QbksNYikemvLXt0jGXOu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4H;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4H;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 3

    .line 12159
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/G2;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 12160
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fw;-><init>(Lcom/facebook/ads/redexgen/X/4H;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A03:Lcom/facebook/ads/redexgen/X/R6;

    .line 12161
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12162
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12164
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:Landroid/widget/ImageView;

    .line 12165
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A04()I

    move-result v0

    if-lez v0, :cond_0

    .line 12166
    nop

    .line 12167
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A04()I

    move-result v0

    mul-int/lit16 v1, v0, 0x3e8

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Cw;-><init>(Lcom/facebook/ads/redexgen/X/dL;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:Lcom/facebook/ads/redexgen/X/Cw;

    .line 12168
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 12169
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 12170
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 12171
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A00()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 12172
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A01()I

    move-result v0

    .line 12173
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fv;-><init>(Lcom/facebook/ads/redexgen/X/4H;)V

    .line 12174
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 12175
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 12176
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/4H;)I
    .locals 0

    .line 12177
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4H;->getCloseButtonStyle()I

    move-result p0

    return p0
.end method

.method private A01(I)Lcom/facebook/ads/redexgen/X/ae;
    .locals 10

    .line 12178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 12180
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/ah;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/G2;->A05:Lcom/facebook/ads/redexgen/X/US;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/G2;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/G2;->A0B:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/G2;->A07:Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Landroid/view/View;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    .line 12181
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0K(I)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    .line 12182
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0R(Lcom/facebook/ads/redexgen/X/Xm;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v0

    .line 12183
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ah;->A0J(I)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A06:Lcom/facebook/ads/redexgen/X/Ua;

    .line 12184
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0N(Lcom/facebook/ads/redexgen/X/Ua;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v3

    .line 12185
    .local v0, "paramsBuilder":Lcom/facebook/ads/redexgen/X/ah;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:Lcom/facebook/ads/redexgen/X/Cw;

    if-eqz v0, :cond_1

    .line 12186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0T(Lcom/facebook/ads/redexgen/X/Cw;)Lcom/facebook/ads/redexgen/X/ah;

    .line 12187
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/G2;->A05:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 12188
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A05()Ljava/lang/String;

    move-result-object v0

    .line 12189
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 12190
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v9

    .line 12191
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4H;->A03(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/MI;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/N3;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    .line 12192
    .local v1, "adAction":Lcom/facebook/ads/redexgen/X/MH;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0M(Lcom/facebook/ads/redexgen/X/MH;)Lcom/facebook/ads/redexgen/X/ah;

    .line 12193
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ah;->A0W()Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v2

    .line 12194
    .local v2, "params":Lcom/facebook/ads/redexgen/X/ai;
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(Lcom/facebook/ads/redexgen/X/ai;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/4H;)Lcom/facebook/ads/redexgen/X/ae;
    .locals 0

    .line 12195
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4H;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/4H;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 12196
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4H;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/4H;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 12197
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4H;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A06()V
    .locals 1

    .line 12198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12199
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G2;->A0c()V

    .line 12200
    :cond_0
    return-void
.end method

.method public static A07()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4H;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x11t
        -0x19t
        -0x1bt
        -0x14t
    .end array-data
.end method

.method private A08(I)V
    .locals 5

    .line 12201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 12202
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4H;->A01(I)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    .line 12203
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fx;-><init>(Lcom/facebook/ads/redexgen/X/4H;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ae;->setAccidentalClickCappingListener(Lcom/facebook/ads/redexgen/X/MF;)V

    .line 12204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v4

    .line 12205
    .local v0, "colors":Lcom/facebook/ads/redexgen/X/My;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    .line 12206
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Jw;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 12207
    .local v1, "fullScreenColors":Z
    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/My;->A08(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 12208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1M()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setFullscreen(Z)V

    .line 12209
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A05(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Xm;->A0A(Lcom/facebook/ads/redexgen/X/My;Z)V

    .line 12210
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    sget-object v0, Lcom/facebook/ads/redexgen/X/G2;->A0E:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/4H;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 12211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1M()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/G2;->setUpFullscreenMode(Z)V

    .line 12212
    return-void

    .line 12213
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 12214
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/4H;)V
    .locals 0

    .line 12215
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4H;->A06()V

    return-void
.end method

.method private getCloseButtonStyle()I
    .locals 1

    .line 12270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->getCloseButtonStyle()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0b()Lcom/facebook/ads/redexgen/X/Xm;
    .locals 11

    .line 12216
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A0j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12217
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/G2;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/G2;->A06:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 12218
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1t()I

    move-result v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 12219
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1j()Z

    move-result v10

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;IIZ)V

    .line 12220
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    .restart local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12221
    new-instance v0, Lcom/facebook/ads/redexgen/X/cU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cU;-><init>(Lcom/facebook/ads/redexgen/X/4H;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12222
    :cond_0
    return-object v4

    .line 12223
    .end local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/G2;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A06:Lcom/facebook/ads/redexgen/X/Ua;

    const/4 v0, 0x1

    new-instance v4, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nr;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;I)V

    goto :goto_0
.end method

.method public final A0e()V
    .locals 4

    .line 12224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    if-eqz v0, :cond_0

    .line 12225
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/G2;->A06:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0Y:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 12226
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4H;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ae;->A1A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v1

    .line 12227
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/ME;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2D()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/ME;

    if-eq v1, v0, :cond_0

    .line 12228
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G2;->A0d()V

    .line 12229
    .end local v0    # "actionOutcome":Lcom/facebook/ads/redexgen/X/ME;
    :cond_0
    return-void
.end method

.method public final A0f()V
    .locals 5

    .line 12230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0J(Landroid/view/View;)V

    .line 12231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0J(Landroid/view/View;)V

    .line 12232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12233
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4H;->A06()V

    .line 12234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A04()I

    move-result v3

    .line 12235
    .local v0, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A02()I

    move-result v2

    .line 12236
    .local v2, "secondsForNextCta":I
    if-lez v3, :cond_4

    .line 12237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    if-eqz v0, :cond_0

    .line 12238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1F()V

    .line 12239
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Fu;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Fu;-><init>(Lcom/facebook/ads/redexgen/X/4H;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/G2;->A0g(ILcom/facebook/ads/redexgen/X/Vt;Lcom/facebook/ads/redexgen/X/Cw;)V

    .line 12240
    if-eqz v2, :cond_1

    if-lt v2, v3, :cond_3

    .line 12241
    :cond_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/G2;->A01:Z

    .line 12242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 12243
    :cond_2
    :goto_0
    return-void

    .line 12244
    :cond_3
    if-lez v2, :cond_2

    .line 12245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressSpinnerInvisible(Z)V

    .line 12246
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ft;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Ft;-><init>(Lcom/facebook/ads/redexgen/X/4H;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G2;->A0g(ILcom/facebook/ads/redexgen/X/Vt;Lcom/facebook/ads/redexgen/X/Cw;)V

    goto :goto_0

    .line 12247
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12248
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4H;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 3

    .line 12249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A03:Lcom/facebook/ads/redexgen/X/R6;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A0A(Lcom/facebook/ads/redexgen/X/R6;)V

    .line 12250
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12251
    .local v0, "orientation":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4H;->A08(I)V

    .line 12252
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A0j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 12254
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A0j()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 12255
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12256
    .local v1, "toolBarParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/G2;->A0F:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 12257
    .restart local v1    # "toolBarParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/4H;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 12259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 12260
    return-void

    .line 12261
    .end local v1    # "toolBarParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarHeight()I

    move-result v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public final A0i()Z
    .locals 5

    .line 12262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4H;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4H;->A08:[Ljava/lang/String;

    const-string v1, "kMg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/ae;->A1N(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public final A0j()Z
    .locals 1

    .line 12263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 12264
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 12265
    :goto_0
    return v0

    .line 12266
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic A0k()V
    .locals 0

    .line 12267
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/G2;->A0d()V

    return-void
.end method

.method public final AEV(Z)V
    .locals 0

    .line 12268
    return-void
.end method

.method public final AF0(Z)V
    .locals 0

    .line 12269
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 12271
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/G2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0T()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4H;->A0j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12273
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4H;->A08(I)V

    .line 12274
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 12275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->AJj(Landroid/view/View;)V

    .line 12277
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    if-eqz v0, :cond_2

    .line 12278
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:Lcom/facebook/ads/redexgen/X/ae;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4H;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4H;->A08:[Ljava/lang/String;

    const-string v1, "hIQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ae;->A1B()V

    .line 12279
    :cond_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/G2;->onDestroy()V

    .line 12280
    return-void
.end method

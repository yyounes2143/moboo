.class public final Lcom/facebook/ads/redexgen/X/5G;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/I3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bi;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/eX;

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/hy;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final A04:Lcom/facebook/ads/redexgen/X/US;

.field public final A05:Lcom/facebook/ads/redexgen/X/XH;

.field public final A06:Lcom/facebook/ads/redexgen/X/bi;

.field public final A07:Lcom/facebook/ads/redexgen/X/bt;

.field public final A08:Ljava/lang/String;

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 346
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cNW8ZlUzhquZSz6XSi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gKIjGDOIeaOzZR9qeyStr8duZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mQKfIuNnQZgt5ES8sx19fjwTYxycx0Lp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WvoZHe7VElSdYX15O8PPMcOC5YskUK4l"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BfRVnLJiFu3hDnD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WxgvJAZOXh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "crPtNK55mSnLeOXFeJGYeBq3ABMrpYK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K6RBlZSEjGoukPcRXJY4znE0whNpCjIj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5G;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5G;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/bi;Lcom/facebook/ads/redexgen/X/hy;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/XH;)V
    .locals 7

    .line 14976
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14977
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 14978
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5G;->A04:Lcom/facebook/ads/redexgen/X/US;

    .line 14979
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/5G;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 14980
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/5G;->A08:Ljava/lang/String;

    .line 14981
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5G;->A06:Lcom/facebook/ads/redexgen/X/bi;

    .line 14982
    iput p6, p0, Lcom/facebook/ads/redexgen/X/5G;->A01:I

    .line 14983
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bu;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    .line 14984
    .local v0, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/bt;
    if-eqz v0, :cond_2

    .line 14985
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    .line 14986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A09:Z

    .line 14987
    :goto_0
    if-eqz p7, :cond_1

    .line 14988
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/5G;->A05:Lcom/facebook/ads/redexgen/X/XH;

    .line 14989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0, p7}, Lcom/facebook/ads/redexgen/X/bt;->A0Z(Lcom/facebook/ads/redexgen/X/XH;)V

    .line 14990
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/IT;-><init>(Lcom/facebook/ads/redexgen/X/5G;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bt;->A0c(Lcom/facebook/ads/redexgen/X/bs;)V

    .line 14991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/bt;->A0a(Lcom/facebook/ads/redexgen/X/bi;)V

    .line 14992
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A0B:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 14993
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14994
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    .line 14995
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v2

    .line 14996
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v3

    .line 14997
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ue;->AK4(Landroid/view/View;Ljava/lang/String;ZZZ)V

    .line 14998
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5G;->A04()V

    .line 14999
    return-void

    .line 15000
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0L()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A05:Lcom/facebook/ads/redexgen/X/XH;

    goto :goto_1

    .line 15001
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bt;

    invoke-direct {v0, v1, p4, p2, p6}, Lcom/facebook/ads/redexgen/X/bt;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/US;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    .line 15002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/bu;->A03(Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/bt;)V

    .line 15003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A09:Z

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/bi;
    .locals 0

    .line 15004
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5G;->A06:Lcom/facebook/ads/redexgen/X/bi;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5G;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xa5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5G;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x46t
        0x49t
        0x0t
        0x53t
        0x7t
        0x54t
        0x53t
        0x46t
        0x55t
        0x53t
        0x7t
        0x66t
        0x52t
        0x43t
        0x4et
        0x42t
        0x49t
        0x44t
        0x42t
        0x69t
        0x42t
        0x53t
        0x50t
        0x48t
        0x55t
        0x4ct
        0x66t
        0x44t
        0x53t
        0x4et
        0x51t
        0x4et
        0x53t
        0x5et
        0x9t
        0x7t
        0x6at
        0x46t
        0x4ct
        0x42t
        0x7t
        0x54t
        0x52t
        0x55t
        0x42t
        0x7t
        0x53t
        0x4ft
        0x46t
        0x53t
        0x7t
        0x4et
        0x53t
        0x0t
        0x54t
        0x7t
        0x4et
        0x49t
        0x7t
        0x5et
        0x48t
        0x52t
        0x55t
        0x7t
        0x66t
        0x49t
        0x43t
        0x55t
        0x48t
        0x4et
        0x43t
        0x6at
        0x46t
        0x49t
        0x4et
        0x41t
        0x42t
        0x54t
        0x53t
        0x9t
        0x5ft
        0x4at
        0x4bt
        0x7t
        0x41t
        0x4et
        0x4bt
        0x42t
        0x9t
        0x18t
        0x1ct
        0x1ft
        0x2bt
        0x3at
        0x37t
        0x3bt
        0x30t
        0x3dt
        0x3bt
        0x10t
        0x3bt
        0x2at
        0x29t
        0x31t
        0x2ct
        0x35t
        0x45t
        0x4at
        0x7bt
        0x45t
        0x47t
        0x50t
        0x4dt
        0x52t
        0x4dt
        0x50t
        0x5dt
        0x4t
        0xbt
        0xet
        0x4t
        0xct
        0x38t
        0x14t
        0x8t
        0x12t
        0x15t
        0x4t
        0x2t
        0x5at
        0x55t
        0x40t
        0x5dt
        0x42t
        0x51t
        0x75t
        0x50t
        0x70t
        0x55t
        0x40t
        0x55t
        0x76t
        0x41t
        0x5at
        0x50t
        0x58t
        0x51t
        0x1bt
        0x1dt
        0xbt
        0x1ct
        0xdt
        0x2t
        0x7t
        0xdt
        0x5t
        0x16t
        0x9t
        0x5t
        0x17t
        0x34t
        0x19t
        0x10t
        0x5t
    .end array-data
.end method

.method private final A03()V
    .locals 4

    .line 15005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/bt;->A0d(Lcom/facebook/ads/redexgen/X/I3;)V

    .line 15006
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A09:Z

    if-nez v0, :cond_1

    .line 15007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5y()V

    .line 15008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0X()V

    .line 15009
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5G;->A08()V

    .line 15010
    return-void

    .line 15011
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A5z()V

    .line 15012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15013
    iget v1, p0, Lcom/facebook/ads/redexgen/X/5G;->A01:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_4

    .line 15014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A06:Lcom/facebook/ads/redexgen/X/bi;

    if-eqz v0, :cond_2

    .line 15015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A06:Lcom/facebook/ads/redexgen/X/bi;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/bi;->AD8(Lcom/facebook/ads/redexgen/X/5G;)V

    .line 15016
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5G;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/5G;->A0B:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Ue;->ACx()V

    goto :goto_0

    .line 15018
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5G;->AJS()V

    goto :goto_0
.end method

.method private final A04()V
    .locals 1

    .line 15019
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bt;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 15020
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5G;->A03()V

    .line 15021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0W()V

    .line 15022
    return-void
.end method

.method private A05(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/hy;)V
    .locals 3

    .line 15023
    const/16 v2, 0x9d

    const/16 v1, 0x8

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A01(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15024
    const/16 v2, 0x82

    const/16 v1, 0x12

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15025
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15026
    return-void
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/hy;)V
    .locals 7

    .line 15027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WB;->A05(Lcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v1

    .line 15028
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/5G;->A05(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/hy;)V

    .line 15029
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WB;->A0B(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15030
    :catch_0
    move-exception v5

    .line 15031
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 15032
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 15033
    const/16 v2, 0x6b

    const/16 v1, 0xb

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 15034
    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15035
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private A07(Ljava/lang/String;)V
    .locals 12

    .line 15036
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15037
    return-void

    .line 15038
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/a5;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/5G;->A03:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/5G;->A08:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/5G;->A00:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/5G;->A05:Lcom/facebook/ads/redexgen/X/XH;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/5G;->A04:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 15039
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/a5;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/N3;)V

    .line 15040
    .local v0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/a5;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15041
    .local v1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x76

    const/16 v1, 0xc

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x94

    const/16 v1, 0x9

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/a5;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/ME;

    .line 15043
    return-void
.end method


# virtual methods
.method public final A08()V
    .locals 3

    .line 15044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 15045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    .line 15046
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15047
    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/5G;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15048
    return-void
.end method

.method public final A9X()V
    .locals 1

    .line 15049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5G;->A07(Ljava/lang/String;)V

    .line 15050
    return-void
.end method

.method public final A9Y(Ljava/lang/String;)V
    .locals 0

    .line 15051
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5G;->A07(Ljava/lang/String;)V

    .line 15052
    return-void
.end method

.method public final A9c()V
    .locals 0

    .line 15053
    return-void
.end method

.method public final AAd()V
    .locals 2

    .line 15054
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/IH;-><init>(Lcom/facebook/ads/redexgen/X/5G;)V

    .line 15055
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15056
    return-void
.end method

.method public final ADM()V
    .locals 1

    .line 15057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5G;->A06(Lcom/facebook/ads/redexgen/X/hy;)V

    .line 15058
    return-void
.end method

.method public final ADQ()V
    .locals 0

    .line 15059
    return-void
.end method

.method public final AEF(Z)V
    .locals 0

    .line 15060
    return-void
.end method

.method public final AFG()V
    .locals 0

    .line 15061
    return-void
.end method

.method public final AFn(Z)V
    .locals 0

    .line 15062
    return-void
.end method

.method public final AFp(Z)V
    .locals 0

    .line 15063
    return-void
.end method

.method public final AG4(Ljava/lang/String;)V
    .locals 0

    .line 15064
    return-void
.end method

.method public final AJS()V
    .locals 1

    .line 15065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A06:Lcom/facebook/ads/redexgen/X/bi;

    if-eqz v0, :cond_0

    .line 15066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A06:Lcom/facebook/ads/redexgen/X/bi;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/bi;->AD8(Lcom/facebook/ads/redexgen/X/5G;)V

    .line 15067
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    .line 15068
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/US;
    .locals 1

    .line 15069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A04:Lcom/facebook/ads/redexgen/X/US;

    return-object v0
.end method

.method public getDynamicWebViewController()Lcom/facebook/ads/redexgen/X/bt;
    .locals 1

    .line 15070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 15071
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5G;->requestDisallowInterceptTouchEvent(Z)V

    .line 15072
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/eX;)V
    .locals 1

    .line 15073
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5G;->A00:Lcom/facebook/ads/redexgen/X/eX;

    .line 15074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5G;->A07:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bt;->A0e(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 15075
    return-void
.end method

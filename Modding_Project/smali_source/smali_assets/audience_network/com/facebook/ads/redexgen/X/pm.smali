.class public final Lcom/facebook/ads/redexgen/X/pm;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/pp;

.field public A01:Z

.field public final A02:Landroid/graphics/Rect;

.field public final A03:Landroid/graphics/Rect;

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/gK;

.field public final A06:Lcom/facebook/ads/redexgen/X/px;

.field public final A07:Lcom/facebook/ads/redexgen/X/A7;

.field public final A08:Lcom/facebook/ads/redexgen/X/po;

.field public final A09:Lcom/facebook/ads/redexgen/X/A6;

.field public final A0A:Ljava/lang/Runnable;

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pa;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pu<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3434
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hvB6Y5lFyDpOUo5WE2d6RBuRXgbY5ZUm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ywY8EvofFV55395JkJDayoeTErGWKbkG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zJ8LsRBLLSys8CPHp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gH0zTalybZGhm0qBmcsXdCP28l4r1an9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kduBCn7ltQGfodptcqURcnO6EcdnH0I2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cBbzau3JoVbeDspRwe3LG6GIj8yddyUH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/pm;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/px;Lcom/facebook/ads/redexgen/X/gK;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/po;Landroid/os/Handler;)V
    .locals 8

    .line 103058
    const/16 v7, 0x64

    move-object v0, p0

    move-object v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/pm;-><init>(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/px;Lcom/facebook/ads/redexgen/X/gK;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/po;Landroid/os/Handler;I)V

    .line 103059
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/px;Lcom/facebook/ads/redexgen/X/gK;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/po;Landroid/os/Handler;I)V
    .locals 2

    .line 103060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103061
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A03:Landroid/graphics/Rect;

    .line 103062
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A02:Landroid/graphics/Rect;

    .line 103063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0C:Ljava/util/List;

    .line 103064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0D:Ljava/util/List;

    .line 103065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0B:Ljava/util/List;

    .line 103066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A01:Z

    .line 103067
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pm;->A07:Lcom/facebook/ads/redexgen/X/A7;

    .line 103068
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/pm;->A06:Lcom/facebook/ads/redexgen/X/px;

    .line 103069
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/pm;->A05:Lcom/facebook/ads/redexgen/X/gK;

    .line 103070
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/pm;->A09:Lcom/facebook/ads/redexgen/X/A6;

    .line 103071
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/pm;->A08:Lcom/facebook/ads/redexgen/X/po;

    .line 103072
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/pm;->A04:Landroid/os/Handler;

    .line 103073
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 103074
    .local v0, "callerException":Ljava/lang/Exception;
    new-instance v0, Lcom/facebook/ads/redexgen/X/pn;

    invoke-direct {v0, p0, p7, v1}, Lcom/facebook/ads/redexgen/X/pn;-><init>(Lcom/facebook/ads/redexgen/X/pm;ILjava/lang/Exception;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0A:Ljava/lang/Runnable;

    .line 103075
    return-void
.end method

.method public static A00(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 103076
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 103077
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 103078
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 103079
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 103080
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/pm;)Landroid/os/Handler;
    .locals 0

    .line 103081
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pm;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/pm;)Lcom/facebook/ads/redexgen/X/gK;
    .locals 0

    .line 103082
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pm;->A05:Lcom/facebook/ads/redexgen/X/gK;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/pm;)Ljava/lang/Runnable;
    .locals 0

    .line 103083
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0A:Ljava/lang/Runnable;

    return-object p0
.end method

.method private A04(J)V
    .locals 2

    .line 103084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103085
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A06:Lcom/facebook/ads/redexgen/X/px;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0B:Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/px;->A9R(Ljava/util/List;)V

    .line 103086
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A09:Lcom/facebook/ads/redexgen/X/A6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0B:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/A6;->A4Z(JLjava/util/List;)V

    .line 103087
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A09:Lcom/facebook/ads/redexgen/X/A6;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/A6;->A6H(Ljava/util/List;)V

    .line 103088
    return-void

    .line 103089
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private A05(J)V
    .locals 4

    .line 103090
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A06:Lcom/facebook/ads/redexgen/X/px;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0B:Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/px;->A9R(Ljava/util/List;)V

    .line 103091
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A09:Lcom/facebook/ads/redexgen/X/A6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0B:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/A6;->A4Z(JLjava/util/List;)V

    .line 103092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103094
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/pm;->A08:Lcom/facebook/ads/redexgen/X/po;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A0C:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0D:Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/po;->A0A(Ljava/util/Collection;Ljava/util/List;)V

    .line 103095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/pa;

    .line 103096
    .local v1, "node":Lcom/facebook/ads/redexgen/X/pa;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A07:Lcom/facebook/ads/redexgen/X/A7;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/A7;->A00:Z

    if-eqz v0, :cond_0

    .line 103097
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A08:Lcom/facebook/ads/redexgen/X/po;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1I;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/1I;-><init>(Lcom/facebook/ads/redexgen/X/pm;Lcom/facebook/ads/redexgen/X/pa;)V

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/po;->A09(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/9v;)V

    goto :goto_0

    .line 103098
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A08:Lcom/facebook/ads/redexgen/X/po;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/po;->A04(Lcom/facebook/ads/redexgen/X/pa;)Lcom/facebook/ads/redexgen/X/pu;

    move-result-object v0

    .line 103099
    .local v2, "viewpointData":Lcom/facebook/ads/redexgen/X/pu;
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/pm;->A07(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/pu;)V

    goto :goto_0

    .line 103100
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/pm;->A09:Lcom/facebook/ads/redexgen/X/A6;

    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A0E:[Ljava/lang/String;

    const-string v1, "nrcH38GFR0AnNATGilmIDxGLEfq4UsQc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "6vipxWZV3AO1VWKwqmDQLGTjEEAJtLqC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0D:Ljava/util/List;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/A6;->A6H(Ljava/util/List;)V

    .line 103101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A00:Lcom/facebook/ads/redexgen/X/pp;

    if-eqz v0, :cond_4

    .line 103102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A00:Lcom/facebook/ads/redexgen/X/pp;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pp;->AF8()V

    .line 103103
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/pm;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_2

    .line 103104
    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A0E:[Ljava/lang/String;

    const-string v1, "FnmTy5Nmh2EcYtYiSa9Vz9TfA3yApsYC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103105
    return-void

    .line 103106
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 103107
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/pm;J)V
    .locals 0

    .line 103108
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/pm;->A05(J)V

    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/pu;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pa;",
            "Lcom/facebook/ads/redexgen/X/pu<",
            "**>;)V"
        }
    .end annotation

    .line 103109
    .local p0, "viewpointData":Lcom/facebook/ads/redexgen/X/pu;, "Lcom/instagram/common/viewpoint/core/ViewpointData<**>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 103110
    .local v1, "containerRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A03:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A02:Landroid/graphics/Rect;

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/pa;->A9Q(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/pu;->A0B:Lcom/facebook/ads/redexgen/X/pu;

    if-eq p2, v0, :cond_0

    .line 103111
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/pm;->A09:Lcom/facebook/ads/redexgen/X/A6;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/pm;->A03:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/pm;->A02:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/pm;->A07:Lcom/facebook/ads/redexgen/X/A7;

    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A0E:[Ljava/lang/String;

    const-string v1, "vG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "kB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/A7;->A01:Z

    invoke-interface {v5, p2, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/A6;->A3y(Lcom/facebook/ads/redexgen/X/pu;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 103112
    :cond_2
    return-void
.end method

.method private A08()Z
    .locals 5

    .line 103113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A06:Lcom/facebook/ads/redexgen/X/px;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/px;->A7M()Landroid/content/Context;

    move-result-object v0

    .line 103114
    .local v0, "context":Landroid/content/Context;
    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 103115
    return v4

    .line 103116
    :cond_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pm;->A00(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 103117
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/pm;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/pm;->A0E:[Ljava/lang/String;

    const-string v1, "bz230dZZFwB5VtBTUF6Wd1FYETvWTo5q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "SaD2YYriklneEcKSamPXZGVrEiYqxj4X"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    :goto_0
    return v4
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/pm;)Z
    .locals 0

    .line 103118
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/pm;->A01:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/pm;)Z
    .locals 0

    .line 103119
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pm;->A08()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic A0B(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/pu;)Lcom/facebook/ads/redexgen/X/pL;
    .locals 1

    .line 103120
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/pm;->A07(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/pu;)V

    .line 103121
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0C()V
    .locals 2

    .line 103122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A00:Lcom/facebook/ads/redexgen/X/pp;

    if-eqz v0, :cond_0

    .line 103123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A00:Lcom/facebook/ads/redexgen/X/pp;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pp;->AF8()V

    .line 103124
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A01:Z

    if-eqz v0, :cond_1

    .line 103125
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0A:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A05:Lcom/facebook/ads/redexgen/X/gK;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gK;->AC6()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/pm;->A04(J)V

    .line 103127
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A01:Z

    .line 103128
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 103129
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A01:Z

    if-nez v0, :cond_0

    .line 103130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A01:Z

    .line 103131
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pm;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A0A:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103132
    :cond_0
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/pr;)V
    .locals 1

    .line 103133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pm;->A09:Lcom/facebook/ads/redexgen/X/A6;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/A6;->AJA(Lcom/facebook/ads/redexgen/X/pr;)V

    .line 103134
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/pp;)V
    .locals 0

    .line 103135
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pm;->A00:Lcom/facebook/ads/redexgen/X/pp;

    .line 103136
    return-void
.end method

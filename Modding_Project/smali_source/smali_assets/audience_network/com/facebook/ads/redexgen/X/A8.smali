.class public final Lcom/facebook/ads/redexgen/X/A8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pp;
    }
.end annotation


# static fields
.field public static A07:Z

.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/q2;

.field public A01:Lcom/facebook/ads/redexgen/X/pp;

.field public A02:Lcom/facebook/ads/redexgen/X/pb;

.field public final A03:Lcom/facebook/ads/redexgen/X/pp;

.field public final A04:Lcom/facebook/ads/redexgen/X/pq;

.field public final A05:Lcom/facebook/ads/redexgen/X/A7;

.field public final A06:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 586
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BoSaZzMMCoBoab6kFzr2tWGVTni5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Vk9jbaVPkS6rtGXBWv67wEIKcLe3GnXQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GJsVZyBqNYZRU43kGmqANe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Uv9MZIJr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GbPwVrzkFOEMxWNTB1P9oG5CUgrItJXy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gWutc4DO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1FOrRj10jdO8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rnakDij4LZYpzXru71B"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/A8;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/A8;->A04()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/A8;->A07:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/q2;Lcom/facebook/ads/redexgen/X/pq;)V
    .locals 1

    .line 28775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28776
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A06:Ljava/util/LinkedHashMap;

    .line 28777
    new-instance v0, Lcom/facebook/ads/redexgen/X/A9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/A9;-><init>(Lcom/facebook/ads/redexgen/X/A8;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A03:Lcom/facebook/ads/redexgen/X/pp;

    .line 28778
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A8;->A05:Lcom/facebook/ads/redexgen/X/A7;

    .line 28779
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/q2;

    .line 28780
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/A8;->A04:Lcom/facebook/ads/redexgen/X/pq;

    .line 28781
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/A8;)Lcom/facebook/ads/redexgen/X/pp;
    .locals 0

    .line 28782
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/A8;->A01:Lcom/facebook/ads/redexgen/X/pp;

    return-object p0
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/A8;
    .locals 4

    .line 28783
    new-instance v3, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/A7;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/AC;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/AC;-><init>()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/A8;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/A8;-><init>(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/q2;Lcom/facebook/ads/redexgen/X/pq;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/A8;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/A8;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 28784
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/A8;->A06:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static A04()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/A8;->A08:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1ct
    .end array-data
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/ps;Lcom/facebook/ads/redexgen/X/px;Lcom/facebook/ads/redexgen/X/A6;)V
    .locals 3

    .line 28785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A05:Lcom/facebook/ads/redexgen/X/A7;

    .line 28786
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/pb;->A00(Lcom/facebook/ads/redexgen/X/A7;Lcom/facebook/ads/redexgen/X/ps;Lcom/facebook/ads/redexgen/X/px;Lcom/facebook/ads/redexgen/X/A6;)Lcom/facebook/ads/redexgen/X/pb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/pb;

    .line 28787
    const/4 v1, 0x0

    .line 28788
    .local v0, "localViewpointListener":Lcom/facebook/ads/redexgen/X/pr;
    if-eqz v1, :cond_0

    .line 28789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/pb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/pb;->A01(Lcom/facebook/ads/redexgen/X/pr;)V

    .line 28790
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/pb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A03:Lcom/facebook/ads/redexgen/X/pp;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/pb;->A02(Lcom/facebook/ads/redexgen/X/pp;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 28791
    sget-object v2, Lcom/facebook/ads/redexgen/X/A8;->A09:[Ljava/lang/String;

    const-string v1, "2MhPhimmgHBptxasGUILH2"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;)V
    .locals 2

    .line 28792
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/pb;

    .line 28793
    .local v0, "localViewpointWatcher":Lcom/facebook/ads/redexgen/X/pb;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 28794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A05:Lcom/facebook/ads/redexgen/X/A7;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/A7;->A00:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 28795
    invoke-virtual {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/pb;->A04(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;)V

    .line 28796
    :cond_0
    :goto_0
    return-void

    .line 28797
    :cond_1
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/pb;->A03(Lcom/facebook/ads/redexgen/X/pa;)V

    goto :goto_0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;Lcom/facebook/ads/redexgen/X/pu;)V
    .locals 5

    .line 28798
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/A8;->A02:Lcom/facebook/ads/redexgen/X/pb;

    .line 28799
    .local v0, "localViewpointWatcher":Lcom/facebook/ads/redexgen/X/pb;
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 28800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A05:Lcom/facebook/ads/redexgen/X/A7;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/A7;->A00:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 28801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/A8;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/pu;->A08:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    .line 28802
    invoke-virtual {v4, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/pb;->A05(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;Lcom/facebook/ads/redexgen/X/pu;)V

    .line 28803
    :cond_0
    :goto_0
    return-void

    .line 28804
    :cond_1
    invoke-virtual {v4, p1, p3}, Lcom/facebook/ads/redexgen/X/pb;->A06(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/pu;)V

    goto :goto_0
.end method


# virtual methods
.method public final A08(Landroid/view/View;)V
    .locals 2

    .line 28805
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/A5;->A00(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/A5;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/A8;->A06(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;)V

    .line 28806
    return-void

    .line 28807
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final A09(Landroid/view/View;Lcom/facebook/ads/redexgen/X/pu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/redexgen/X/pu<",
            "**>;)V"
        }
    .end annotation

    .line 28808
    .local p2, "viewpointData":Lcom/facebook/ads/redexgen/X/pu;, "Lcom/instagram/common/viewpoint/core/ViewpointData<**>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/A5;->A00(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/A5;

    move-result-object v0

    .line 28809
    :goto_0
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/ads/redexgen/X/A8;->A07(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/q0;Lcom/facebook/ads/redexgen/X/pu;)V

    .line 28810
    return-void

    .line 28811
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/ps;Landroid/view/View;)V
    .locals 3

    .line 28812
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 28813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A8;->A00:Lcom/facebook/ads/redexgen/X/q2;

    new-instance v2, Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct {v2, p2, v0}, Lcom/facebook/ads/redexgen/X/AA;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/q2;)V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1H;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/1H;-><init>(Lcom/facebook/ads/redexgen/X/pq;)V

    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/A8;->A05(Lcom/facebook/ads/redexgen/X/ps;Lcom/facebook/ads/redexgen/X/px;Lcom/facebook/ads/redexgen/X/A6;)V

    .line 28814
    :cond_0
    return-void
.end method

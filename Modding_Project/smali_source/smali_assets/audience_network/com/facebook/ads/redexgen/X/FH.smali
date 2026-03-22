.class public Lcom/facebook/ads/redexgen/X/FH;
.super Lcom/facebook/ads/redexgen/X/QT;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/bW;

.field public A03:Lcom/facebook/ads/redexgen/X/bY;

.field public A04:Lcom/facebook/ads/redexgen/X/eX;

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Landroid/content/Context;

.field public final A0C:Lcom/facebook/ads/redexgen/X/gI;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Qb;

.field public final A0E:Lcom/facebook/ads/redexgen/X/bZ;

.field public final A0F:Lcom/facebook/ads/redexgen/X/ba;

.field public final A0G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 689
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oHxG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "w7XeyG7wcXlBDThCLG4YobF5JePdGcu8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IQ8LgqWvoXOpUTXgnww89j6rU6uuZ1nj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WKMwHhIum9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0nm7H4VWCUBWNiJwCQAonSVvBZFyt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hLsDwSpuFLAE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FH;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FH;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0h;ILjava/util/List;Lcom/facebook/ads/redexgen/X/eX;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/0h;",
            "I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/eX;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 35832
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    .line 35833
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0G:Ljava/util/Set;

    .line 35834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A08:Z

    .line 35835
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A06:Z

    .line 35836
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A07:Z

    .line 35837
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A01:I

    .line 35838
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A00:F

    .line 35839
    new-instance v0, Lcom/facebook/ads/redexgen/X/FK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/FK;-><init>(Lcom/facebook/ads/redexgen/X/FH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0F:Lcom/facebook/ads/redexgen/X/ba;

    .line 35840
    new-instance v0, Lcom/facebook/ads/redexgen/X/FJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/FJ;-><init>(Lcom/facebook/ads/redexgen/X/FH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A03:Lcom/facebook/ads/redexgen/X/bY;

    .line 35841
    new-instance v0, Lcom/facebook/ads/redexgen/X/FI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/FI;-><init>(Lcom/facebook/ads/redexgen/X/FH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0E:Lcom/facebook/ads/redexgen/X/bZ;

    .line 35842
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0h;->getLayoutManager()Lcom/facebook/ads/redexgen/X/gI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    .line 35843
    iput p2, p0, Lcom/facebook/ads/redexgen/X/FH;->A0A:I

    .line 35844
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FH;->A05:Ljava/util/List;

    .line 35845
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FH;->A04:Lcom/facebook/ads/redexgen/X/eX;

    .line 35846
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0h;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/gH;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/gH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0D:Lcom/facebook/ads/redexgen/X/Qb;

    .line 35847
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0h;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0B:Landroid/content/Context;

    .line 35848
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/6g;->A1h(Lcom/facebook/ads/redexgen/X/QT;)V

    .line 35849
    invoke-direct {p0, p5}, Lcom/facebook/ads/redexgen/X/FH;->A0D(Landroid/os/Bundle;)V

    .line 35850
    return-void
.end method

.method private A03(II)Lcom/facebook/ads/redexgen/X/Ir;
    .locals 1

    .line 35851
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/FH;->A04(IIZ)Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v0

    return-object v0
.end method

.method private A04(IIZ)Lcom/facebook/ads/redexgen/X/Ir;
    .locals 5

    .line 35852
    const/4 v4, 0x0

    .line 35853
    .local v0, "foundVideo":Lcom/facebook/ads/redexgen/X/Ir;
    .local v1, "i":I
    :goto_0
    if-gt p1, p2, :cond_5

    .line 35854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A1o(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ir;

    .line 35855
    .local v2, "curCard":Lcom/facebook/ads/redexgen/X/Ir;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ir;->A1S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35856
    .restart local v2    # "curCard":Lcom/facebook/ads/redexgen/X/Ir;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 35857
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/FH;->A0a(Landroid/view/View;)Z

    move-result v2

    .line 35858
    .local v3, "isCompletelyVisible":Z
    if-nez v4, :cond_3

    .line 35859
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ir;->A1T()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A0G:Ljava/util/Set;

    .line 35860
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0A:I

    .line 35861
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0I(Lcom/facebook/ads/redexgen/X/ae;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35862
    :cond_2
    move-object v4, v3

    .line 35863
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ir;->A1T()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 35864
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0C(IZ)V

    .line 35865
    .end local v2    # "curCard":Lcom/facebook/ads/redexgen/X/Ir;
    .end local v3    # "isCompletelyVisible":Z
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 35866
    .end local v1    # "i":I
    .end local v2
    :cond_5
    return-object v4
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FH;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 2

    .line 35867
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A07:Z

    if-nez v0, :cond_0

    .line 35868
    return-void

    .line 35869
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A26()I

    move-result v1

    .line 35870
    .local v0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A27()I

    move-result v0

    .line 35871
    .local v1, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A03(II)Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v0

    .line 35872
    .local p0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/Ir;
    if-eqz v0, :cond_1

    .line 35873
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ir;->A1Q()V

    .line 35874
    :cond_1
    return-void
.end method

.method private A07()V
    .locals 2

    .line 35875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A25()I

    move-result v1

    .line 35876
    .local v0, "curPos":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 35877
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0U(I)V

    .line 35878
    :cond_0
    return-void
.end method

.method public static A08()V
    .locals 4

    const/16 v3, 0x3d

    sget-object v2, Lcom/facebook/ads/redexgen/X/FH;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/FH;->A0I:[Ljava/lang/String;

    const-string v1, "Cbp585p0FHy9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "QC7w158vCCR5KGktiGCBodiqPhNZq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FH;->A0H:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x7at
        -0x66t
        -0x67t
        -0x6ct
        -0x5ct
        -0x6bt
        -0x6ft
        -0x7at
        -0x62t
        -0x5ct
        -0x76t
        -0x6dt
        -0x7at
        -0x79t
        -0x6ft
        -0x76t
        -0x77t
        -0x5ct
        -0x6bt
        -0x7at
        -0x69t
        -0x7at
        -0x6et
        0x51t
        0x5bt
        0x67t
        0x4et
        0x51t
        0x5at
        0x5bt
        0x5ct
        0x67t
        0x5et
        0x51t
        0x4ct
        0x4dt
        0x57t
        0x67t
        0x58t
        0x49t
        0x5at
        0x49t
        0x55t
        -0x33t
        -0x3at
        -0x3dt
        -0x34t
        -0x3ct
        -0x44t
        -0x2at
        -0x3dt
        -0x44t
        -0x33t
        -0x44t
        -0x3dt
        -0x2at
        -0x39t
        -0x48t
        -0x37t
        -0x48t
        -0x3ct
    .end array-data
.end method

.method private A09(I)V
    .locals 3

    .line 35879
    add-int/lit8 v2, p1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    .line 35880
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A27()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A04(IIZ)Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v1

    .line 35881
    .local v0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/Ir;
    if-eqz v1, :cond_0

    .line 35882
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ir;->A1Q()V

    .line 35883
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0U(I)V

    .line 35884
    :cond_0
    return-void
.end method

.method private A0A(II)V
    .locals 0

    .line 35885
    .local p0, "i":I
    :goto_0
    if-gt p1, p2, :cond_0

    .line 35886
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/FH;->A0T(I)V

    .line 35887
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 35888
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method private final A0B(II)V
    .locals 0

    .line 35889
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/FH;->A0S(I)V

    .line 35890
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/FH;->A0S(I)V

    .line 35891
    return-void
.end method

.method private A0C(IZ)V
    .locals 2

    .line 35892
    if-eqz p2, :cond_0

    .line 35893
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35894
    :goto_0
    return-void

    .line 35895
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private A0D(Landroid/os/Bundle;)V
    .locals 4

    .line 35896
    if-nez p1, :cond_0

    .line 35897
    return-void

    .line 35898
    :cond_0
    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A00:F

    .line 35899
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A05(III)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A07:Z

    .line 35900
    const/16 v2, 0x17

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A08:Z

    .line 35901
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/FH;)V
    .locals 0

    .line 35902
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FH;->A07()V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/FH;I)V
    .locals 0

    .line 35903
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FH;->A09(I)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/FH;IZ)V
    .locals 0

    .line 35904
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FH;->A0C(IZ)V

    return-void
.end method

.method private A0H()Z
    .locals 2

    .line 35905
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A0A:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/ae;I)Z
    .locals 6

    .line 35906
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 35907
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A04:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v4

    .line 35908
    .local v3, "allowedAreaMaxX":I
    :goto_0
    if-ne p1, v2, :cond_1

    .line 35909
    const/4 v2, 0x1

    .line 35910
    .local v0, "allowedAreaMinX":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 35911
    .local v2, "furthestX":I
    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getX()F

    move-result v1

    int-to-float v0, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    .line 35912
    .local v1, "result":Z
    :goto_2
    return v4

    .line 35913
    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 35914
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A04:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35915
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v1, v0

    div-float/2addr v1, v5

    float-to-int v2, v1

    goto :goto_1

    .line 35916
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getWidth()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A04:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v0

    div-float/2addr v1, v5

    float-to-int v3, v1

    goto :goto_0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/Ir;)Z
    .locals 2

    .line 35917
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A08:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ir;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35918
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A08:Z

    .line 35919
    const/4 v0, 0x1

    return v0

    .line 35920
    :cond_0
    return v1
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/FH;)Z
    .locals 0

    .line 35921
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FH;->A0H()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A0L(Lcom/facebook/ads/redexgen/X/6g;I)V
    .locals 1

    .line 35922
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/QT;->A0L(Lcom/facebook/ads/redexgen/X/6g;I)V

    .line 35923
    if-nez p2, :cond_0

    .line 35924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A09:Z

    .line 35925
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FH;->A06()V

    .line 35926
    :cond_0
    return-void
.end method

.method public A0M(Lcom/facebook/ads/redexgen/X/6g;II)V
    .locals 2

    .line 35927
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/QT;->A0M(Lcom/facebook/ads/redexgen/X/6g;II)V

    .line 35928
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A09:Z

    .line 35929
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A06:Z

    if-eqz v0, :cond_0

    .line 35930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A09:Z

    .line 35931
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FH;->A06()V

    .line 35932
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A06:Z

    .line 35933
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A26()I

    move-result v1

    .line 35934
    .local v0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A27()I

    move-result v0

    .line 35935
    .local v1, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0B(II)V

    .line 35936
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0A(II)V

    .line 35937
    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/FH;->A0V(III)V

    .line 35938
    return-void
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/bY;
    .locals 1

    .line 35939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A03:Lcom/facebook/ads/redexgen/X/bY;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/bZ;
    .locals 1

    .line 35940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0E:Lcom/facebook/ads/redexgen/X/bZ;

    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/ba;
    .locals 1

    .line 35941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0F:Lcom/facebook/ads/redexgen/X/ba;

    return-object v0
.end method

.method public final A0Q()V
    .locals 6

    .line 35942
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A01:I

    .line 35943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A26()I

    move-result v5

    .line 35944
    .local v0, "firstPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A27()I

    move-result v4

    .line 35945
    .local v1, "lastPos":I
    .local v2, "i":I
    :goto_0
    if-gt v5, v4, :cond_1

    if-ltz v5, :cond_1

    .line 35946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/gI;->A1o(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ir;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FH;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35947
    .local v3, "card":Lcom/facebook/ads/redexgen/X/Ir;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/FH;->A0I:[Ljava/lang/String;

    const-string v1, "4n0r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "UAml839wpr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ir;->A1S()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35948
    iput v5, p0, Lcom/facebook/ads/redexgen/X/FH;->A01:I

    .line 35949
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ir;->A1P()V

    .line 35950
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 35951
    .end local v3    # "card":Lcom/facebook/ads/redexgen/X/Ir;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public final A0R()V
    .locals 2

    .line 35952
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A01:I

    .line 35953
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gI;->A1o(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ir;

    .line 35954
    .local v0, "card":Lcom/facebook/ads/redexgen/X/Ir;
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A01:I

    if-ltz v0, :cond_0

    .line 35955
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ir;->A1Q()V

    .line 35956
    :cond_0
    return-void
.end method

.method public final A0S(I)V
    .locals 2

    .line 35957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    .line 35958
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A1o(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ir;

    .line 35959
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/Ir;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/FH;->A0a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35960
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0Z(Lcom/facebook/ads/redexgen/X/Ir;Z)V

    .line 35961
    :cond_0
    return-void
.end method

.method public final A0T(I)V
    .locals 3

    .line 35962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    .line 35963
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A1o(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ir;

    .line 35964
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/Ir;
    if-nez v2, :cond_0

    .line 35965
    return-void

    .line 35966
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/FH;->A0a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35967
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0Z(Lcom/facebook/ads/redexgen/X/Ir;Z)V

    .line 35968
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/FH;->A0J(Lcom/facebook/ads/redexgen/X/Ir;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A05:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 35969
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A05:Ljava/util/List;

    const v0, -0x5f000010

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ir;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cn;

    .line 35970
    .local v1, "cardInfo":Lcom/facebook/ads/redexgen/X/cn;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A0F:Lcom/facebook/ads/redexgen/X/ba;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0A()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ba;->setVolume(F)V

    .line 35971
    .end local v1    # "cardInfo":Lcom/facebook/ads/redexgen/X/cn;
    :cond_2
    return-void

    .line 35972
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final A0U(I)V
    .locals 2

    .line 35973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0D:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Qb;->A0A(I)V

    .line 35974
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0D:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1N(Lcom/facebook/ads/redexgen/X/Qb;)V

    .line 35975
    return-void
.end method

.method public final A0V(III)V
    .locals 2

    .line 35976
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FH;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A02:Lcom/facebook/ads/redexgen/X/bW;

    if-nez v0, :cond_1

    .line 35977
    .end local v0
    .end local v1
    :cond_0
    return-void

    .line 35978
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A25()I

    move-result v1

    .line 35979
    .local v0, "firstCompletelyVisible":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 35980
    .local v1, "recomputeFrom":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A02:Lcom/facebook/ads/redexgen/X/bW;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/bW;->AJp(I)V

    .line 35981
    return-void

    .line 35982
    :cond_2
    if-gez p3, :cond_3

    move v1, p1

    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_0
.end method

.method public final A0W(Landroid/os/Bundle;)V
    .locals 3

    .line 35983
    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A00:F

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 35984
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A07:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35985
    const/16 v2, 0x17

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A08:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35986
    return-void
.end method

.method public A0X(Landroid/view/View;Z)V
    .locals 1

    .line 35987
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 35988
    return-void

    .line 35989
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/bW;)V
    .locals 0

    .line 35990
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FH;->A02:Lcom/facebook/ads/redexgen/X/bW;

    .line 35991
    return-void
.end method

.method public A0Z(Lcom/facebook/ads/redexgen/X/Ir;Z)V
    .locals 1

    .line 35992
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FH;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35993
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FH;->A0X(Landroid/view/View;Z)V

    .line 35994
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ir;->A1S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35995
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ir;->A1P()V

    .line 35996
    :cond_1
    return-void
.end method

.method public A0a(Landroid/view/View;)Z
    .locals 2

    .line 35997
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35998
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 35999
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3e19999a    # 0.15f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

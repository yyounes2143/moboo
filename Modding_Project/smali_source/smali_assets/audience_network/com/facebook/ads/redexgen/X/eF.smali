.class public final Lcom/facebook/ads/redexgen/X/eF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/eD;,
        Lcom/facebook/ads/redexgen/X/eE;,
        Lcom/facebook/ads/redexgen/X/eC;
    }
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/9V;

.field public final A01:Lcom/facebook/ads/redexgen/X/lf;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/eF;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 4

    .line 79927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79928
    new-instance v0, Lcom/facebook/ads/redexgen/X/lf;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lf;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A01:Lcom/facebook/ads/redexgen/X/lf;

    .line 79929
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eF;->A01:Lcom/facebook/ads/redexgen/X/lf;

    new-instance v0, Lcom/facebook/ads/redexgen/X/m5;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/m5;-><init>(Lcom/facebook/ads/redexgen/X/EU;)V

    .line 79930
    .local v0, "trackSelectionFactory":Lcom/facebook/ads/redexgen/X/EA;
    new-instance v3, Lcom/facebook/ads/redexgen/X/92;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/92;-><init>(Lcom/facebook/ads/redexgen/X/EA;)V

    .line 79931
    .local v1, "trackSelector":Lcom/facebook/ads/redexgen/X/EK;
    new-instance v2, Lcom/facebook/ads/redexgen/X/nV;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/nV;-><init>()V

    .line 79932
    .local v2, "loadControl":Lcom/facebook/ads/redexgen/X/6S;
    new-instance v1, Lcom/facebook/ads/redexgen/X/nS;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/nS;-><init>(Landroid/content/Context;)V

    .line 79933
    .local v3, "renderersFactory":Lcom/facebook/ads/redexgen/X/7H;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A01:Lcom/facebook/ads/redexgen/X/lf;

    .line 79934
    invoke-static {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/5z;->A00(Lcom/facebook/ads/redexgen/X/7H;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;)Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    .line 79935
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/eF;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/od;)Ljava/lang/String;
    .locals 6

    .line 79936
    instance-of v3, p0, Lcom/facebook/ads/redexgen/X/9Y;

    const/16 v2, 0x24

    const/4 v1, 0x2

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A00(III)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    .line 79937
    check-cast p0, Lcom/facebook/ads/redexgen/X/9Y;

    .line 79938
    .local v0, "exoPlaybackException":Lcom/facebook/ads/redexgen/X/9Y;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x37

    const/16 v1, 0xb

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A03:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xe

    const/16 v1, 0x16

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9Y;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79939
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Y;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79940
    return-object v0

    .line 79941
    .end local v0    # "exoPlaybackException":Lcom/facebook/ads/redexgen/X/9Y;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0xe

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79942
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/od;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79943
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/od;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79944
    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eF;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x40t
        -0x36t
        -0x42t
        -0x40t
        0x1t
        -0x1t
        0x13t
        0x11t
        0x3t
        -0x40t
        -0x42t
        -0x28t
        -0x42t
        -0x40t
        -0x4at
        -0x40t
        -0x4ct
        -0x4at
        0x6t
        -0x7t
        0x2t
        -0x8t
        -0x7t
        0x6t
        -0x7t
        0x6t
        -0x23t
        0x2t
        -0x8t
        -0x7t
        0xct
        -0x4at
        -0x4ct
        -0x32t
        -0x4ct
        -0x4at
        -0x36t
        0x25t
        -0x9t
        -0x6t
        0x9t
        0x10t
        -0x49t
        0x2t
        -0x6t
        0x8t
        0x8t
        -0xat
        -0x4t
        -0x6t
        -0x49t
        -0x4bt
        -0x31t
        -0x4bt
        -0x49t
        -0x4bt
        0x5ct
        -0x52t
        -0x4dt
        -0x56t
        -0x61t
        0x5ct
        0x5at
        0x74t
        0x5at
        0x5ct
    .end array-data
.end method

.method public static A03()Z
    .locals 1

    .line 79945
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 79946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0I()I

    move-result v0

    return v0
.end method

.method public final A05()I
    .locals 1

    .line 79947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ox;->A00()I

    move-result v0

    return v0
.end method

.method public final A06()J
    .locals 2

    .line 79948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A7W()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A07()J
    .locals 2

    .line 79949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A7k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/eD;
    .locals 3

    .line 79950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0K()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 79951
    .local v0, "vf":Lcom/facebook/ads/redexgen/X/or;
    if-nez v0, :cond_0

    .line 79952
    const/4 v0, 0x0

    return-object v0

    .line 79953
    :cond_0
    iget v2, v0, Lcom/facebook/ads/redexgen/X/or;->A0L:I

    iget v1, v0, Lcom/facebook/ads/redexgen/X/or;->A0A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/eD;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/eD;-><init>(II)V

    return-object v0
.end method

.method public final A09()V
    .locals 1

    .line 79954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0L()V

    .line 79955
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 79956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ox;->A02()V

    .line 79957
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 79958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ox;->A01()V

    .line 79959
    return-void
.end method

.method public final A0C(F)V
    .locals 1

    .line 79960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9V;->A0M(F)V

    .line 79961
    return-void
.end method

.method public final A0D(J)V
    .locals 1

    .line 79962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ox;->A04(J)V

    .line 79963
    return-void
.end method

.method public final A0E(Landroid/view/Surface;)V
    .locals 1

    .line 79964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9V;->A0N(Landroid/view/Surface;)V

    .line 79965
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/cu;Landroid/net/Uri;)V
    .locals 3

    .line 79966
    invoke-static {}, Lcom/facebook/ads/redexgen/X/eF;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/U7;->A2r(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79967
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/eJ;->A06(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/eJ;

    move-result-object v0

    .line 79968
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/eJ;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/eJ;->A0H(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/4w;

    move-result-object v1

    .line 79969
    .local v1, "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/4w;
    new-instance v0, Lcom/facebook/ads/redexgen/X/99;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/99;-><init>(Lcom/facebook/ads/redexgen/X/4w;)V

    .line 79970
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/99;->A04(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/98;

    move-result-object v1

    .line 79971
    .local v2, "mediaSource":Lcom/facebook/ads/redexgen/X/CL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A0Q(Lcom/facebook/ads/redexgen/X/CL;)V

    .line 79972
    .end local v0    # "cacheManager":Lcom/facebook/ads/redexgen/X/eJ;
    .end local v1    # "cachedDataSourceFactory":Lcom/facebook/ads/redexgen/X/4w;
    .end local v2    # "mediaSource":Lcom/facebook/ads/redexgen/X/CL;
    .end local v0
    .end local v1
    :goto_0
    return-void

    .line 79973
    :cond_0
    const/16 v2, 0x26

    const/4 v1, 0x3

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A01:Lcom/facebook/ads/redexgen/X/lf;

    new-instance v1, Lcom/facebook/ads/redexgen/X/nk;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/nk;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5H;)V

    .line 79974
    .local v0, "dataSourceFactory":Lcom/facebook/ads/redexgen/X/4w;
    new-instance v0, Lcom/facebook/ads/redexgen/X/99;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/99;-><init>(Lcom/facebook/ads/redexgen/X/4w;)V

    .line 79975
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/99;->A04(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/98;

    move-result-object v1

    .line 79976
    .local v1, "mediaSource":Lcom/facebook/ads/redexgen/X/CL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A0Q(Lcom/facebook/ads/redexgen/X/CL;)V

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/eC;)V
    .locals 2

    .line 79977
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    new-instance v0, Lcom/facebook/ads/redexgen/X/CR;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/CR;-><init>(Lcom/facebook/ads/redexgen/X/eF;Lcom/facebook/ads/redexgen/X/eC;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0O(Lcom/facebook/ads/redexgen/X/2s;)V

    .line 79978
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/eE;)V
    .locals 2

    .line 79979
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    new-instance v0, Lcom/facebook/ads/redexgen/X/27;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/27;-><init>(Lcom/facebook/ads/redexgen/X/eF;Lcom/facebook/ads/redexgen/X/eE;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0P(Lcom/facebook/ads/redexgen/X/nH;)V

    .line 79980
    return-void
.end method

.method public final A0I(Z)V
    .locals 1

    .line 79981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9V;->A0S(Z)V

    .line 79982
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 79983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0T()Z

    move-result v0

    return v0
.end method

.method public final A0K()Z
    .locals 1

    .line 79984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eF;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0J()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Lcom/facebook/ads/redexgen/X/iE;
.super Lcom/facebook/ads/redexgen/X/MR;
.source ""


# static fields
.field public static A06:[B

.field public static final A07:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/iG;

.field public A01:Lcom/facebook/ads/redexgen/X/V4;

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final A04:Lcom/facebook/ads/redexgen/X/US;

.field public final A05:Lcom/facebook/ads/redexgen/X/Ze;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2971
    invoke-static {}, Lcom/facebook/ads/redexgen/X/iE;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iE;->A07:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Ze;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/MS;Lcom/facebook/ads/redexgen/X/V4;)V
    .locals 0

    .line 85973
    invoke-direct {p0, p1, p5, p4}, Lcom/facebook/ads/redexgen/X/MR;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MS;Lcom/facebook/ads/redexgen/X/eX;)V

    .line 85974
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iE;->A04:Lcom/facebook/ads/redexgen/X/US;

    .line 85975
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/iE;->A05:Lcom/facebook/ads/redexgen/X/Ze;

    .line 85976
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 85977
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/iE;->A01:Lcom/facebook/ads/redexgen/X/V4;

    .line 85978
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/iE;)Lcom/facebook/ads/redexgen/X/iG;
    .locals 0

    .line 85979
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iE;->A00:Lcom/facebook/ads/redexgen/X/iG;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/iE;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 85980
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/iE;)Lcom/facebook/ads/redexgen/X/Ze;
    .locals 0

    .line 85981
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iE;->A05:Lcom/facebook/ads/redexgen/X/Ze;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iE;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iE;->A06:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x37t
        -0x38t
        -0x2bt
        -0x2bt
        -0x34t
        -0x27t
    .end array-data
.end method


# virtual methods
.method public final A08(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 85982
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A00:Lcom/facebook/ads/redexgen/X/iG;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A00:Lcom/facebook/ads/redexgen/X/iG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iG;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3D()V

    .line 85984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A00:Lcom/facebook/ads/redexgen/X/iG;

    .line 85985
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iG;->A05()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iE;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 85986
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85987
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iE;->A04:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A00:Lcom/facebook/ads/redexgen/X/iG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iG;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 85988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85989
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iE;->A01:Lcom/facebook/ads/redexgen/X/V4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/V4;->A09:Lcom/facebook/ads/redexgen/X/V4;

    if-ne v1, v0, :cond_1

    .line 85990
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85991
    .local v0, "placementType":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A00:Lcom/facebook/ads/redexgen/X/iG;

    .line 85992
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iG;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 85993
    .end local v0    # "placementType":Ljava/lang/String;
    :cond_0
    return-void

    .line 85994
    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final declared-synchronized A09()V
    .locals 1

    monitor-enter p0

    .line 85995
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A02:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A00:Lcom/facebook/ads/redexgen/X/iG;

    if-nez v0, :cond_0

    goto :goto_0

    .line 85996
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A02:Z

    .line 85997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iE;->A00:Lcom/facebook/ads/redexgen/X/iG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iG;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85998
    new-instance v0, Lcom/facebook/ads/redexgen/X/iF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/iF;-><init>(Lcom/facebook/ads/redexgen/X/iE;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85999
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/iE;
    :cond_1
    monitor-exit p0

    return-void

    .line 86000
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 86001
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/iG;)V
    .locals 0

    .line 86002
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iE;->A00:Lcom/facebook/ads/redexgen/X/iG;

    .line 86003
    return-void
.end method

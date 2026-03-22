.class public final Lcom/facebook/ads/redexgen/X/72;
.super Lcom/facebook/ads/redexgen/X/hQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/hS;
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:J

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/redexgen/X/6M;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/72;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/NT;)V
    .locals 2

    .line 20843
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hQ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NT;)V

    .line 20844
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/72;->A00:J

    .line 20845
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/72;->A02:Lcom/facebook/ads/redexgen/X/6M;

    .line 20846
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/72;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 20847
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/72;->A01:Landroid/view/View;

    return-object p1
.end method

.method private A01(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/hT;
    .locals 1

    .line 20848
    new-instance v0, Lcom/facebook/ads/redexgen/X/hT;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/hT;-><init>(Lcom/facebook/ads/redexgen/X/72;Ljava/lang/Runnable;)V

    .line 20849
    .local v0, "bannerAdapterListener":Lcom/facebook/ads/redexgen/X/MX;
    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/72;)Lcom/facebook/ads/redexgen/X/6M;
    .locals 0

    .line 20850
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/72;->A02:Lcom/facebook/ads/redexgen/X/6M;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/72;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/NU;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/NU;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 20851
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20852
    .local v0, "adsList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NU;->A03()Lorg/json/JSONObject;

    move-result-object v5

    .line 20853
    .local v1, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0x16

    const/16 v1, 0xc

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    .line 20854
    .local v3, "isChainedAds":Z
    if-eqz v0, :cond_0

    .line 20855
    :try_start_0
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x3

    const/16 v1, 0x13

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A03(III)Ljava/lang/String;

    move-result-object v0

    .line 20856
    const/16 v1, 0x2710

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/72;->A00:J

    .line 20857
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 20858
    .local v2, "adsArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 20859
    const/4 v1, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 20860
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20861
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20862
    .local v2, "e":Lorg/json/JSONException;
    :catch_0
    const/16 v2, 0x24

    const/16 v1, 0x26

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A03(III)Ljava/lang/String;

    move-result-object v3

    .line 20863
    .local v4, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v2

    .line 20864
    .local v5, "error":Lcom/facebook/ads/redexgen/X/V1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/72;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 20865
    return-object v4

    .line 20866
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v5    # "error":Lcom/facebook/ads/redexgen/X/V1;
    :cond_0
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20867
    :cond_1
    return-object v4
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/72;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x17t
        0x26t
        -0xft
        -0x10t
        -0x3t
        -0x3t
        -0xct
        0x1t
        -0x12t
        0x1t
        -0xct
        -0xbt
        0x1t
        -0xct
        0x2t
        -0x9t
        -0x12t
        0x3t
        -0x8t
        -0x4t
        -0xct
        -0x5t
        0x0t
        -0x7t
        0x1t
        0x6t
        -0x9t
        0x8t
        -0x7t
        0xat
        -0x7t
        0x5t
        0xbt
        0x26t
        0x37t
        0x1bt
        0x28t
        0x28t
        0x25t
        0x28t
        -0x2at
        0x2dt
        0x1et
        0x1ft
        0x22t
        0x1bt
        -0x2at
        0x26t
        0x17t
        0x28t
        0x29t
        0x1ft
        0x24t
        0x1dt
        -0x2at
        0x19t
        0x1et
        0x17t
        0x1ft
        0x24t
        0x1bt
        0x1at
        -0x2at
        0x17t
        0x1at
        0x29t
        -0x2at
        -0x8t
        0x17t
        0x24t
        0x24t
        0x1bt
        0x28t
    .end array-data
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/id;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;)V
    .locals 11

    .line 20868
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0C:Z

    .line 20869
    nop

    .line 20870
    const/16 v2, 0x22

    const/4 v1, 0x2

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A03(III)Ljava/lang/String;

    move-result-object v0

    move-object v9, p2

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/hS;

    move-object v4, p1

    invoke-direct {v3, p0, v4, v0}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/72;Lcom/facebook/ads/redexgen/X/MP;Ljava/lang/String;)V

    .line 20871
    .local v0, "bannerTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hQ;->A0H()Landroid/os/Handler;

    move-result-object v2

    move-object v10, p3

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/TF;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20872
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/72;->A02:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/hQ;->A09:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/NT;->A08:Lcom/facebook/ads/redexgen/X/V4;

    .line 20873
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/72;->A01(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/hT;

    move-result-object v8

    .line 20874
    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/id;->AAk(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/V4;Lcom/facebook/ads/redexgen/X/MX;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;)V

    .line 20875
    return-void
.end method


# virtual methods
.method public final A0P()V
    .locals 2

    .line 20876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/72;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 20877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/72;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4W()V

    .line 20878
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/72;->A01:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0E(Landroid/view/View;)V

    .line 20879
    :goto_0
    return-void

    .line 20880
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/72;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4X()V

    goto :goto_0
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;Lcom/facebook/ads/redexgen/X/NU;)V
    .locals 5

    .line 20881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/72;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4Q()V

    .line 20882
    check-cast p1, Lcom/facebook/ads/redexgen/X/id;

    .line 20883
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/id;
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/MP;->AJa()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20884
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/72;->A04(Lcom/facebook/ads/redexgen/X/NU;)Ljava/util/List;

    move-result-object v4

    .line 20885
    .local v1, "bannerAdList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NU;->A01()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A06(Lcom/facebook/ads/redexgen/X/id;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;)V

    .line 20886
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    .line 20887
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hQ;->A0H()Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/NV;

    invoke-direct {v2, p0, p1, v4, p4}, Lcom/facebook/ads/redexgen/X/NV;-><init>(Lcom/facebook/ads/redexgen/X/72;Lcom/facebook/ads/redexgen/X/id;Ljava/util/List;Lcom/facebook/ads/redexgen/X/NU;)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/72;->A00:J

    .line 20888
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20889
    :cond_0
    :goto_0
    return-void

    .line 20890
    :cond_1
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NU;->A03()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NU;->A01()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A06(Lcom/facebook/ads/redexgen/X/id;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;)V

    goto :goto_0
.end method

.method public final A0U(Ljava/lang/String;)V
    .locals 2

    .line 20891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/72;->A02:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A4V(Z)V

    .line 20892
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/hQ;->A0U(Ljava/lang/String;)V

    .line 20893
    return-void

    .line 20894
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Y(Z)V
    .locals 1

    .line 20895
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/hQ;->A0Y(Z)V

    .line 20896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/72;->A01:Landroid/view/View;

    .line 20897
    return-void
.end method

.method public final synthetic A0a(Lcom/facebook/ads/redexgen/X/id;Ljava/util/List;Lcom/facebook/ads/redexgen/X/NU;)V
    .locals 2

    .line 20898
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/NU;->A01()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A06(Lcom/facebook/ads/redexgen/X/id;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;)V

    return-void
.end method

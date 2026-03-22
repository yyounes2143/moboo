.class public Lcom/facebook/ads/redexgen/X/Dc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/dS;,
        Lcom/facebook/ads/redexgen/X/dQ;,
        Lcom/facebook/ads/redexgen/X/dR;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/internal/util/common/Stateful<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/dR;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0D:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0E:Lcom/facebook/ads/redexgen/X/US;

.field public final A0F:Lcom/facebook/ads/redexgen/X/dQ;

.field public final A0G:Lcom/facebook/ads/redexgen/X/dZ;

.field public final A0H:Lcom/facebook/ads/redexgen/X/da;

.field public final A0I:Ljava/lang/Object;

.field public final A0J:Ljava/lang/String;

.field public final A0K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 651
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pLRRT7xfKKmC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sDjB9WgW1E6gHf8gwZURHsTrfoUrQz1T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uiJP8xmaVv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5XKoBHy1xynVgVvyT837PyBbXD1HwArb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BpJCepaU8WbBulVTB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9USxYKvyty1bKFarGQoBTCJfC9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "y9X2NkRV2raN2WQBQaXrllWfrJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7FHQr1tSmfn5NF7ZWaBxZ9Q6x0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dc;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dc;->A0O()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/dQ;Ljava/lang/String;ZIIZLandroid/os/Bundle;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/dZ;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Lcom/facebook/ads/redexgen/X/US;",
            "Lcom/facebook/ads/redexgen/X/dQ;",
            "Ljava/lang/String;",
            "ZIIZ",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/dZ;",
            ")V"
        }
    .end annotation

    .line 33892
    .local p23, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33893
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0I:Ljava/lang/Object;

    .line 33894
    const/4 v1, 0x0

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    .line 33895
    iput v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    .line 33896
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A05:Z

    .line 33897
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0B:Z

    .line 33898
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    .line 33899
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    .line 33900
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    .line 33901
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    .line 33902
    iput v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    .line 33903
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A04:Ljava/lang/String;

    .line 33904
    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    .line 33905
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0E:Lcom/facebook/ads/redexgen/X/US;

    .line 33906
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    .line 33907
    move-object v1, p4

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0J:Ljava/lang/String;

    .line 33908
    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0K:Ljava/util/Map;

    .line 33909
    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A08:Z

    .line 33910
    move/from16 v1, p8

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    .line 33911
    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0G:Lcom/facebook/ads/redexgen/X/dZ;

    .line 33912
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33913
    .local v5, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/De;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v10, 0x1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v3, p0

    move-object v2, v2

    .end local v5    # "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    .local p12, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/De;-><init>(Lcom/facebook/ads/redexgen/X/Dc;DDDZ)V

    .end local p12
    .local v8, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33914
    new-instance v2, Lcom/facebook/ads/redexgen/X/Dd;

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v10, 0x0

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .end local v8    # "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    .local p1, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/Dd;-><init>(Lcom/facebook/ads/redexgen/X/Dc;DDDZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33915
    move-object/from16 v5, p9

    if-eqz v5, :cond_0

    .line 33916
    const/4 v4, 0x6

    const/16 v3, 0x10

    const/16 v2, 0x39

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0G:Lcom/facebook/ads/redexgen/X/dZ;

    new-instance v2, Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {v2, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/gi;-><init>(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/dZ;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    .line 33917
    const/16 v3, 0x61

    const/16 v2, 0x12

    const/16 v1, 0x4a

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    .line 33918
    const/16 v3, 0x4f

    const/16 v2, 0x12

    const/16 v1, 0x6c

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    .line 33919
    const/16 v3, 0x92

    const/16 v2, 0xa

    const/16 v1, 0x61

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    .line 33920
    const/16 v3, 0xab

    const/16 v2, 0x14

    const/16 v1, 0x47

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    .line 33921
    const/16 v3, 0x9c

    const/16 v2, 0xf

    const/16 v1, 0x3b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    .line 33922
    :goto_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/U7;->A2P(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A05:Z

    .line 33923
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/U7;->A2T(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0B:Z

    .line 33924
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/da;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/da;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Dc;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0H:Lcom/facebook/ads/redexgen/X/da;

    .line 33925
    return-void

    .line 33926
    :cond_0
    move/from16 v2, p6

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    .line 33927
    move/from16 v2, p7

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    .line 33928
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0G:Lcom/facebook/ads/redexgen/X/dZ;

    new-instance v2, Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/gi;-><init>(Ljava/util/List;Lcom/facebook/ads/redexgen/X/dZ;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    goto :goto_0
.end method

.method private final A0F()F
    .locals 2

    .line 33929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XM;->A00(Landroid/content/Context;)F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dQ;->getVolume()F

    move-result v0

    mul-float/2addr v1, v0

    return v1
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Dc;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 33930
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static A0H(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dc;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Dc;)Ljava/lang/String;
    .locals 0

    .line 33931
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0J:Ljava/lang/String;

    return-object p0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/dS;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dS;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dQ;->getCurrentPositionInMillis()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0K(Lcom/facebook/ads/redexgen/X/dS;II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/dS;II)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dS;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33933
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 33934
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    .line 33935
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dQ;->getVideoStartReason()Lcom/facebook/ads/redexgen/X/db;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    .line 33936
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dQ;->AAM()Z

    move-result v0

    .line 33937
    xor-int/2addr v0, v2

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/XM;->A03(Ljava/util/Map;ZZ)V

    .line 33938
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Dc;->A0U(Ljava/util/Map;)V

    .line 33939
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Dc;->A0S(Ljava/util/Map;)V

    .line 33940
    invoke-direct {p0, v4, p2}, Lcom/facebook/ads/redexgen/X/Dc;->A0W(Ljava/util/Map;I)V

    .line 33941
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Dc;->A0V(Ljava/util/Map;)V

    .line 33942
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Dc;->A0T(Ljava/util/Map;)V

    .line 33943
    invoke-virtual {p0, p1, v4}, Lcom/facebook/ads/redexgen/X/Dc;->A0n(Lcom/facebook/ads/redexgen/X/dS;Ljava/util/Map;)V

    .line 33944
    iget v0, p1, Lcom/facebook/ads/redexgen/X/dS;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33945
    const/16 v2, 0x3b

    const/16 v1, 0xb

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33946
    return-object v4

    .line 33947
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Dc;Lcom/facebook/ads/redexgen/X/dS;)Ljava/util/Map;
    .locals 0

    .line 33948
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dc;->A0J(Lcom/facebook/ads/redexgen/X/dS;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private A0M()V
    .locals 2

    .line 33949
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    if-eqz v0, :cond_0

    .line 33950
    return-void

    .line 33951
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0J:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dS;->A04:Lcom/facebook/ads/redexgen/X/dS;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0J(Lcom/facebook/ads/redexgen/X/dS;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 33952
    return-void
.end method

.method private A0N()V
    .locals 4

    .line 33953
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    if-eqz v0, :cond_0

    .line 33954
    return-void

    .line 33955
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0J:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dc;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dc;->A0M:[Ljava/lang/String;

    const-string v1, "FJm4aBnN5GbAhpBnCwQDj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/dS;->A0A:Lcom/facebook/ads/redexgen/X/dS;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0J(Lcom/facebook/ads/redexgen/X/dS;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 33956
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0O()V
    .locals 1

    const/16 v0, 0xf3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dc;->A0L:[B

    return-void

    :array_0
    .array-data 1
        -0x56t
        -0x54t
        -0x43t
        -0x4et
        -0x48t
        -0x49t
        -0x35t
        -0x32t
        -0x45t
        -0x21t
        -0x35t
        -0x2at
        -0x2dt
        -0x22t
        -0x1dt
        -0x49t
        -0x35t
        -0x28t
        -0x35t
        -0x2ft
        -0x31t
        -0x24t
        -0x4bt
        -0x38t
        -0x43t
        -0x3ft
        -0x47t
        -0x4dt
        -0x3ft
        -0x39t
        -0x41t
        -0x30t
        -0x3bt
        -0x37t
        -0x3ft
        -0x47t
        -0x46t
        -0x3ft
        -0x4ct
        -0x4at
        -0x37t
        -0x42t
        -0x3et
        -0x46t
        -0x4ct
        -0x3et
        -0x38t
        -0x2at
        -0x29t
        -0x22t
        -0x2ft
        -0x18t
        -0x1at
        -0x25t
        -0x21t
        -0x29t
        -0x2ft
        -0x21t
        -0x1bt
        -0x31t
        -0x20t
        -0x31t
        -0x28t
        -0x22t
        -0x37t
        -0x2dt
        -0x28t
        -0x32t
        -0x31t
        -0x1et
        -0x45t
        -0x32t
        -0x3bt
        -0x3at
        -0x3et
        -0x49t
        -0x31t
        -0x45t
        -0x38t
        0x9t
        -0x2t
        0x10t
        0x11t
        -0x21t
        0xct
        0x12t
        0xbt
        0x1t
        -0x2t
        0xft
        0x16t
        -0xft
        0x6t
        0xat
        0x2t
        -0x16t
        -0x10t
        -0x19t
        -0x24t
        -0x12t
        -0x11t
        -0x35t
        -0x13t
        -0x16t
        -0x1et
        -0x13t
        -0x20t
        -0x12t
        -0x12t
        -0x31t
        -0x1ct
        -0x18t
        -0x20t
        -0x38t
        -0x32t
        -0x2et
        -0x38t
        -0x3at
        -0x27t
        -0x3ct
        -0x2et
        -0x28t
        -0x11t
        -0x1bt
        -0x8t
        -0xat
        -0x1ft
        -0x11t
        -0xbt
        -0x26t
        -0x2et
        -0x23t
        -0x27t
        -0x5t
        -0x3t
        -0x10t
        -0x5t
        -0x5t
        -0x1t
        -0x3et
        -0x3at
        -0x45t
        -0x41t
        -0x49t
        -0x2ct
        -0x25t
        0x5t
        0x6t
        -0xdt
        0x6t
        -0x9t
        -0xft
        -0xat
        0x1t
        0x0t
        -0x9t
        -0x21t
        -0x20t
        -0x33t
        -0x20t
        -0x2ft
        -0x35t
        -0x27t
        -0x22t
        -0x31t
        -0x35t
        -0x2et
        -0x2bt
        -0x22t
        -0x2ft
        -0x30t
        -0x15t
        -0x14t
        -0x27t
        -0x14t
        -0x23t
        -0x29t
        -0x12t
        -0x1ft
        -0x23t
        -0x11t
        -0x27t
        -0x26t
        -0x1ct
        -0x23t
        -0x29t
        -0x22t
        -0x1ft
        -0x16t
        -0x23t
        -0x24t
        -0x6t
        -0x11t
        -0xdt
        -0x15t
        -0x6t
        -0x10t
        -0x1bt
        -0xdt
        -0x17t
        -0x16t
        -0x1ct
        -0x26t
        -0x25t
        -0x31t
        -0x1at
        -0x55t
        -0x5bt
        -0x63t
        0x1ft
        0x19t
        0x20t
        0x13t
        0x11t
        0x6t
        0xat
        0x2t
        -0x4t
        0xat
        0x10t
        -0x46t
        -0x45t
        -0x5dt
        -0x4at
        -0x49t
        -0x4et
        -0x40t
        -0x3ft
        -0x55t
        -0x51t
        -0x50t
        -0x5at
        -0x1et
        -0x1dt
        -0x27t
        -0x33t
        -0x1ct
        0x18t
        0xat
        0xft
        0x5t
        0x10t
        0x18t
    .end array-data
.end method

.method private final A0P(IZZ)V
    .locals 7

    .line 33957
    int-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v0, v1, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    if-ge p1, v0, :cond_1

    .line 33958
    :cond_0
    return-void

    .line 33959
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    const/4 v4, 0x1

    if-le p1, v0, :cond_4

    .line 33960
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    sub-int v0, p1, v0

    int-to-float v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-double v2, v1

    .line 33961
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A0F()F

    move-result v0

    float-to-double v0, v0

    .line 33962
    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/gi;->A06(DD)V

    .line 33963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0G:Lcom/facebook/ads/redexgen/X/dZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dZ;->A9N()D

    move-result-wide v5

    .line 33964
    .local v2, "viewableRatio":D
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v5, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    .line 33965
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJz(Ljava/lang/String;)V

    .line 33967
    :cond_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    .line 33968
    if-nez p3, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    sub-int v1, p1, v0

    const/16 v0, 0x1388

    if-lt v1, v0, :cond_4

    .line 33969
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0J:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/dS;->A09:Lcom/facebook/ads/redexgen/X/dS;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    .line 33970
    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0K(Lcom/facebook/ads/redexgen/X/dS;II)Ljava/util/Map;

    move-result-object v0

    .line 33971
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 33972
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    .line 33973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A05()V

    .line 33974
    return-void

    .line 33975
    .end local v2    # "viewableRatio":D
    :cond_4
    if-eqz p2, :cond_6

    .line 33976
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    if-eqz v0, :cond_5

    .line 33977
    return-void

    .line 33978
    :cond_5
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    .line 33979
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0J:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/dS;->A09:Lcom/facebook/ads/redexgen/X/dS;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0K(Lcom/facebook/ads/redexgen/X/dS;II)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 33980
    :cond_6
    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/Dc;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 33981
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dc;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private A0R(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33982
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0E:Lcom/facebook/ads/redexgen/X/US;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/US;->ABa(Ljava/lang/String;Ljava/util/Map;)V

    .line 33983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A03:Lcom/facebook/ads/redexgen/X/dR;

    if-eqz v0, :cond_0

    .line 33984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A03:Lcom/facebook/ads/redexgen/X/dR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dR;->AE5()V

    .line 33985
    :cond_0
    return-void
.end method

.method private A0S(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33986
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A03()Lcom/facebook/ads/redexgen/X/O1;

    move-result-object v7

    .line 33987
    .local v0, "stats":Lcom/facebook/ads/redexgen/X/O1;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/O1;->A00()Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v4

    .line 33988
    .local v1, "viewability":Lcom/facebook/ads/redexgen/X/O0;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe2

    const/4 v1, 0x3

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33989
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A06()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe5

    const/4 v1, 0x3

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33990
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A03()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe8

    const/4 v1, 0x5

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33991
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A02()D

    move-result-wide v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd4

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33992
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A01()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/16 v1, 0xc

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33993
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A04()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7a

    const/4 v1, 0x7

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A04:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 33995
    const/16 v2, 0xdc

    const/4 v1, 0x6

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A04:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33996
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/O1;->A01()Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v4

    .line 33997
    .local v2, "volume":Lcom/facebook/ads/redexgen/X/O0;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33998
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A06()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc6

    const/4 v1, 0x3

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33999
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A03()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc9

    const/4 v1, 0x5

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34000
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A02()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/16 v1, 0x8

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34001
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A01()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x23

    const/16 v1, 0xc

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34002
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/O0;->A04()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x73

    const/4 v1, 0x7

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34003
    return-void
.end method

.method private A0T(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34004
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0K:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 34005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0K:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 34006
    :cond_0
    return-void
.end method

.method private A0U(Ljava/util/Map;)V
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

    .line 34007
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dQ;->AAH()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x46

    const/16 v1, 0x9

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dQ;->getInitialBufferTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x85

    const/4 v1, 0x4

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34009
    return-void
.end method

.method private A0V(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34010
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 34011
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/dQ;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 34012
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x89

    const/4 v1, 0x2

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34013
    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x83

    const/4 v1, 0x2

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dQ;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x81

    const/4 v1, 0x2

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0F:Lcom/facebook/ads/redexgen/X/dQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dQ;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x90

    const/4 v1, 0x2

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34016
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    const/16 v2, 0xed

    const/4 v1, 0x6

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/dL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 34017
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 34018
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34019
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xce

    const/4 v1, 0x3

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34020
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd1

    const/4 v1, 0x3

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34021
    return-void
.end method

.method private A0W(Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 34022
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/4 v1, 0x5

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34023
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    int-to-float v0, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8b

    const/4 v1, 0x5

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34024
    int-to-float v0, p2

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xbf

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34025
    return-void
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/Dc;)Z
    .locals 0

    .line 34026
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    return p0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/Dc;)Z
    .locals 0

    .line 34027
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    return p0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/Dc;Z)Z
    .locals 0

    .line 34028
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    return p1
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/Dc;Z)Z
    .locals 0

    .line 34029
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    return p1
.end method


# virtual methods
.method public final A0b()I
    .locals 1

    .line 34030
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    return v0
.end method

.method public final A0c()Landroid/os/Bundle;
    .locals 5

    .line 34031
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A0b()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A0b()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0l(II)V

    .line 34032
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 34033
    .local v0, "bundle":Landroid/os/Bundle;
    const/16 v2, 0x61

    const/16 v1, 0x12

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34034
    const/16 v2, 0x4f

    const/16 v1, 0x12

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34035
    const/16 v2, 0x92

    const/16 v1, 0xa

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34036
    const/16 v2, 0xab

    const/16 v1, 0x14

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34037
    const/16 v2, 0x9c

    const/16 v1, 0xf

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A02()Landroid/os/Bundle;

    move-result-object v3

    const/4 v2, 0x6

    const/16 v1, 0x10

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34039
    return-object v4
.end method

.method public final A0d()V
    .locals 2

    .line 34040
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    if-eqz v0, :cond_0

    .line 34041
    return-void

    .line 34042
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0J:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dS;->A07:Lcom/facebook/ads/redexgen/X/dS;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0J(Lcom/facebook/ads/redexgen/X/dS;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34043
    return-void
.end method

.method public final A0e()V
    .locals 2

    .line 34044
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    if-eqz v0, :cond_0

    .line 34045
    return-void

    .line 34046
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0J:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dS;->A08:Lcom/facebook/ads/redexgen/X/dS;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0J(Lcom/facebook/ads/redexgen/X/dS;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34047
    return-void
.end method

.method public final A0f()V
    .locals 5

    .line 34048
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A0F()F

    move-result v0

    float-to-double v3, v0

    const-wide v1, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v3, v1

    if-gez v0, :cond_1

    .line 34049
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0I:Ljava/lang/Object;

    monitor-enter v1

    .line 34050
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A08:Z

    if-eqz v0, :cond_0

    .line 34051
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A0M()V

    .line 34052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A08:Z

    .line 34053
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 34054
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0I:Ljava/lang/Object;

    monitor-enter v1

    .line 34055
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A08:Z

    if-nez v0, :cond_2

    .line 34056
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A0N()V

    .line 34057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A08:Z

    .line 34058
    :cond_2
    monitor-exit v1

    .line 34059
    :goto_0
    return-void

    .line 34060
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final A0g()V
    .locals 4

    .line 34061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    .line 34062
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0H:Lcom/facebook/ads/redexgen/X/da;

    .line 34063
    const/4 v0, 0x1

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34064
    return-void
.end method

.method public final A0h()V
    .locals 2

    .line 34065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0D:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0H:Lcom/facebook/ads/redexgen/X/da;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34066
    return-void
.end method

.method public final A0i(I)V
    .locals 7

    .line 34067
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    if-eqz v0, :cond_0

    .line 34068
    return-void

    .line 34069
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A04()V

    .line 34070
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0J:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dS;->A05:Lcom/facebook/ads/redexgen/X/dS;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0J(Lcom/facebook/ads/redexgen/X/dS;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34071
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A05:Z

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 34072
    invoke-direct {p0, p1, v5, v6}, Lcom/facebook/ads/redexgen/X/Dc;->A0P(IZZ)V

    .line 34073
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0B:Z

    if-eqz v0, :cond_1

    .line 34074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A05()V

    .line 34075
    :cond_1
    return-void

    .line 34076
    :cond_2
    int-to-double v3, p1

    const-wide v1, 0x409f400000000000L    # 2000.0

    cmpg-double v0, v3, v1

    if-gez v0, :cond_3

    :goto_1
    invoke-direct {p0, p1, v5, v6}, Lcom/facebook/ads/redexgen/X/Dc;->A0P(IZZ)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public final A0j(I)V
    .locals 2

    .line 34077
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Dc;->A0P(IZZ)V

    .line 34078
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    if-nez v0, :cond_0

    .line 34079
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    .line 34080
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    .line 34081
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A05()V

    .line 34082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A04()V

    .line 34083
    return-void
.end method

.method public final A0k(I)V
    .locals 1

    .line 34084
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0P(IZZ)V

    .line 34085
    return-void
.end method

.method public final A0l(II)V
    .locals 2

    .line 34086
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0P(IZZ)V

    .line 34087
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    .line 34088
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    .line 34089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A05()V

    .line 34090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0C:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A04()V

    .line 34091
    return-void
.end method

.method public final A0m(Lcom/facebook/ads/redexgen/X/dR;)V
    .locals 0

    .line 34092
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A03:Lcom/facebook/ads/redexgen/X/dR;

    .line 34093
    return-void
.end method

.method public A0n(Lcom/facebook/ads/redexgen/X/dS;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dS;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34094
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public final A0o(Lcom/facebook/ads/redexgen/X/Dc;)V
    .locals 1

    .line 34095
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Dc;->A06:Z

    .line 34096
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    .line 34097
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    .line 34098
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    .line 34099
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    .line 34100
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    iput v0, p1, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    .line 34101
    return-void
.end method

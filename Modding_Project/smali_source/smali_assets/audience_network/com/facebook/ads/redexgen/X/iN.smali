.class public Lcom/facebook/ads/redexgen/X/iN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MK;
.implements Lcom/facebook/ads/redexgen/X/MP;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/iB;

.field public A02:Lcom/facebook/ads/redexgen/X/Me;

.field public A03:Lcom/facebook/ads/redexgen/X/Mf;

.field public A04:Lcom/facebook/ads/redexgen/X/Uo;

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qc;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2972
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "axrzCdv0FVVdCRJ2G5bzsKW6gzdnjkd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bTiRlDodVRVUvI5asAv5OrmPjdR2kQoL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0F0kzsbgf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9OhtkIX5JTQzZAf31yyS0L6RFdCICf7G"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a5UohLNEI7iVSyxaj4LiJgBVL6R7sy1L"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7foeJoxu0TAivWs2uWCvQbVxkZa0ERHH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EHJaWrfXkxbvFmDXjSXoaOL8kiGJisUm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EwwWMCMqNj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iN;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/iN;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iN;->A0E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1

    .line 86083
    new-instance v0, Lcom/facebook/ads/redexgen/X/iB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/iB;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/iN;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/iB;)V

    .line 86084
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/iB;)V
    .locals 1

    .line 86085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86086
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0B:Ljava/lang/String;

    .line 86087
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A00:I

    .line 86088
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86089
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 86090
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/iN;)Lcom/facebook/ads/redexgen/X/iB;
    .locals 0

    .line 86091
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/iN;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 86092
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/iN;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1b

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const-string v1, "ypXQoKhxcHRWJrqojmqi5sMtZ7xfThaX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2LOy6kLjroQDrfbojOuFHdbjLd88ORkx"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86093
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 86094
    .local v0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x76

    const/4 v1, 0x4

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86095
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86096
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86097
    :cond_0
    const/16 v2, 0x66

    const/16 v1, 0x8

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86098
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86099
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86100
    :cond_1
    return-object v3
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x7a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iN;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x37t
        0x12t
        0x17t
        0x6t
        0x2t
        0x13t
        0x4t
        0x56t
        0x17t
        0x1at
        0x4t
        0x13t
        0x17t
        0x12t
        0xft
        0x56t
        0x1at
        0x19t
        0x17t
        0x12t
        0x13t
        0x12t
        0x56t
        0x12t
        0x17t
        0x2t
        0x17t
        0x2t
        0x2dt
        0x28t
        0x22t
        0x2at
        0x61t
        0x29t
        0x20t
        0x31t
        0x31t
        0x24t
        0x2ft
        0x24t
        0x25t
        0x61t
        0x2et
        0x2ft
        0x61t
        0x2dt
        0x2et
        0x22t
        0x2at
        0x32t
        0x22t
        0x33t
        0x24t
        0x24t
        0x2ft
        0x61t
        0x20t
        0x25t
        0x57t
        0x78t
        0x7dt
        0x77t
        0x7ft
        0x34t
        0x78t
        0x7bt
        0x73t
        0x73t
        0x71t
        0x70t
        0x77t
        0x75t
        0x78t
        0x78t
        0x71t
        0x66t
        0x40t
        0x6dt
        0x64t
        0x71t
        0x2et
        0x2ct
        0x3ft
        0x29t
        0x2et
        0x23t
        0x39t
        0x55t
        0x57t
        0x44t
        0x52t
        0x5ft
        0x58t
        0x52t
        0x72t
        0x65t
        0x3at
        0x35t
        0x20t
        0x3dt
        0x22t
        0x31t
        0xct
        0x11t
        0x1et
        0xft
        0xct
        0x17t
        0x10t
        0xbt
        0x64t
        0x7ft
        0x78t
        0x60t
        0x64t
        0x74t
        0x58t
        0x75t
        0x21t
        0x3et
        0x32t
        0x20t
    .end array-data
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/iB;)V
    .locals 9

    .line 86101
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A06:Z

    if-nez v0, :cond_2

    .line 86102
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0c()Ljava/util/List;

    move-result-object v8

    .line 86104
    .local v0, "carouselModels":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/NativeAdModel;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 86105
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 86106
    .local v1, "cardCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 86107
    .local v2, "carousel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    const/4 v5, 0x0

    .local v3, "cardIndex":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 86108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Lcom/facebook/ads/redexgen/X/iN;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/iN;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 86109
    .local v4, "adapter":Lcom/facebook/ads/redexgen/X/iN;
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/iB;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/iN;->A05(Lcom/facebook/ads/redexgen/X/iB;)V

    .line 86110
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iN;->A04:Lcom/facebook/ads/redexgen/X/Uo;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/Qc;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/iN;Lcom/facebook/ads/redexgen/X/TF;Lcom/facebook/ads/redexgen/X/Uo;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86111
    .end local v4    # "adapter":Lcom/facebook/ads/redexgen/X/iN;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86112
    .end local v3    # "cardIndex":I
    :cond_0
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/iN;->A05:Ljava/util/List;

    .line 86113
    .end local v1    # "cardCount":I
    .end local v2    # "carousel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A06:Z

    .line 86114
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iN;->A07()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A07:Z

    .line 86115
    return-void

    .line 86116
    .end local v0    # "carouselModels":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/NativeAdModel;>;"
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A06(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86117
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/iN;->A03(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 86118
    .local v0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 86119
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/iO;

    invoke-direct {v2, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/iO;-><init>(Lcom/facebook/ads/redexgen/X/iN;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86120
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A07()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 86121
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86122
    :catch_0
    return-void
.end method

.method private A07()Z
    .locals 2

    .line 86123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86124
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0e()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86125
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0F()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0e()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86126
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    if-nez v0, :cond_3

    .line 86127
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 86128
    :goto_0
    return v0

    .line 86129
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A08()I
    .locals 1

    .line 86130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A02()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 86131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A05()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 2

    .line 86132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A06()I

    move-result v1

    .line 86133
    .local v0, "snapshotCompressQuality":I
    if-ltz v1, :cond_0

    const/16 v0, 0x64

    if-le v1, v0, :cond_1

    .line 86134
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 86135
    :cond_1
    return v1
.end method

.method public final A0B()I
    .locals 1

    .line 86136
    iget v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A00:I

    return v0
.end method

.method public final A0C()I
    .locals 1

    .line 86137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A08()I

    move-result v0

    return v0
.end method

.method public final A0D()I
    .locals 1

    .line 86138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A09()I

    move-result v0

    return v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/iB;
    .locals 1

    .line 86139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/Me;
    .locals 1

    .line 86140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A02:Lcom/facebook/ads/redexgen/X/Me;

    return-object v0
.end method

.method public final A0G()Ljava/lang/String;
    .locals 1

    .line 86141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qc;",
            ">;"
        }
    .end annotation

    .line 86142
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86143
    const/4 v0, 0x0

    return-object v0

    .line 86144
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A05:Ljava/util/List;

    return-object v0
.end method

.method public final A0I()V
    .locals 5

    .line 86145
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A09:Z

    if-nez v0, :cond_2

    .line 86146
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0Z()Ljava/lang/String;

    move-result-object v4

    .line 86147
    .local v0, "usedReportUrl":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 86148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const-string v1, "MHNGbcOaMZIG61BxjY7eI95TuiNlx0Gr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "kvjKrlZQ6RBIZv1Jj5ESJw4vFB55PB3z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Lcom/facebook/ads/redexgen/X/US;->AGF(Ljava/lang/String;)V

    .line 86149
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A09:Z

    .line 86150
    .end local v0    # "usedReportUrl":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public final A0J()V
    .locals 2

    .line 86151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A05:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qc;

    .line 86153
    .local v1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->unregisterView()V

    .line 86154
    .end local v1    # "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    goto :goto_0

    .line 86155
    :cond_0
    return-void
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/Me;)V
    .locals 0

    .line 86156
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iN;->A02:Lcom/facebook/ads/redexgen/X/Me;

    .line 86157
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/Uo;)V
    .locals 4

    .line 86158
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iN;->A02:Lcom/facebook/ads/redexgen/X/Me;

    .line 86159
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/iN;->A04:Lcom/facebook/ads/redexgen/X/Uo;

    .line 86160
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NU;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 86161
    .local v0, "dataObject":Lorg/json/JSONObject;
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/NU;->A01()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    .line 86162
    .local v1, "definition":Lcom/facebook/ads/redexgen/X/TF;
    if-eqz v0, :cond_0

    .line 86163
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TF;->A06()I

    move-result v0

    .line 86164
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A00:I

    .line 86165
    const/16 v2, 0x5e

    const/4 v1, 0x2

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86166
    invoke-static {p1, v3, v0}, Lcom/facebook/ads/redexgen/X/Mg;->A00(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v0

    .line 86167
    .local v2, "parentAdModel":Lcom/facebook/ads/redexgen/X/iB;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/iN;->A05(Lcom/facebook/ads/redexgen/X/iB;)V

    .line 86168
    invoke-static {p1, p0, p3}, Lcom/facebook/ads/redexgen/X/ML;->A06(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MK;Lcom/facebook/ads/redexgen/X/US;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86169
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A4u()V

    .line 86170
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/Me;->AEK(Lcom/facebook/ads/redexgen/X/iN;Lcom/facebook/ads/redexgen/X/V1;)V

    .line 86171
    return-void

    .line 86172
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 86173
    :cond_1
    if-eqz p2, :cond_2

    .line 86174
    invoke-interface {p2, p0}, Lcom/facebook/ads/redexgen/X/Me;->AEH(Lcom/facebook/ads/redexgen/X/iN;)V

    .line 86175
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iN;->A0B:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mf;

    invoke-direct {v0, p1, v1, p0, p2}, Lcom/facebook/ads/redexgen/X/Mf;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/iN;Lcom/facebook/ads/redexgen/X/Me;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A03:Lcom/facebook/ads/redexgen/X/Mf;

    .line 86176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A03:Lcom/facebook/ads/redexgen/X/Mf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mf;->A02()V

    .line 86177
    return-void
.end method

.method public final A0M(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86178
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86179
    return-void

    .line 86180
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A20(Landroid/content/Context;)Z

    move-result v0

    .line 86181
    .local v0, "shouldBlockLockscreenClicks":Z
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XQ;->A03(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86182
    sget-object v3, Lcom/facebook/ads/redexgen/X/iN;->A0E:Ljava/lang/String;

    const/16 v2, 0x1b

    const/16 v1, 0x1f

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86183
    return-void

    .line 86184
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 86185
    .local v1, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 86186
    invoke-interface {v7, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86187
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86188
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x57

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86189
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/4 v1, 0x7

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86190
    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x46

    const/16 v1, 0xa

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86191
    const/16 v2, 0x6e

    const/16 v1, 0x8

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0B:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86192
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 86193
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86194
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86195
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0B()Landroid/net/Uri;

    move-result-object v6

    .line 86196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0C()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 86197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0C()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v8

    .line 86198
    :goto_0
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/MI;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/N3;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    .line 86199
    .local v2, "adAction":Lcom/facebook/ads/redexgen/X/MH;
    sget-object v1, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    .line 86200
    .local v3, "actionOutcome":Lcom/facebook/ads/redexgen/X/ME;
    if-eqz v0, :cond_4

    .line 86201
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/MH;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v1

    .line 86202
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/ME;

    if-eq v1, v0, :cond_5

    .line 86203
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    const/16 v2, 0x3a

    const/16 v1, 0xc

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/WX;->A04(Landroid/content/Context;Ljava/lang/String;)V

    .line 86204
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A02:Lcom/facebook/ads/redexgen/X/Me;

    if-eqz v0, :cond_5

    .line 86205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A02:Lcom/facebook/ads/redexgen/X/Me;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Me;->AEG(Lcom/facebook/ads/redexgen/X/iN;)V

    .line 86206
    :cond_5
    return-void

    .line 86207
    :cond_6
    move-object v8, v2

    goto :goto_0
.end method

.method public final A0N(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86208
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 86209
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86210
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/US;->AAs(Ljava/lang/String;Ljava/util/Map;)V

    .line 86211
    return-void
.end method

.method public final A0O(Ljava/util/Map;)V
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

    .line 86212
    .local v5, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86213
    return-void

    .line 86214
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A08:Z

    if-nez v0, :cond_b

    .line 86215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A02:Lcom/facebook/ads/redexgen/X/Me;

    if-eqz v0, :cond_2

    .line 86216
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iN;->A02:Lcom/facebook/ads/redexgen/X/Me;

    sget-object v1, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const-string v1, "N1HzTzVNk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, p0}, Lcom/facebook/ads/redexgen/X/Me;->AEI(Lcom/facebook/ads/redexgen/X/iN;)V

    .line 86217
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 86218
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 86219
    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86220
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86221
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x57

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86222
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x50

    const/4 v1, 0x7

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86223
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 86224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 86225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3D()V

    .line 86226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86227
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0X()Ljava/lang/String;

    move-result-object v5

    .line 86228
    const/16 v7, 0x60

    const/4 v6, 0x6

    const/16 v4, 0x4f

    sget-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const-string v1, "Q8Us8dZOubCsANiQB8YQBmsKLdjgWIPJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Pg8pQUM49Vm5a0t7ebabBeivyd2Kgjff"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v7, v6, v4}, Lcom/facebook/ads/redexgen/X/iN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 86229
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86230
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 86231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 86232
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A7G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 86233
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0T()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0U()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_8

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const-string v1, "BGAjHSzJz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_a

    .line 86234
    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/iN;->A06(Ljava/util/Map;Ljava/util/Map;)V

    .line 86235
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A08:Z

    .line 86236
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    return-void
.end method

.method public final A0P()Z
    .locals 1

    .line 86237
    const/4 v0, 0x1

    return v0
.end method

.method public final A0Q()Z
    .locals 1

    .line 86238
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0B()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0R()Z
    .locals 1

    .line 86239
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A06:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A07:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0S()Z
    .locals 1

    .line 86240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0d()Z

    move-result v0

    return v0
.end method

.method public final A0T()Z
    .locals 1

    .line 86241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1W(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86242
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86243
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 86244
    :goto_0
    return v0

    .line 86245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0U()Z
    .locals 1

    .line 86246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1W(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86247
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    .line 86248
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 86249
    :goto_0
    return v0

    .line 86250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A7G()Ljava/lang/String;
    .locals 1

    .line 86251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A01:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7h()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86252
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7h()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A8C()Lcom/facebook/ads/redexgen/X/MJ;
    .locals 1

    .line 86253
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/iN;->A0E()Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A8C()Lcom/facebook/ads/redexgen/X/MJ;

    move-result-object v0

    return-object v0
.end method

.method public A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 86254
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final AJa()Z
    .locals 1

    .line 86255
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 86256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A03:Lcom/facebook/ads/redexgen/X/Mf;

    if-eqz v0, :cond_1

    .line 86257
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iN;->A03:Lcom/facebook/ads/redexgen/X/Mf;

    sget-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/iN;->A0D:[Ljava/lang/String;

    const-string v1, "xLZjaQWgus"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mf;->A03()V

    .line 86258
    :cond_1
    return-void
.end method

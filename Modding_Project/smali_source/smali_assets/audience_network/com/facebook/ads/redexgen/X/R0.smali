.class public final Lcom/facebook/ads/redexgen/X/R0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Landroid/content/Intent;

.field public A06:Landroid/widget/RelativeLayout;

.field public A07:Lcom/facebook/ads/redexgen/X/Vb;

.field public A08:Lcom/facebook/ads/redexgen/X/Xo;

.field public A09:Lcom/facebook/ads/redexgen/X/Yd;

.field public A0A:Lcom/facebook/ads/redexgen/X/cw;

.field public A0B:Ljava/lang/String;

.field public A0C:Ljava/lang/String;

.field public A0D:Z

.field public final A0E:Lcom/facebook/ads/AudienceNetworkActivity;

.field public final A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field public final A0G:Lcom/facebook/ads/redexgen/X/RA;

.field public final A0H:Lcom/facebook/ads/redexgen/X/RJ;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Rc;

.field public final A0J:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/R6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1542
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4LY4lS0Dtnhb2OiQyA5efrKIFR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dGupKpVCMt4qg9mKwPVhImHWchSaWcIC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZyPDBV2Dgn506ClNEjHAvEDIkGgGqxcu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6d7pmCocDfQ9ggh3dWvmWW2CO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v0AhzTtfFBaqfNNgAD9Hm9U40nGOHxVb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UIU6rcdX7ZqD4Xq5NwRFZisMuquIGFkO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tB8Uz7UMZA3JApFIn70Qu6pSbr2GCqXd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GRU7Zt0cjyIBsRz9MT2AF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R0;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;)V
    .locals 3

    .line 61700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0K:Ljava/util/List;

    .line 61702
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A01:I

    .line 61703
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 61704
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 61705
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A02(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/dL;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 61707
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/RJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/AudienceNetworkActivity;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0H:Lcom/facebook/ads/redexgen/X/RJ;

    .line 61708
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rc;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rc;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/AudienceNetworkActivity;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0I:Lcom/facebook/ads/redexgen/X/Rc;

    .line 61709
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RA;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/RA;-><init>(Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/AudienceNetworkActivity;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0G:Lcom/facebook/ads/redexgen/X/RA;

    .line 61710
    return-void
.end method

.method private A00()Ljava/lang/String;
    .locals 3

    .line 61711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->A03()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61712
    :cond_0
    const/16 v2, 0x8a

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61713
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vb;->A03()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/R0;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x22

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

    const/16 v0, 0xeb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/R0;->A0L:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x38t
        0x37t
        0x34t
        0x3at
        0x33t
        0x76t
        0x22t
        0x39t
        0x76t
        0x3ft
        0x38t
        0x30t
        0x33t
        0x24t
        0x76t
        0x20t
        0x3ft
        0x33t
        0x21t
        0x2t
        0x2ft
        0x26t
        0x33t
        0x76t
        0x30t
        0x24t
        0x39t
        0x3bt
        0x76t
        0x3ft
        0x38t
        0x22t
        0x33t
        0x38t
        0x22t
        0x76t
        0x39t
        0x24t
        0x76t
        0x25t
        0x37t
        0x20t
        0x33t
        0x32t
        0x1ft
        0x38t
        0x25t
        0x22t
        0x37t
        0x38t
        0x35t
        0x33t
        0x5t
        0x22t
        0x37t
        0x22t
        0x33t
        0x2at
        0x25t
        0x14t
        0x2at
        0x28t
        0x3ft
        0x22t
        0x3dt
        0x22t
        0x3ft
        0x32t
        0x7at
        0x78t
        0x75t
        0x75t
        0x7ct
        0x6bt
        0x4dt
        0x60t
        0x69t
        0x7ct
        0x79t
        0x76t
        0x73t
        0x7ft
        0x74t
        0x6et
        0x4et
        0x75t
        0x71t
        0x7ft
        0x74t
        0x74t
        0x78t
        0x7at
        0x39t
        0x71t
        0x76t
        0x74t
        0x72t
        0x75t
        0x78t
        0x78t
        0x7ct
        0x39t
        0x76t
        0x73t
        0x64t
        0x39t
        0x7et
        0x79t
        0x63t
        0x72t
        0x65t
        0x64t
        0x63t
        0x7et
        0x63t
        0x7et
        0x76t
        0x7bt
        0x39t
        0x73t
        0x7et
        0x64t
        0x67t
        0x7bt
        0x76t
        0x6et
        0x72t
        0x73t
        0x6et
        0x63t
        0x6ct
        0x66t
        0x71t
        0x61t
        0x63t
        0x72t
        0x67t
        0x3et
        0x25t
        0x3ct
        0x3ct
        0x31t
        0x28t
        0x3bt
        0x2ct
        0x2ct
        0x37t
        0x3at
        0x3bt
        0x1at
        0x2bt
        0x33t
        0x2et
        0x2dt
        0x27t
        0x2dt
        0x2et
        0x31t
        0x2ct
        0x2at
        0x2ct
        0x3ft
        0x37t
        0x2at
        0x7t
        0x5t
        0x12t
        0x13t
        0x12t
        0x11t
        0x1et
        0x19t
        0x12t
        0x13t
        0x38t
        0x5t
        0x1et
        0x12t
        0x19t
        0x3t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x3ct
        0x12t
        0xet
        0x4ft
        0x57t
        0x55t
        0x4ct
        0x7dt
        0x5at
        0x48t
        0x59t
        0x4et
        0x6ft
        0x59t
        0x5ft
        0x53t
        0x52t
        0x58t
        0x4ft
        0x7at
        0x61t
        0x51t
        0x61t
        0x7ct
        0x67t
        0x6bt
        0x60t
        0x7at
        0x6ft
        0x7at
        0x67t
        0x61t
        0x60t
        0x70t
        0x6bt
        0x6ct
        0x74t
        0x70t
        0x60t
        0x4ct
        0x61t
        0xet
        0x11t
        0x1dt
        0xft
        0x2ct
        0x1t
        0x8t
        0x1dt
    .end array-data
.end method

.method private A03(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    .line 61714
    const/16 v2, 0xe3

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xdb

    const/16 v1, 0x8

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    const/16 v2, 0xa5

    const/16 v1, 0x18

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 61715
    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    .line 61716
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 61717
    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/WB;->A03(Landroid/os/Bundle;Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 61718
    .local v4, "adnwSavedStateBundle":Landroid/os/Bundle;
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A01:I

    .line 61719
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    .line 61720
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    .line 61721
    return-void

    .line 61722
    .end local v4    # "adnwSavedStateBundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A01:I

    .line 61723
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    .line 61724
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    .line 61725
    const/16 v2, 0xbd

    const/16 v1, 0x10

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A02:I

    .line 61726
    return-void
.end method


# virtual methods
.method public final A04()Landroid/widget/RelativeLayout;
    .locals 1

    .line 61727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/AudienceNetworkActivity;
    .locals 1

    .line 61728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/dL;
    .locals 1

    .line 61729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/cw;
    .locals 1

    .line 61730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0A:Lcom/facebook/ads/redexgen/X/cw;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .locals 1

    .line 61731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    return-object v0
.end method

.method public final A09()V
    .locals 3

    .line 61732
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0G:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A05(Lcom/facebook/ads/redexgen/X/Vb;Ljava/lang/String;)V

    .line 61733
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/R6;)V
    .locals 1

    .line 61734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61735
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/R6;)V
    .locals 1

    .line 61736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 61737
    return-void
.end method

.method public final A0C(Ljava/lang/String;)V
    .locals 2

    .line 61738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A0G:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Ljava/lang/String;Ljava/lang/String;)V

    .line 61739
    return-void
.end method

.method public final A0D(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 7

    .line 61740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    if-nez v0, :cond_0

    .line 61741
    return-void

    .line 61742
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/Yd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const-string v1, "nOOhjPgmgj4ymGbfbhDfGuv2YA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 61743
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61744
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    new-instance v6, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 61745
    move-object v4, p2

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ye;->A02(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Xo;Lcom/facebook/ads/redexgen/X/Xn;)Lcom/facebook/ads/redexgen/X/LV;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/Yd;

    .line 61746
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61747
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61748
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 61749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 61750
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 61751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0M()V

    .line 61752
    return-void
.end method

.method public final A0E(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 2

    .line 61753
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A0G:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RA;->A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;Ljava/lang/String;)V

    .line 61754
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 61755
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WJ;->A00()Lcom/facebook/ads/redexgen/X/WI;

    const/4 v0, 0x0

    .line 61756
    .local v0, "customDumpsysWriter":Lcom/facebook/ads/redexgen/X/WI;
    if-eqz v0, :cond_0

    .line 61757
    const/16 v2, 0x8e

    const/16 v1, 0xf

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61758
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 61759
    return-void
.end method

.method public final finish(I)V
    .locals 3

    .line 61760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61761
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    .line 61762
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R0;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A35(Ljava/lang/String;ILjava/lang/String;)V

    .line 61763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61764
    return-void

    .line 61765
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0G:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A07(Lcom/facebook/ads/redexgen/X/Vb;Ljava/lang/String;)V

    .line 61766
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0G:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A06(Lcom/facebook/ads/redexgen/X/Vb;Ljava/lang/String;)V

    .line 61767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->finish(I)V

    .line 61768
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 61769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Xo;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61770
    return-void

    .line 61771
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/LJ;->A07(IILandroid/content/Intent;)V

    .line 61772
    return-void
.end method

.method public final onBackPressed()V
    .locals 8

    .line 61773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 61774
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/R0;->A03:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A04:J

    sub-long v0, v6, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/R0;->A03:J

    .line 61775
    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/R0;->A04:J

    .line 61776
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A03:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A02:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 61777
    const/4 v2, 0x0

    .line 61778
    .local v2, "shouldIntercept":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R6;

    .line 61779
    .local v4, "interceptor":Lcom/facebook/ads/redexgen/X/R6;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/R6;->AAA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61780
    const/4 v2, 0x1

    goto :goto_0

    .line 61781
    :cond_1
    if-nez v2, :cond_2

    .line 61782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onBackPressed()V

    .line 61783
    .end local v2    # "shouldIntercept":Z
    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 61784
    iget v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A00:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_0

    .line 61785
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 61786
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    const/16 v2, 0xcd

    const/16 v1, 0xe

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v3

    if-ne v6, v5, :cond_2

    .line 61787
    const/16 v2, 0x9d

    const/16 v1, 0x8

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61788
    :goto_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/UZ;->A0K:Lcom/facebook/ads/redexgen/X/UZ;

    .line 61789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61790
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    .line 61791
    invoke-static {v3, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A02(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 61792
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A00:I

    .line 61793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0H:Lcom/facebook/ads/redexgen/X/RJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RJ;->A01()V

    .line 61794
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 61795
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Xo;->getCurrentClientToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 61796
    :cond_2
    const/16 v2, 0x81

    const/16 v1, 0x9

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 61797
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XR;->A02()V

    .line 61798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0I:Lcom/facebook/ads/redexgen/X/Rc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rc;->A04()V

    .line 61799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 61800
    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 61801
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WB;->A02(Landroid/content/Intent;Ljava/lang/ClassLoader;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:Landroid/content/Intent;

    .line 61802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:Landroid/content/Intent;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WB;->A04(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    .line 61803
    .local v0, "startAdContext":Lcom/facebook/ads/redexgen/X/dL;
    if-eqz v1, :cond_0

    .line 61804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/dL;->A0M(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 61805
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/R0;->A03(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 61806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61807
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    .line 61808
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R0;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A36(Ljava/lang/String;Ljava/lang/String;)V

    .line 61809
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:Landroid/content/Intent;

    const/16 v2, 0x45

    const/16 v1, 0xa

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61810
    .local v1, "callerType":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 61811
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 61812
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 61813
    .local v3, "isFirstCallToANActivity":Z
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A0I:Lcom/facebook/ads/redexgen/X/Rc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Rc;->A08(Lcom/facebook/ads/redexgen/X/Vb;Z)V

    .line 61814
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    .line 61815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 61816
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61817
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61818
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/R5;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;-><init>(Lcom/facebook/ads/redexgen/X/R0;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/dL;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    .line 61819
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0N(Lcom/facebook/ads/redexgen/X/Vb;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/Xo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    .line 61820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    if-nez v0, :cond_3

    .line 61821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61822
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0A:I

    const/4 v2, 0x0

    const/16 v1, 0x3a

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 61823
    const/16 v2, 0x3a

    const/16 v1, 0xb

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 61824
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R0;->A09()V

    .line 61825
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 61826
    return-void

    .line 61827
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 61828
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:Landroid/content/Intent;

    invoke-interface {v1, v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Xo;->AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V

    .line 61829
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A0G:Lcom/facebook/ads/redexgen/X/RA;

    const/16 v2, 0x5a

    const/16 v1, 0x27

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A09(Ljava/lang/String;Ljava/lang/String;)V

    .line 61830
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A04:J

    .line 61831
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0I:Lcom/facebook/ads/redexgen/X/Rc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    .line 61832
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A03(Landroid/content/Intent;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/cw;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0A:Lcom/facebook/ads/redexgen/X/cw;

    .line 61833
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A0I:Lcom/facebook/ads/redexgen/X/Rc;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rc;->A07(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/Vb;Landroid/widget/RelativeLayout;)V

    .line 61834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A00:I

    .line 61835
    const/16 v2, 0x4f

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_4

    .line 61836
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0C:Ljava/lang/String;

    .line 61837
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0I:Lcom/facebook/ads/redexgen/X/Rc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rc;->A06()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61838
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const-string v1, "dMohbzPZPFL3lBhphwrH1b8arfl2r2Ch"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A0C:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const-string v1, "3wH6tZS0sHFmmn7H8QunQNd9ha"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A0C:Ljava/lang/String;

    goto :goto_1

    .line 61839
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const-string v1, "aldkJ30NOVt6q0NKQGcnTd28ZfXNLwwL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 61840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61841
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    .line 61842
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R0;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A37(Ljava/lang/String;Ljava/lang/String;)V

    .line 61843
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0G:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A04(Lcom/facebook/ads/redexgen/X/Vb;Ljava/lang/String;)V

    .line 61844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 61845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 61846
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    if-eqz v0, :cond_1

    .line 61847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Xo;->onDestroy()V

    .line 61848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    .line 61849
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0I:Lcom/facebook/ads/redexgen/X/Rc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rc;->A05()V

    .line 61850
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/Yd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const-string v1, "yBcEH8sYDqTUUkxjXqOG2DCn3q2DEyX3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 61851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/Yd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yd;->A0L()V

    .line 61852
    :cond_3
    return-void
.end method

.method public final onPause()V
    .locals 6

    .line 61853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61854
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    .line 61855
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R0;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A38(Ljava/lang/String;Ljava/lang/String;)V

    .line 61856
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/R0;->A03:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A04:J

    sub-long/2addr v2, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/R0;->A03:J

    .line 61857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    if-eqz v0, :cond_0

    .line 61858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xo;->AEV(Z)V

    .line 61859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61860
    sget-object v3, Lcom/facebook/ads/redexgen/X/UZ;->A0E:Lcom/facebook/ads/redexgen/X/UZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    .line 61861
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Xo;->getCurrentClientToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61862
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    .line 61863
    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;->A02(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 61864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0D:Z

    .line 61865
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 61866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61867
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    .line 61868
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R0;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A39(Ljava/lang/String;Ljava/lang/String;)V

    .line 61869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A04:J

    .line 61870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    if-eqz v0, :cond_1

    .line 61871
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/R0;->A0M:[Ljava/lang/String;

    const-string v1, "WHwDulcP2dZca7YA0PmotSPySBaz7ZXD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/Xo;->AF0(Z)V

    .line 61872
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0D:Z

    if-eqz v0, :cond_1

    .line 61873
    sget-object v3, Lcom/facebook/ads/redexgen/X/UZ;->A0F:Lcom/facebook/ads/redexgen/X/UZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    .line 61874
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Xo;->getCurrentClientToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61875
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    .line 61876
    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;->A02(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 61877
    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 61878
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 61879
    .local v0, "adnwSavedState":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    if-eqz v0, :cond_0

    .line 61880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/Xo;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Xo;->AIB(Landroid/os/Bundle;)V

    .line 61881
    :cond_0
    const/16 v2, 0xa5

    const/16 v1, 0x18

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A01:I

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61882
    const/16 v2, 0xdb

    const/16 v1, 0x8

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0B:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61883
    const/16 v2, 0x4f

    const/16 v1, 0xb

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0C:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61884
    const/16 v2, 0xe3

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 61885
    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/WB;->A0A(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 61886
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 61887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61888
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    .line 61889
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R0;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3A(Ljava/lang/String;Ljava/lang/String;)V

    .line 61890
    iget v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A01:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 61891
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A0E:Lcom/facebook/ads/AudienceNetworkActivity;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xi;->A02(Landroid/app/Activity;ILcom/facebook/ads/redexgen/X/dL;)V

    .line 61892
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 61893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0J:Lcom/facebook/ads/redexgen/X/dL;

    .line 61894
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    .line 61895
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R0;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3B(Ljava/lang/String;Ljava/lang/String;)V

    .line 61896
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 61897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A0F:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 1

    .line 61898
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/R0;->A09()V

    .line 61899
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 61900
    return-void
.end method

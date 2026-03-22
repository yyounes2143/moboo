.class public final Lcom/facebook/ads/redexgen/X/R5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/content/Intent;

.field public final A01:Lcom/facebook/ads/redexgen/X/R0;

.field public final A02:Lcom/facebook/ads/redexgen/X/dL;

.field public final A03:Lcom/facebook/ads/redexgen/X/US;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1545
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MJXAzUwyiLvMzZCrP1QJf8uMs9b"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sHuNTXgsBnW3HGqskl7KH5QkikNWpABj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "q8u9vKEVkpk3dMxroB1EFzM5kwDKfJOq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eyGwnlQBA4bCraIcft5FxvFgN7f8TC5N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FmmRYKiwjJl3dX1FB2pV6kIWJpsNLC6h"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "flBitaWG3wpDSjkerYNuTkR3r5UhRox3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xkUQOvOGGj42jMnQjSDdoLzQvdQiYUba"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XqZ9VL6XKZ5Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R5;->A0M()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R0;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 62015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62016
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    .line 62017
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    .line 62018
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    .line 62019
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 62020
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/hy;
    .locals 6

    .line 62021
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/16 v2, 0x44

    const/16 v1, 0x12

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0L(III)Ljava/lang/String;

    move-result-object v4

    if-lt v5, v3, :cond_0

    .line 62022
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    const-class v0, Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    return-object v0

    .line 62023
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    sget-object v2, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62024
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const-string v1, "LmjecX6z1NXmevkMdudhCsYVgseeBlBL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hy;

    .line 62025
    return-object v0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/hw;
    .locals 5

    .line 62026
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/16 v2, 0x1a

    const/16 v1, 0x13

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0L(III)Ljava/lang/String;

    move-result-object v2

    if-lt v4, v3, :cond_0

    .line 62027
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    const-class v0, Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hw;

    return-object v0

    .line 62028
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/hw;

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/77;
    .locals 5

    .line 62029
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v2, 0x2

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0L(III)Ljava/lang/String;

    move-result-object v2

    if-lt v4, v3, :cond_0

    .line 62030
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    const-class v0, Lcom/facebook/ads/redexgen/X/77;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/77;

    return-object v0

    .line 62031
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    .line 62032
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/77;

    .line 62033
    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/73;
    .locals 5

    .line 62034
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/16 v2, 0x5f

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0L(III)Ljava/lang/String;

    move-result-object v2

    if-lt v4, v3, :cond_0

    .line 62035
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    const-class v0, Lcom/facebook/ads/redexgen/X/73;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/73;

    return-object v0

    .line 62036
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    .line 62037
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/73;

    .line 62038
    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/R5;)Lcom/facebook/ads/redexgen/X/R0;
    .locals 0

    .line 62039
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    return-object p0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/Xo;
    .locals 12

    .line 62040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62041
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    const/16 v2, 0x2d

    const/16 v1, 0x17

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62042
    .local v0, "clickDelayMs":Ljava/lang/String;
    new-instance v5, Lcom/facebook/ads/redexgen/X/6H;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v9, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    .line 62043
    const/16 v2, 0x10

    const/16 v1, 0xa

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62044
    if-nez v4, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0L(III)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sget-object v1, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const-string v1, "YY09SF1W0j6b6KfCSgRusx8TJPca7HgC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/6H;-><init>(Lcom/facebook/ads/redexgen/X/R0;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Ljava/lang/String;I)V

    .line 62045
    return-object v5

    .line 62046
    .end local v0    # "clickDelayMs":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v1, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/OD;-><init>(Lcom/facebook/ads/redexgen/X/R0;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;)V

    return-object v0
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/Lc;
    .locals 9

    .line 62047
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A02()Lcom/facebook/ads/redexgen/X/77;

    move-result-object v5

    .line 62048
    .local v8, "dataBundle":Lcom/facebook/ads/redexgen/X/hy;
    if-nez v5, :cond_0

    .line 62049
    const/4 v0, 0x0

    return-object v0

    .line 62050
    :cond_0
    new-instance v7, Lcom/facebook/ads/redexgen/X/LY;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/LY;-><init>()V

    .line 62051
    .local p0, "adBehaviour":Lcom/facebook/ads/redexgen/X/YY;
    invoke-direct {p0, v7, v5}, Lcom/facebook/ads/redexgen/X/R5;->A0K(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/cz;

    move-result-object v8

    .line 62052
    .local p1, "playableAdsView":Lcom/facebook/ads/redexgen/X/cz;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v4, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Lc;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/cz;)V

    return-object v1
.end method

.method private A07()Lcom/facebook/ads/redexgen/X/Lc;
    .locals 9

    .line 62053
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A03()Lcom/facebook/ads/redexgen/X/73;

    move-result-object v5

    .line 62054
    .local v8, "dataBundle":Lcom/facebook/ads/redexgen/X/73;
    if-nez v5, :cond_0

    .line 62055
    const/4 v0, 0x0

    return-object v0

    .line 62056
    :cond_0
    new-instance v7, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/LX;-><init>()V

    .line 62057
    .local p0, "adBehaviour":Lcom/facebook/ads/redexgen/X/YY;
    invoke-direct {p0, v7, v5}, Lcom/facebook/ads/redexgen/X/R5;->A0K(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/cz;

    move-result-object v8

    .line 62058
    .local p1, "playableAdsView":Lcom/facebook/ads/redexgen/X/cz;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v4, Lcom/facebook/ads/redexgen/X/6P;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/6P;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 62059
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Mo;->A1A()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Lc;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/cz;)V

    .line 62060
    return-object v1
.end method

.method private final A08()Lcom/facebook/ads/redexgen/X/Lb;
    .locals 3

    .line 62061
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Lb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Lb;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/R0;)V

    return-object v0
.end method

.method private A09(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/LZ;
    .locals 6

    .line 62062
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Lcom/facebook/ads/redexgen/X/fv;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/fv;-><init>(Lcom/facebook/ads/redexgen/X/R5;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/LZ;

    invoke-direct {v4, v5, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/LZ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YT;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 62063
    .local v0, "videoInterstitialView":Lcom/facebook/ads/redexgen/X/LZ;
    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/LZ;->A05(Landroid/view/View;)V

    .line 62064
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:Landroid/content/Intent;

    .line 62065
    const/16 v2, 0x78

    const/16 v1, 0x1b

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0L(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xc8

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62066
    .local v1, "videoProgressReportIntervalMs":I
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/LZ;->A04(I)V

    .line 62067
    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 62068
    return-object v4
.end method

.method private A0A()Lcom/facebook/ads/redexgen/X/5K;
    .locals 8

    .line 62069
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A02()Lcom/facebook/ads/redexgen/X/77;

    move-result-object v5

    .line 62070
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/hy;
    if-nez v5, :cond_0

    .line 62071
    const/4 v0, 0x0

    return-object v0

    .line 62072
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/5K;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v4, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    new-instance v6, Lcom/facebook/ads/redexgen/X/LY;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/LY;-><init>()V

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/5K;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/YY;I)V

    return-object v1
.end method

.method private A0B()Lcom/facebook/ads/redexgen/X/5K;
    .locals 8

    .line 62073
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A03()Lcom/facebook/ads/redexgen/X/73;

    move-result-object v5

    .line 62074
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/73;
    if-nez v5, :cond_0

    .line 62075
    const/4 v0, 0x0

    return-object v0

    .line 62076
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/5K;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v4, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    new-instance v6, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/LX;-><init>()V

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/5K;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/YY;I)V

    return-object v1
.end method

.method private A0C()Lcom/facebook/ads/redexgen/X/IG;
    .locals 6

    .line 62077
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A00()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v5

    .line 62078
    .local v0, "dataBundle":Lcom/facebook/ads/redexgen/X/hy;
    const/4 v1, 0x0

    if-nez v5, :cond_0

    .line 62079
    return-object v1

    .line 62080
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bu;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v4

    .line 62081
    .local v2, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/bt;
    if-nez v4, :cond_1

    .line 62082
    return-object v1

    .line 62083
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v2, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 62084
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IG;

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/facebook/ads/redexgen/X/IG;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/bt;Ljava/lang/String;)V

    .line 62085
    return-object v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Vb;)Lcom/facebook/ads/redexgen/X/Fy;
    .locals 8

    .line 62086
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A01()Lcom/facebook/ads/redexgen/X/hw;

    move-result-object v5

    .line 62087
    .local v7, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/hw;
    if-nez v5, :cond_0

    .line 62088
    const/4 v0, 0x0

    return-object v0

    .line 62089
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A04:Lcom/facebook/ads/redexgen/X/Vb;

    if-ne p1, v0, :cond_1

    .line 62090
    new-instance v3, Lcom/facebook/ads/redexgen/X/LY;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/LY;-><init>()V

    .line 62091
    .local v0, "adBehavior":Lcom/facebook/ads/redexgen/X/YY;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v7, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 62092
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/fw;
    .end local v0    # "adBehavior":Lcom/facebook/ads/redexgen/X/YY;
    .local p0, "adBehavior":Lcom/facebook/ads/redexgen/X/YY;
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/fw;
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Fy;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Fy;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hw;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;)V

    return-object v1

    .line 62093
    .end local v0
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/fw;
    :cond_1
    new-instance v3, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/LX;-><init>()V

    .line 62094
    .restart local v0    # "adBehavior":Lcom/facebook/ads/redexgen/X/YY;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v7, Lcom/facebook/ads/redexgen/X/6P;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/6P;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    goto :goto_0
.end method

.method private A0E()Lcom/facebook/ads/redexgen/X/4H;
    .locals 8

    .line 62095
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A02()Lcom/facebook/ads/redexgen/X/77;

    move-result-object v5

    .line 62096
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/77;
    if-nez v5, :cond_1

    .line 62097
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const-string v1, "TvLwsmu9uaa0faVP4fF8b7PGg31O8U7I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 62098
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/4H;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Lcom/facebook/ads/redexgen/X/LY;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/LY;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v7, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4H;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;)V

    return-object v1
.end method

.method private A0F()Lcom/facebook/ads/redexgen/X/3r;
    .locals 8

    .line 62099
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A02()Lcom/facebook/ads/redexgen/X/77;

    move-result-object v5

    .line 62100
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/hy;
    if-nez v5, :cond_0

    .line 62101
    const/4 v0, 0x0

    return-object v0

    .line 62102
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/3r;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Lcom/facebook/ads/redexgen/X/LY;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/LY;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v7, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/3r;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;)V

    return-object v1
.end method

.method private A0G()Lcom/facebook/ads/redexgen/X/3r;
    .locals 8

    .line 62103
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A03()Lcom/facebook/ads/redexgen/X/73;

    move-result-object v5

    .line 62104
    .local v7, "dataBundle":Lcom/facebook/ads/redexgen/X/73;
    if-nez v5, :cond_0

    .line 62105
    const/4 v0, 0x0

    return-object v0

    .line 62106
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/3r;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/LX;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v7, Lcom/facebook/ads/redexgen/X/6P;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/6P;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/3r;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;)V

    return-object v1
.end method

.method private A0H()Lcom/facebook/ads/redexgen/X/FL;
    .locals 8

    .line 62107
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A03()Lcom/facebook/ads/redexgen/X/73;

    move-result-object v4

    .line 62108
    .local v7, "videoDataBundle":Lcom/facebook/ads/redexgen/X/73;
    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 62109
    return-object v0

    .line 62110
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A03()Lcom/facebook/ads/redexgen/X/73;

    move-result-object v5

    .line 62111
    .local p0, "playableDataBundle":Lcom/facebook/ads/redexgen/X/73;
    if-nez v5, :cond_1

    .line 62112
    return-object v0

    .line 62113
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/FL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v6, Lcom/facebook/ads/redexgen/X/6P;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/6P;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/FL;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/R0;)V

    return-object v1
.end method

.method private A0I()Lcom/facebook/ads/redexgen/X/3q;
    .locals 7

    .line 62114
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A02()Lcom/facebook/ads/redexgen/X/77;

    move-result-object v6

    .line 62115
    .local v6, "dataBundle":Lcom/facebook/ads/redexgen/X/77;
    if-nez v6, :cond_0

    .line 62116
    const/4 v0, 0x0

    return-object v0

    .line 62117
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1G(Ljava/lang/String;)V

    .line 62118
    new-instance v1, Lcom/facebook/ads/redexgen/X/3q;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v5, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/3q;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/77;)V

    return-object v1
.end method

.method private A0J()Lcom/facebook/ads/redexgen/X/3q;
    .locals 7

    .line 62119
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A03()Lcom/facebook/ads/redexgen/X/73;

    move-result-object v6

    .line 62120
    .local v6, "dataBundle":Lcom/facebook/ads/redexgen/X/73;
    if-nez v6, :cond_0

    .line 62121
    const/4 v0, 0x0

    return-object v0

    .line 62122
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1G(Ljava/lang/String;)V

    .line 62123
    new-instance v1, Lcom/facebook/ads/redexgen/X/3q;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:Lcom/facebook/ads/redexgen/X/R0;

    new-instance v5, Lcom/facebook/ads/redexgen/X/fw;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/3q;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/73;)V

    return-object v1
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/cz;
    .locals 8

    .line 62124
    const/4 v1, 0x0

    .line 62125
    .local v0, "playableAdsView":Lcom/facebook/ads/redexgen/X/cz;
    move-object v3, p2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A07()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v4

    .line 62126
    .local v1, "playableAdData":Lcom/facebook/ads/redexgen/X/NB;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/NB;->A0M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62127
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 62128
    .local p1, "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x56

    const/16 v1, 0x9

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R5;->A0L(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/YY;->A8d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62129
    new-instance v1, Lcom/facebook/ads/redexgen/X/cz;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:Lcom/facebook/ads/redexgen/X/US;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/cz;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/NB;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/cx;Ljava/util/Map;)V

    .line 62130
    .end local p1    # "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/R5;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0M()V
    .locals 1

    const/16 v0, 0x93

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/R5;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x7ft
        0x4t
        0x1t
        0x3at
        0x1t
        0x4t
        0x11t
        0x4t
        0x3at
        0x7t
        0x10t
        0xbt
        0x1t
        0x9t
        0x0t
        0x2bt
        0x29t
        0x24t
        0x24t
        0x2dt
        0x3at
        0x1ct
        0x31t
        0x38t
        0x2dt
        0x77t
        0x7ct
        0x75t
        0x7dt
        0x7at
        0x71t
        0x70t
        0x55t
        0x70t
        0x50t
        0x75t
        0x60t
        0x75t
        0x56t
        0x61t
        0x7at
        0x70t
        0x78t
        0x71t
        0x23t
        0x2ct
        0x29t
        0x31t
        0x20t
        0x37t
        0x20t
        0x21t
        0x1at
        0x26t
        0x29t
        0x2ct
        0x26t
        0x2et
        0x1at
        0x21t
        0x20t
        0x29t
        0x24t
        0x3ct
        0x1at
        0x28t
        0x36t
        0x7ct
        0x73t
        0x66t
        0x7bt
        0x64t
        0x77t
        0x53t
        0x76t
        0x56t
        0x73t
        0x66t
        0x73t
        0x50t
        0x67t
        0x7ct
        0x76t
        0x7et
        0x77t
        0x6at
        0x76t
        0x7bt
        0x79t
        0x7ft
        0x77t
        0x7ft
        0x74t
        0x6et
        0x20t
        0x37t
        0x25t
        0x33t
        0x20t
        0x36t
        0x37t
        0x36t
        0x4t
        0x3bt
        0x36t
        0x37t
        0x3dt
        0x13t
        0x36t
        0x16t
        0x33t
        0x26t
        0x33t
        0x10t
        0x27t
        0x3ct
        0x36t
        0x3et
        0x37t
        0x16t
        0x9t
        0x4t
        0x5t
        0xft
        0x3ft
        0x14t
        0x9t
        0xdt
        0x5t
        0x3ft
        0x10t
        0xft
        0xct
        0xct
        0x9t
        0xet
        0x7t
        0x3ft
        0x9t
        0xet
        0x14t
        0x5t
        0x12t
        0x16t
        0x1t
        0xct
    .end array-data
.end method


# virtual methods
.method public final A0N(Lcom/facebook/ads/redexgen/X/Vb;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/Xo;
    .locals 4

    .line 62131
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 62132
    return-object v2

    .line 62133
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/R4;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vb;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 62134
    return-object v2

    .line 62135
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A0H()Lcom/facebook/ads/redexgen/X/FL;

    move-result-object v0

    return-object v0

    .line 62136
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A08()Lcom/facebook/ads/redexgen/X/Lb;

    move-result-object v0

    return-object v0

    .line 62137
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/R5;->A0D(Lcom/facebook/ads/redexgen/X/Vb;)Lcom/facebook/ads/redexgen/X/Fy;

    move-result-object v0

    return-object v0

    .line 62138
    :pswitch_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A0B()Lcom/facebook/ads/redexgen/X/5K;

    move-result-object v0

    return-object v0

    .line 62139
    :pswitch_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A0A()Lcom/facebook/ads/redexgen/X/5K;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const-string v1, "7AQwH6OZkLua7JLoKEhUfmskdEmJStMK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 62140
    :pswitch_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A0C()Lcom/facebook/ads/redexgen/X/IG;

    move-result-object v0

    return-object v0

    .line 62141
    :pswitch_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A06()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    return-object v0

    .line 62142
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A0I()Lcom/facebook/ads/redexgen/X/3q;

    move-result-object v0

    return-object v0

    .line 62143
    :pswitch_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A0E()Lcom/facebook/ads/redexgen/X/4H;

    move-result-object v0

    return-object v0

    .line 62144
    :pswitch_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A0F()Lcom/facebook/ads/redexgen/X/3r;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const-string v1, "IIJ0HXviRARge0yizoGTY0JUA2Nzjczv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/R5;->A05:[Ljava/lang/String;

    const-string v1, "UHMFNKnwuKHYyMbevaCPtufG1H9dhH1t"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "s6UgSHR7PtydXMVItCKPjBxPhDp7nABU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 62145
    :pswitch_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A05()Lcom/facebook/ads/redexgen/X/Xo;

    move-result-object v0

    return-object v0

    .line 62146
    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A07()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    return-object v0

    .line 62147
    :pswitch_c
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A0G()Lcom/facebook/ads/redexgen/X/3r;

    move-result-object v0

    return-object v0

    .line 62148
    :pswitch_d
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R5;->A0J()Lcom/facebook/ads/redexgen/X/3q;

    move-result-object v0

    return-object v0

    .line 62149
    :pswitch_e
    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/R5;->A09(Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/LZ;

    move-result-object v2

    :cond_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

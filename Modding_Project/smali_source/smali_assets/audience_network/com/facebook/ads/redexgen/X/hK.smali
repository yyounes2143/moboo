.class public final Lcom/facebook/ads/redexgen/X/hK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/VT;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6s;,
        Lcom/facebook/ads/redexgen/X/NX;,
        Lcom/facebook/ads/redexgen/X/hL;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/NX;

.field public A01:Lcom/facebook/ads/redexgen/X/TE;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/AdSize;

.field public final A07:Lcom/facebook/ads/redexgen/X/MU;

.field public final A08:Lcom/facebook/ads/redexgen/X/dL;

.field public final A09:Lcom/facebook/ads/redexgen/X/US;

.field public final A0A:Lcom/facebook/ads/redexgen/X/V6;

.field public final A0B:Lcom/facebook/ads/redexgen/X/VU;

.field public final A0C:Ljava/lang/Runnable;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2800
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gvO2SkJ6judPPNAAbU10EdMFrysfMOoq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C8fayNw08H03MAMa0MYSKK0pyo1qSvcR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tQ435k35SGtCPZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PU5xmRYaUesfDikXgdcM0c"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Sj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IzP0LuOvX3krWKzZjoX9w767Mf8waFqk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fiC8qpcDm8TluoxAfEpO8PomLrdxugFO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/hK;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/hK;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XR;->A02()V

    .line 2801
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/V6;Lcom/facebook/ads/AdSize;I)V
    .locals 2

    .line 84605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84606
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    .line 84607
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hK;->A0D:Ljava/lang/String;

    .line 84608
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/hK;->A0A:Lcom/facebook/ads/redexgen/X/V6;

    .line 84609
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/hK;->A06:Lcom/facebook/ads/AdSize;

    .line 84610
    iput p5, p0, Lcom/facebook/ads/redexgen/X/hK;->A04:I

    .line 84611
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VU;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A0B:Lcom/facebook/ads/redexgen/X/VU;

    .line 84612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A0B:Lcom/facebook/ads/redexgen/X/VU;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/VU;->A0R(Lcom/facebook/ads/redexgen/X/VT;)V

    .line 84613
    new-instance v0, Lcom/facebook/ads/redexgen/X/MU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/MU;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A07:Lcom/facebook/ads/redexgen/X/MU;

    .line 84614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A03:Z

    .line 84615
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A05:Landroid/os/Handler;

    .line 84616
    new-instance v0, Lcom/facebook/ads/redexgen/X/6s;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6s;-><init>(Lcom/facebook/ads/redexgen/X/hK;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A0C:Ljava/lang/Runnable;

    .line 84617
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A09:Lcom/facebook/ads/redexgen/X/US;

    .line 84618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 84619
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/hK;)Landroid/os/Handler;
    .locals 0

    .line 84620
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hK;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/hK;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 84621
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/hK;)Ljava/lang/Runnable;
    .locals 0

    .line 84622
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/hK;->A0C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/hK;->A0E:[B

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

.method private A04()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iN;",
            ">;"
        }
    .end annotation

    .line 84623
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hK;->A01:Lcom/facebook/ads/redexgen/X/TE;

    .line 84624
    .local v0, "currentPlacement":Lcom/facebook/ads/redexgen/X/TE;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/TE;->A04()Lcom/facebook/ads/redexgen/X/TC;

    move-result-object v5

    .line 84625
    .local v1, "placementAd":Lcom/facebook/ads/redexgen/X/TC;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/TE;->A02()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 84626
    .local v2, "validAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :goto_0
    if-eqz v5, :cond_1

    .line 84627
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/hK;->A07:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/MU;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/MP;

    move-result-object v4

    .line 84628
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/MP;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/MP;->A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v3, v0, :cond_0

    .line 84629
    new-instance v8, Lcom/facebook/ads/redexgen/X/NU;

    .line 84630
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/TC;->A04()Lorg/json/JSONObject;

    move-result-object v9

    .line 84631
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/hK;->A0D:Ljava/lang/String;

    .line 84632
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TF;->A0C()J

    move-result-wide v12

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;Ljava/lang/String;J)V

    .line 84633
    .local v10, "loadConfig":Lcom/facebook/ads/redexgen/X/NU;
    check-cast v4, Lcom/facebook/ads/redexgen/X/iN;

    .line 84634
    .local v4, "nativeAdapter":Lcom/facebook/ads/redexgen/X/iN;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/6v;

    invoke-direct {v6, p0, v1, v4}, Lcom/facebook/ads/redexgen/X/6v;-><init>(Lcom/facebook/ads/redexgen/X/hK;Ljava/util/List;Lcom/facebook/ads/redexgen/X/iN;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/hK;->A09:Lcom/facebook/ads/redexgen/X/US;

    .line 84635
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A0K()Lcom/facebook/ads/redexgen/X/S3;

    move-result-object v9

    .line 84636
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/iN;->A0L(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/Uo;)V

    .line 84637
    .end local v4    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/iN;
    .end local v10    # "loadConfig":Lcom/facebook/ads/redexgen/X/NU;
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/TE;->A04()Lcom/facebook/ads/redexgen/X/TC;

    move-result-object v5

    .line 84638
    .end local v3    # "adapter":Lcom/facebook/ads/redexgen/X/MP;
    goto :goto_0

    .line 84639
    :cond_1
    return-object v1
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hK;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        -0x2et
        -0x7dt
        -0x2dt
        -0x31t
        -0x3ct
        -0x3at
        -0x38t
        -0x30t
        -0x38t
        -0x2ft
        -0x29t
        -0x7dt
        -0x34t
        -0x2ft
        -0x7dt
        -0x2bt
        -0x38t
        -0x2at
        -0x2dt
        -0x2et
        -0x2ft
        -0x2at
        -0x38t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 84640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A03:Z

    .line 84641
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hK;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84642
    return-void
.end method

.method public final A07()V
    .locals 13

    .line 84643
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v5, 0x0

    new-instance v8, Lcom/facebook/ads/redexgen/X/VB;

    invoke-direct {v8, v0, v5, v5, v5}, Lcom/facebook/ads/redexgen/X/VB;-><init>(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/V6;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/V2; {:try_start_0 .. :try_end_0} :catch_0

    .line 84644
    .local v6, "bidPayload":Lcom/facebook/ads/redexgen/X/VB;
    new-instance v2, Lcom/facebook/ads/redexgen/X/VR;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/hK;->A0D:Ljava/lang/String;

    .line 84645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A06:Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/X1;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/X1;-><init>(II)V

    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/hK;->A0A:Lcom/facebook/ads/redexgen/X/V6;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/hK;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A08:Lcom/facebook/ads/redexgen/X/dL;

    .line 84646
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0N(Landroid/content/Context;)I

    move-result v0

    .line 84647
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X7;->A01(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/hK;->A02:Ljava/lang/String;

    new-instance v12, Lcom/facebook/ads/redexgen/X/hB;

    invoke-direct {v12}, Lcom/facebook/ads/redexgen/X/hB;-><init>()V

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/facebook/ads/redexgen/X/VR;-><init>(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/X1;Lcom/facebook/ads/redexgen/X/V6;ILcom/facebook/ads/redexgen/X/VB;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/TL;)V

    .line 84648
    .local v0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/VR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A0B:Lcom/facebook/ads/redexgen/X/VU;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/VU;->A0Q(Lcom/facebook/ads/redexgen/X/VR;)V

    .line 84649
    return-void

    .line 84650
    .end local v0    # "adEnvironmentData":Lcom/facebook/ads/redexgen/X/VR;
    .end local v6    # "bidPayload":Lcom/facebook/ads/redexgen/X/VB;
    :catch_0
    move-exception v0

    .line 84651
    .local v0, "e":Lcom/facebook/ads/redexgen/X/V2;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V1;->A02(Lcom/facebook/ads/redexgen/X/V2;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hK;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84652
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/NX;)V
    .locals 0

    .line 84653
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hK;->A00:Lcom/facebook/ads/redexgen/X/NX;

    .line 84654
    return-void
.end method

.method public final A09(Ljava/lang/String;)V
    .locals 0

    .line 84655
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hK;->A02:Ljava/lang/String;

    .line 84656
    return-void
.end method

.method public final A0A()Z
    .locals 1

    .line 84657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A01:Lcom/facebook/ads/redexgen/X/TE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A01:Lcom/facebook/ads/redexgen/X/TE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TE;->A0I()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADB(Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 4

    .line 84658
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A03:Z

    if-eqz v0, :cond_0

    .line 84659
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hK;->A05:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hK;->A0C:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1b7740

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84660
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A00:Lcom/facebook/ads/redexgen/X/NX;

    if-eqz v0, :cond_1

    .line 84661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A00:Lcom/facebook/ads/redexgen/X/NX;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/NX;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84662
    :cond_1
    return-void
.end method

.method public final AFO(Lcom/facebook/ads/redexgen/X/PW;)V
    .locals 7

    .line 84663
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PW;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v6

    .line 84664
    .local v0, "placement":Lcom/facebook/ads/redexgen/X/TE;
    if-eqz v6, :cond_5

    .line 84665
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A03:Z

    if-eqz v0, :cond_1

    .line 84666
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TF;->A0A()J

    move-result-wide v2

    .line 84667
    .local v1, "refreshInterval":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 84668
    const-wide/32 v2, 0x1b7740

    .line 84669
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hK;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84670
    .end local v1    # "refreshInterval":J
    :cond_1
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/hK;->A01:Lcom/facebook/ads/redexgen/X/TE;

    .line 84671
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hK;->A04()Ljava/util/List;

    move-result-object v4

    .line 84672
    .local v1, "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A00:Lcom/facebook/ads/redexgen/X/NX;

    if-eqz v0, :cond_4

    .line 84673
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/hK;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/hK;->A0F:[Ljava/lang/String;

    const-string v1, "Ma8ASQR7F1ZvPn5hHoXinNcVvjUetiuh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 84674
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/hK;->A00:Lcom/facebook/ads/redexgen/X/NX;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hK;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/NX;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84675
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 84676
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hK;->A00:Lcom/facebook/ads/redexgen/X/NX;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/NX;->AEJ(Ljava/util/List;)V

    .line 84677
    :cond_4
    return-void

    .line 84678
    .end local v1    # "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hK;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

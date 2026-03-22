.class public final Lcom/facebook/ads/redexgen/X/hO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6y;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/hO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6y;

.field public final synthetic A01:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/hO;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6y;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84734
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hO;->A01:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/hO;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x91

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hO;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x4et
        0x44t
        0x47t
        0x4et
        0x14t
        0x4ft
        0x12t
        0x4dt
        0x68t
        0x6dt
        0x7ct
        0x78t
        0x69t
        0x7et
        0x2ct
        0x65t
        0x7ft
        0x2ct
        0x62t
        0x79t
        0x60t
        0x60t
        0x2ct
        0x63t
        0x62t
        0x2ct
        0x60t
        0x63t
        0x6dt
        0x68t
        0x45t
        0x62t
        0x78t
        0x69t
        0x7et
        0x7ft
        0x78t
        0x65t
        0x78t
        0x65t
        0x6dt
        0x60t
        0x4dt
        0x68t
        0x3bt
        0x1ct
        0x6t
        0x17t
        0x0t
        0x1t
        0x6t
        0x1bt
        0x6t
        0x1bt
        0x13t
        0x1et
        0x52t
        0x1bt
        0x1ft
        0x2t
        0x0t
        0x17t
        0x1t
        0x1t
        0x1bt
        0x1dt
        0x1ct
        0x52t
        0x14t
        0x1bt
        0x0t
        0x17t
        0x16t
        0x3ft
        0x30t
        0x1t
        0x3ft
        0x3dt
        0x2at
        0x37t
        0x28t
        0x37t
        0x2at
        0x27t
        0x65t
        0x6at
        0x60t
        0x76t
        0x6bt
        0x6dt
        0x60t
        0x2at
        0x6dt
        0x6at
        0x70t
        0x61t
        0x6at
        0x70t
        0x2at
        0x65t
        0x67t
        0x70t
        0x6dt
        0x6bt
        0x6at
        0x2at
        0x52t
        0x4dt
        0x41t
        0x53t
        0x22t
        0x33t
        0x2at
        0x6dt
        0x6ct
        0x4bt
        0x6ct
        0x76t
        0x67t
        0x70t
        0x71t
        0x76t
        0x6bt
        0x76t
        0x6bt
        0x63t
        0x6et
        0x4et
        0x6dt
        0x65t
        0x65t
        0x6bt
        0x6ct
        0x65t
        0x4bt
        0x6ft
        0x72t
        0x70t
        0x67t
        0x71t
        0x71t
        0x6bt
        0x6dt
        0x6ct
    .end array-data
.end method


# virtual methods
.method public final ADY(Lcom/facebook/ads/redexgen/X/iS;Ljava/lang/String;Z)V
    .locals 6

    .line 84735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0C()V

    .line 84736
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 84737
    .local v0, "clickUrlDefined":Z
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 84738
    :try_start_0
    const/16 v2, 0x55

    const/16 v1, 0x1a

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hO;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84739
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WB;->A0D(Lcom/facebook/ads/redexgen/X/dL;Landroid/content/Intent;)Z

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/W9; {:try_start_0 .. :try_end_0} :catch_0

    .line 84741
    :catch_0
    move-exception v1

    .line 84742
    .local v1, "e":Lcom/facebook/ads/redexgen/X/W9;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/W9;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/W9;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 84743
    .local v2, "exceptionToLog":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84744
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A04:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 84745
    const/16 v2, 0x4a

    const/16 v1, 0xb

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hO;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 84746
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/W9;
    .end local v2    # "exceptionToLog":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public final ADZ(Lcom/facebook/ads/redexgen/X/iS;)V
    .locals 1

    .line 84747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A04()V

    .line 84748
    return-void
.end method

.method public final ADa(Lcom/facebook/ads/redexgen/X/iS;)V
    .locals 1

    .line 84749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A05()V

    .line 84750
    return-void
.end method

.method public final ADb(Lcom/facebook/ads/redexgen/X/iS;)V
    .locals 6

    .line 84751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    if-eq p1, v0, :cond_0

    .line 84752
    return-void

    .line 84753
    :cond_0
    if-nez p1, :cond_1

    .line 84754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84755
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0X:I

    const/16 v2, 0x8

    const/16 v1, 0x25

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hO;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 84756
    const/16 v2, 0x6f

    const/4 v1, 0x3

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hO;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 84757
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/hO;->ADc(Lcom/facebook/ads/redexgen/X/iS;Lcom/facebook/ads/AdError;)V

    .line 84758
    return-void

    .line 84759
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0H()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    .line 84761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6y;->A01(Lcom/facebook/ads/redexgen/X/6y;)V

    .line 84762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/MQ;->A0F(Lcom/facebook/ads/redexgen/X/MP;)V

    .line 84763
    return-void
.end method

.method public final ADc(Lcom/facebook/ads/redexgen/X/iS;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 84764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    if-eq p1, v0, :cond_0

    .line 84765
    return-void

    .line 84766
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0H()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/hQ;->A0Q(Lcom/facebook/ads/redexgen/X/MP;)V

    .line 84768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 84769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/V1;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84770
    return-void
.end method

.method public final ADd(Lcom/facebook/ads/redexgen/X/iS;)V
    .locals 5

    const/16 v2, 0x2d

    const/16 v1, 0x1d

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hO;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hO;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x72

    const/16 v1, 0x1f

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hO;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0D()V

    .line 84772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0O()V

    .line 84773
    return-void
.end method

.method public final ADe()V
    .locals 1

    .line 84774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A08()V

    .line 84775
    return-void
.end method

.method public final ADf()V
    .locals 1

    .line 84776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A06()V

    .line 84777
    return-void
.end method

.method public final ADg()V
    .locals 1

    .line 84778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A07()V

    .line 84779
    return-void
.end method

.method public final onInterstitialActivityDestroyed()V
    .locals 1

    .line 84780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hO;->A00:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MQ;->A02()V

    .line 84781
    return-void
.end method

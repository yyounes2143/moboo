.class public final Lcom/facebook/ads/redexgen/X/h4;
.super Lcom/facebook/ads/redexgen/X/MQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/gz;->A0G(Ljava/util/EnumSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gz;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2795
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "swComlxz6aoGHqKS8LOj1g5iAOstdInC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iLoXwxITRpbgZFbT1koR1uJW4vvDXY2W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MpkXHfR6HdYIg9t449R"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HQI6v11U6roDlbOuDHGyMjhCWVrAbgmk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qsbQ14vrFuO8q1N0nwgFIOsRNgh3HWyt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NXqrvE65RyYHWICx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "E9yzS8MfEszoKvwo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "osh9YHk0bwFUuMRHqHbnPk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/h4;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gz;)V
    .locals 0

    .line 84148
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MQ;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/h4;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/h4;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x61t
        0x70t
        0x69t
        0x2ft
        0x23t
        0x22t
        0x38t
        0x3et
        0x23t
        0x20t
        0x20t
        0x29t
        0x3et
        0x6ct
        0x25t
        0x3ft
        0x6ct
        0x22t
        0x39t
        0x20t
        0x20t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 84149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A01(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84150
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A0C(Lcom/facebook/ads/redexgen/X/gz;Z)Z

    .line 84151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialActivityDestroyed()V

    .line 84152
    :cond_0
    return-void
.end method

.method public final A04()V
    .locals 2

    .line 84153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A01(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84154
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A0C(Lcom/facebook/ads/redexgen/X/gz;Z)Z

    .line 84155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 84156
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A26(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/h5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/h5;-><init>(Lcom/facebook/ads/redexgen/X/h4;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0S(Lcom/facebook/ads/redexgen/X/MQ;)V

    .line 84158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0N()V

    .line 84159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0K()V

    .line 84160
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A07(Lcom/facebook/ads/redexgen/X/gz;Lcom/facebook/ads/redexgen/X/6y;)Lcom/facebook/ads/redexgen/X/6y;

    .line 84161
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    .line 84162
    :goto_0
    return-void

    .line 84163
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A01(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto :goto_0
.end method

.method public final A05()V
    .locals 2

    .line 84164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    .line 84165
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 84166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdServerFailed()V

    .line 84167
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 84168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdServerSucceeded()V

    .line 84169
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 84170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onRewardedAdCompleted()V

    .line 84171
    return-void
.end method

.method public final A0C()V
    .locals 2

    .line 84172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3C()V

    .line 84173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 84174
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 84175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 84176
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 0

    .line 84177
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/MP;)V
    .locals 7

    .line 84178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 84180
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0N:I

    const/4 v2, 0x3

    const/16 v1, 0x12

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/h4;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 84181
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/h4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 84182
    return-void

    .line 84183
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/gz;->A0B(Lcom/facebook/ads/redexgen/X/gz;Z)Z

    .line 84184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6y;->A0I()Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A05(Lcom/facebook/ads/redexgen/X/gz;Lcom/facebook/ads/redexgen/X/Mo;)Lcom/facebook/ads/redexgen/X/Mo;

    .line 84185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A04(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/hy;

    if-eqz v0, :cond_6

    .line 84186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A04(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/Mo;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/hy;

    .line 84187
    .local v0, "adDataBundle":Lcom/facebook/ads/redexgen/X/hy;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A1x()I

    move-result v0

    if-lez v0, :cond_1

    .line 84188
    new-instance v5, Lcom/facebook/ads/redexgen/X/WR;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/WR;-><init>()V

    .line 84189
    .local v2, "chainer":Lcom/facebook/ads/redexgen/X/WR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 84190
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A08()Ljava/lang/String;

    move-result-object v1

    .line 84191
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A1x()I

    move-result v0

    .line 84192
    invoke-virtual {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A09(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v5, v0, v4}, Lcom/facebook/ads/redexgen/X/WR;->A08(Lcom/facebook/ads/redexgen/X/dL;Z)V

    .line 84194
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 84195
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A0A()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 84196
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A08()Ljava/lang/String;

    move-result-object v0

    .line 84197
    invoke-virtual {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A06(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    .line 84198
    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/gz;->A02(Lcom/facebook/ads/redexgen/X/gz;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;

    .line 84199
    .end local v2    # "chainer":Lcom/facebook/ads/redexgen/X/WR;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    sget-object v1, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    const-string v1, "23I4hcZMgJ395X2lYna8PMjzW0ozt3hz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/gz;->A01(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84200
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/hy;->A2A(Z)V

    .line 84201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 84202
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A01(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    .line 84203
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nd;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/Nd;-><init>(Lcom/facebook/ads/redexgen/X/h4;Lcom/facebook/ads/redexgen/X/hy;)V

    .line 84204
    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 84205
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A0B()Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withCacheFlags(Ljava/util/EnumSet;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 84206
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A03()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    .line 84207
    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v1

    .line 84208
    .local v1, "loadAdConfig":Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A01(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    .line 84209
    .end local v1    # "loadAdConfig":Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;
    :goto_1
    return-void

    .line 84210
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    sget-object v2, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    const-string v1, "joZPUUFug9Ts"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_1

    .line 84211
    :cond_4
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    sget-object v1, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    const-string v1, "alFbtn3b1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A08(Lcom/facebook/ads/redexgen/X/dL;Z)V

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    const-string v1, "OkLAbmcEeyte5Vfo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zgaU15rF2mVDrexS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A08(Lcom/facebook/ads/redexgen/X/dL;Z)V

    goto/16 :goto_0

    .line 84212
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/h4;->A02:[Ljava/lang/String;

    const-string v1, "JHAXxmwzHKs3NajX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "FHZeNyejFCAXh3Vz"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto/16 :goto_1
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 5

    .line 84213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gz;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 84214
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 84215
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A00(Lcom/facebook/ads/redexgen/X/gz;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v2

    .line 84216
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 84217
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V1;->A04()Ljava/lang/String;

    move-result-object v0

    .line 84218
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 84219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 84220
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WT;->A00(Lcom/facebook/ads/redexgen/X/V1;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 84221
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 84222
    return-void
.end method

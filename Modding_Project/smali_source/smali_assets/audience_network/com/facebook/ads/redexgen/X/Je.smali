.class public final Lcom/facebook/ads/redexgen/X/Je;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZY;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JU;->A0f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JU;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Je;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JU;)V
    .locals 0

    .line 46014
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Je;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x68

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

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Je;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x49t
        0x47t
        0x39t
        0x46t
        0x33t
        0x42t
        0x35t
        0x4at
        0x3dt
        0x3bt
        0x35t
        0x48t
        0x3dt
        0x43t
        0x42t
        0x33t
        0x3dt
        0x35t
        0x36t
    .end array-data
.end method


# virtual methods
.method public final AES(Ljava/lang/String;)V
    .locals 2

    .line 46015
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JU;->A0t(Lcom/facebook/ads/redexgen/X/JU;Z)Z

    .line 46016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0D(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 46017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0D(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 46018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0A(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0E(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0A(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0y()Ljava/lang/String;

    move-result-object v1

    .line 46020
    .local v0, "webInstallJS":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0E(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/LJ;->loadUrl(Ljava/lang/String;)V

    .line 46022
    .end local v0    # "webInstallJS":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final AEU(Ljava/lang/String;)V
    .locals 4

    .line 46023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/JU;->A0t(Lcom/facebook/ads/redexgen/X/JU;Z)Z

    .line 46024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0D(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 46025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0C(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/ZO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZO;->setUrl(Ljava/lang/String;)V

    .line 46026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0p(Lcom/facebook/ads/redexgen/X/JU;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A02(Lcom/facebook/ads/redexgen/X/JU;)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 46027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/JU;->A0u(Lcom/facebook/ads/redexgen/X/JU;Z)Z

    .line 46028
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/JU;->A0c(Lcom/facebook/ads/redexgen/X/JU;Ljava/lang/String;)V

    .line 46029
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A03(Lcom/facebook/ads/redexgen/X/JU;)I

    .line 46030
    return-void
.end method

.method public final AEq(I)V
    .locals 1

    .line 46031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0o(Lcom/facebook/ads/redexgen/X/JU;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0D(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 46033
    :cond_0
    return-void
.end method

.method public final AEt(Ljava/lang/String;)V
    .locals 1

    .line 46034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0C(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/ZO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZO;->setTitle(Ljava/lang/String;)V

    .line 46035
    return-void
.end method

.method public final AEw()V
    .locals 2

    .line 46036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0F(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v0

    .line 46037
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    .line 46038
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->ACf(I)V

    .line 46039
    return-void
.end method

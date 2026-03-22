.class public final Lcom/facebook/ads/redexgen/X/J8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZY;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Is;->A0j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Is;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 789
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Lf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nmAxyBcQYqE4UmHMsUF1rAa8zTrMAPgx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yXHjwHYuNIdrzaXYLvaZZ8rDuk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9P19JGz6dEYaA5InwGx6w36V1Sjc1fgT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Uaeemoya7byMjdbMYqkdDOMCW0kva5u1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "a9sExJmhm07IJOfFlJQHVREgKDfvTtqT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zS9IM7X0AIqJ7SZD2m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JScTq5ptQGF6W5ukeGazDvn9iL3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/J8;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/J8;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Is;)V
    .locals 0

    .line 43328
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/J8;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xf

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/J8;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1dt
        -0x1ft
        -0x2dt
        -0x20t
        -0x33t
        -0x24t
        -0x31t
        -0x1ct
        -0x29t
        -0x2bt
        -0x31t
        -0x1et
        -0x29t
        -0x23t
        -0x24t
        -0x33t
        -0x29t
        -0x31t
        -0x30t
    .end array-data
.end method


# virtual methods
.method public final AES(Ljava/lang/String;)V
    .locals 2

    .line 43329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Is;->A13(Lcom/facebook/ads/redexgen/X/Is;Z)Z

    .line 43330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0D(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 43331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0D(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 43332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0A(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0E(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0A(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0y()Ljava/lang/String;

    move-result-object v1

    .line 43334
    .local v0, "webInstallJS":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0E(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/LJ;->loadUrl(Ljava/lang/String;)V

    .line 43336
    .end local v0    # "webInstallJS":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final AEU(Ljava/lang/String;)V
    .locals 4

    .line 43337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Is;->A13(Lcom/facebook/ads/redexgen/X/Is;Z)Z

    .line 43338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0D(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 43339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0C(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ZH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZH;->setUrl(Ljava/lang/String;)V

    .line 43340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A10(Lcom/facebook/ads/redexgen/X/Is;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A01(Lcom/facebook/ads/redexgen/X/Is;)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 43341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Is;->A14(Lcom/facebook/ads/redexgen/X/Is;Z)Z

    .line 43342
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    sget-object v2, Lcom/facebook/ads/redexgen/X/J8;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/J8;->A02:[Ljava/lang/String;

    const-string v1, "wX256yuF2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Is;->A0f(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;)V

    .line 43343
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A02(Lcom/facebook/ads/redexgen/X/Is;)I

    .line 43344
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEq(I)V
    .locals 1

    .line 43345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0z(Lcom/facebook/ads/redexgen/X/Is;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0D(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZP;->setProgress(I)V

    .line 43347
    :cond_0
    return-void
.end method

.method public final AEt(Ljava/lang/String;)V
    .locals 1

    .line 43348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0C(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ZH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZH;->setTitle(Ljava/lang/String;)V

    .line 43349
    return-void
.end method

.method public final AEw()V
    .locals 2

    .line 43350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0H(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v0

    .line 43351
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    .line 43352
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->ACf(I)V

    .line 43353
    return-void
.end method

.class public abstract Lcom/facebook/ads/redexgen/X/Ir;
.super Lcom/facebook/ads/redexgen/X/ae;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bW;,
        Lcom/facebook/ads/redexgen/X/bX;,
        Lcom/facebook/ads/redexgen/X/ba;,
        Lcom/facebook/ads/redexgen/X/bZ;,
        Lcom/facebook/ads/redexgen/X/bY;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ir;->A0B()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Z)V
    .locals 2

    .line 42348
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ae;-><init>(Lcom/facebook/ads/redexgen/X/ai;Z)V

    .line 42349
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42350
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42351
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 42352
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/aQ;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aQ;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 42353
    :cond_1
    return-void
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ir;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ir;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6at
        0x6ft
        0x6ft
        0x6et
        0x7ft
        0x6at
        0x62t
        0x67t
        0x78t
    .end array-data
.end method


# virtual methods
.method public final A1O()V
    .locals 2

    .line 42354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 42355
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 42357
    :cond_0
    return-void
.end method

.method public abstract A1P()V
.end method

.method public abstract A1Q()V
.end method

.method public abstract A1R()V
.end method

.method public abstract A1S()Z
.end method

.method public abstract A1T()Z
.end method

.method public getCtaButton()Lcom/facebook/ads/redexgen/X/KE;
    .locals 1

    .line 42358
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    return-object v0
.end method

.method public setAdDetailsClickListener(Lcom/facebook/ads/redexgen/X/Zv;)V
    .locals 4

    .line 42359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 42360
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v3

    .line 42361
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/aV;->A03(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/aU;

    move-result-object v0

    .line 42362
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42363
    :cond_0
    return-void
.end method

.method public setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/cn;)V
    .locals 0

    .line 42364
    return-void
.end method

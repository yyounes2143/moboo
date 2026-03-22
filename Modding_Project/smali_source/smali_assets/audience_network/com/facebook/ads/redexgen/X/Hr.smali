.class public abstract Lcom/facebook/ads/redexgen/X/Hr;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wf;


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:I


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Z

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/eW;

.field public final A04:Z

.field public final A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/hy;

.field public final A07:Lcom/facebook/ads/redexgen/X/dL;

.field public final A08:Lcom/facebook/ads/redexgen/X/US;

.field public final A09:Lcom/facebook/ads/redexgen/X/Wh;

.field public final A0A:Lcom/facebook/ads/redexgen/X/XH;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A0C:Lcom/facebook/ads/redexgen/X/YY;

.field public final A0D:Lcom/facebook/ads/redexgen/X/eX;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 759
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uUMDphsbcltlMAasrXzhzXIIsD27sBrh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kD4ASPr1mkkPPQg7686pKphnCznMXNdE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3u4w9tHTXiQc09zCQQwrpogVyGpuea0B"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uLxjLzdSNqmjg5WlrsUTBNxe2IHJHDsH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sowIyJkgs7pChNHWV216bYY5IvqkL5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "woZqrf3JBfr8DagdWcXdOyEt75sBOiDm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mZPGIv6MosabarlDevuwzM4J02qRjqBR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rZe00TaCIEKWr55DYJNI366SEGcMY1oV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hr;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hr;->A17()V

    const/high16 v1, 0x42a00000    # 80.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Hr;->A0G:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;IZZLcom/facebook/ads/redexgen/X/Xn;I)V
    .locals 3

    .line 39553
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39554
    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0A:Lcom/facebook/ads/redexgen/X/XH;

    .line 39555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A01:Z

    .line 39556
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hr;->A16(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Ljava/lang/String;

    .line 39557
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Hs;-><init>(Lcom/facebook/ads/redexgen/X/Hr;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A03:Lcom/facebook/ads/redexgen/X/eW;

    .line 39558
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Hr;->A02:I

    .line 39559
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 39560
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/Hr;->A05:Z

    .line 39561
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/Hr;->A04:Z

    .line 39562
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0B:Lcom/facebook/ads/redexgen/X/Xn;

    .line 39563
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0C:Lcom/facebook/ads/redexgen/X/YY;

    .line 39564
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 39565
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Hr;->A08:Lcom/facebook/ads/redexgen/X/US;

    .line 39566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A03:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/eX;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    .line 39567
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    .line 39568
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Mo;->A0i()I

    move-result v0

    .line 39569
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0W(I)V

    .line 39570
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Mo;->A0j()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0X(I)V

    .line 39571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 39572
    invoke-static {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/Wh;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Wf;)Lcom/facebook/ads/redexgen/X/Wh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    .line 39573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39574
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A02:I

    invoke-static {v0, p9}, Lcom/facebook/ads/redexgen/X/Hr;->A15(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Ljava/lang/String;

    .line 39575
    :cond_0
    return-void
.end method

.method public static synthetic A14(Lcom/facebook/ads/redexgen/X/Hr;)I
    .locals 0

    .line 39576
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A02:I

    return p0
.end method

.method public static A15(II)Ljava/lang/String;
    .locals 4

    .line 39577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hr;->A16(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, p0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hr;->A16(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A16(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hr;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A17()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hr;->A0E:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hr;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hr;->A0F:[Ljava/lang/String;

    const-string v1, "lGg0879wdsNhw7V1Qtd20OQ8gEXobd5O"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "a2lydBkKvgM6UKG9QoQR6B5cBx9Kev1F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x5ft
        0x10t
        0x19t
        0x5ft
        0x5t
        0x20t
        0x64t
    .end array-data
.end method

.method public static synthetic A18(Lcom/facebook/ads/redexgen/X/Hr;)Z
    .locals 0

    .line 39578
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A04:Z

    return p0
.end method

.method public static synthetic A19(Lcom/facebook/ads/redexgen/X/Hr;)Z
    .locals 0

    .line 39579
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A05:Z

    return p0
.end method


# virtual methods
.method public abstract A1A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
.end method

.method public A1B()V
    .locals 1

    .line 39580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wh;->A03()V

    .line 39581
    return-void
.end method

.method public final A1C()V
    .locals 1

    .line 39582
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A01:Z

    if-nez v0, :cond_0

    .line 39583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 39584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A01:Z

    .line 39585
    :cond_0
    return-void
.end method

.method public abstract A1D()V
.end method

.method public abstract A1E()V
.end method

.method public A1F(Z)V
    .locals 0

    .line 39586
    return-void
.end method

.method public abstract A1G(Z)V
.end method

.method public abstract A1H(Z)V
.end method

.method public abstract A1I()Z
.end method

.method public abstract A1J()Z
.end method

.method public abstract A1K()Z
.end method

.method public getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;
    .locals 1

    .line 39587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    return-object v0
.end method

.method public getAdViewabilityChecker()Lcom/facebook/ads/redexgen/X/eX;
    .locals 1

    .line 39588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    return-object v0
.end method

.method public abstract getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/cR;
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/XH;
    .locals 1

    .line 39589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0A:Lcom/facebook/ads/redexgen/X/XH;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 39590
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 39591
    return-void
.end method

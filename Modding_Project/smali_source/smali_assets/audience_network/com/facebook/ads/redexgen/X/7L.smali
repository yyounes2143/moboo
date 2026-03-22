.class public final Lcom/facebook/ads/redexgen/X/7L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/id;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NativeViewability",
        "Logger:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/id;"
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MX;

.field public A01:Lcom/facebook/ads/redexgen/X/MY;

.field public A02:Lcom/facebook/ads/redexgen/X/iE;

.field public A03:Lcom/facebook/ads/redexgen/X/78;

.field public A04:Lcom/facebook/ads/redexgen/X/6M;

.field public A05:Lcom/facebook/ads/redexgen/X/US;

.field public A06:Lcom/facebook/ads/redexgen/X/V4;

.field public A07:Lcom/facebook/ads/redexgen/X/XH;

.field public A08:Lcom/facebook/ads/redexgen/X/Zh;

.field public A09:Lcom/facebook/ads/redexgen/X/Ki;

.field public A0A:Lcom/facebook/ads/redexgen/X/5G;

.field public A0B:Lcom/facebook/ads/redexgen/X/eW;

.field public A0C:Lcom/facebook/ads/redexgen/X/eX;

.field public A0D:Ljava/lang/Boolean;

.field public A0E:Ljava/lang/String;

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public final A0I:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 429
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NhwOmA8H17maQr2Thm3XPPVG1xwEsLhZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rranxCubAcBFDRhPr2LDrxoK3htxcyeL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LmhV8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZLGOK7uKxyyp5W3sNEqoBEODv8zXcPE1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dNK0bBZMrDk2YJmjrhSzlk1RMTFmUAsD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "q33l17MPfjO0fzYSahPh7EE95Ux5x03H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4VfBn9Mh4W5rafl7A4va0uDeREUgOp63"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NLrbv196ww605txiYhOndsfSQjY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7L;->A0B()V

    const-class v0, Lcom/facebook/ads/redexgen/X/7L;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7L;->A0L:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21358
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21359
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0I:Ljava/lang/String;

    .line 21360
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A0F:Z

    .line 21361
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A0G:Z

    .line 21362
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A0H:Z

    .line 21363
    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A07:Lcom/facebook/ads/redexgen/X/XH;

    .line 21364
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0D:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/MX;
    .locals 0

    .line 21365
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Lcom/facebook/ads/redexgen/X/MX;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/iE;
    .locals 0

    .line 21366
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A02:Lcom/facebook/ads/redexgen/X/iE;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;
    .locals 0

    .line 21367
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;
    .locals 0

    .line 21368
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/US;
    .locals 0

    .line 21369
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A05:Lcom/facebook/ads/redexgen/X/US;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/XH;
    .locals 0

    .line 21370
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A07:Lcom/facebook/ads/redexgen/X/XH;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/eX;
    .locals 0

    .line 21371
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0C:Lcom/facebook/ads/redexgen/X/eX;

    return-object p0
.end method

.method public static synthetic A07()Ljava/lang/String;
    .locals 1

    .line 21372
    sget-object v0, Lcom/facebook/ads/redexgen/X/7L;->A0L:Ljava/lang/String;

    return-object v0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7L;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/7L;)Ljava/lang/String;
    .locals 0

    .line 21373
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0I:Ljava/lang/String;

    return-object p0
.end method

.method private A0A()V
    .locals 4

    .line 21374
    .local v2, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Lcom/facebook/ads/redexgen/X/MX;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    .line 21375
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Lcom/facebook/ads/redexgen/X/MX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/MX;->ACc(Lcom/facebook/ads/redexgen/X/id;Landroid/view/View;)V

    .line 21377
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Lcom/facebook/ads/redexgen/X/MX;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/7L;->A0F:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const-string v1, "pcQhCrMOoUvf1wSUiS8eXhj7G6bioSrh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "JWZBC7ZhFf7k7YrTz5pa22tV9NT1Mc4w"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0G:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0H:Z

    if-nez v0, :cond_2

    .line 21378
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Lcom/facebook/ads/redexgen/X/MX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const-string v1, "irPj8aYnTZH6GsdLYSbTyVfXBLXHQnPh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    invoke-interface {v3, p0, v0}, Lcom/facebook/ads/redexgen/X/MX;->ACc(Lcom/facebook/ads/redexgen/X/id;Landroid/view/View;)V

    .line 21379
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Lcom/facebook/ads/redexgen/X/MX;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A4G(Z)V

    .line 21380
    return-void

    .line 21381
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const-string v1, "5PA9hoTjlgD01Tr6eTkR8jxCvDfXc2RO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    invoke-interface {v3, p0, v0}, Lcom/facebook/ads/redexgen/X/MX;->ACc(Lcom/facebook/ads/redexgen/X/id;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7L;->A0J:[B

    return-void

    :array_0
    .array-data 1
        0x1ct
        0x28t
        0x26t
        -0x19t
        0x1ft
        0x1at
        0x1ct
        0x1et
        0x1bt
        0x28t
        0x28t
        0x24t
        -0x19t
        0x1at
        0x1dt
        0x2ct
        -0x19t
        0x1bt
        0x1at
        0x27t
        0x27t
        0x1et
        0x2bt
        -0x19t
        0x1ct
        0x25t
        0x22t
        0x1ct
        0x24t
        0x1et
        0x1dt
        -0xft
        -0x1et
        -0xbt
        -0xft
        -0x54t
        -0x1bt
        -0xft
        -0x16t
        -0x17t
        -0x15t
        -0x16t
        -0x24t
        -0x5dt
        -0x52t
    .end array-data
.end method

.method private A0C(ILcom/facebook/ads/redexgen/X/TF;)V
    .locals 11

    .line 21382
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    new-instance v6, Lcom/facebook/ads/redexgen/X/iZ;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/iZ;-><init>(Lcom/facebook/ads/redexgen/X/7L;)V

    .line 21383
    .local v3, "nativeDSLListener":Lcom/facebook/ads/redexgen/X/bi;
    new-instance v3, Lcom/facebook/ads/redexgen/X/5G;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7L;->A05:Lcom/facebook/ads/redexgen/X/US;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/7L;->A07:Lcom/facebook/ads/redexgen/X/XH;

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7L;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/5G;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/bi;Lcom/facebook/ads/redexgen/X/hy;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/XH;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/7L;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    .line 21384
    new-instance v0, Lcom/facebook/ads/redexgen/X/iU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/iU;-><init>(Lcom/facebook/ads/redexgen/X/7L;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0B:Lcom/facebook/ads/redexgen/X/eW;

    .line 21385
    new-instance v1, Lcom/facebook/ads/redexgen/X/eX;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7L;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    .line 21386
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/TF;->A04()I

    move-result v3

    .line 21387
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/TF;->A09()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0B:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;IIZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A0C:Lcom/facebook/ads/redexgen/X/eX;

    .line 21388
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A0C:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    .line 21389
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0i()I

    move-result v0

    .line 21390
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0W(I)V

    .line 21391
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A0C:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0j()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0X(I)V

    .line 21392
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->setVisibility(I)V

    .line 21393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->getResources()Landroid/content/res/Resources;

    .line 21394
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7L;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5G;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->AJS()V

    .line 21396
    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/7L;)V
    .locals 0

    .line 21397
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7L;->A0A()V

    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/7L;ILcom/facebook/ads/redexgen/X/TF;)V
    .locals 0

    .line 21398
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7L;->A0C(ILcom/facebook/ads/redexgen/X/TF;)V

    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/TF;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/V4;)V
    .locals 11

    .line 21399
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0G:Z

    .line 21400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/iG;->A00(Lcom/facebook/ads/redexgen/X/6M;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/iG;

    move-result-object v3

    .line 21401
    .local v0, "dataModel":Lcom/facebook/ads/redexgen/X/iG;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iG;->A7G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0E:Ljava/lang/String;

    .line 21402
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A05:Lcom/facebook/ads/redexgen/X/US;

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/ML;->A06(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MK;Lcom/facebook/ads/redexgen/X/US;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A4u()V

    .line 21404
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Lcom/facebook/ads/redexgen/X/MX;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/MX;->ADj(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/V1;)V

    .line 21405
    return-void

    .line 21406
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/7M;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/7M;-><init>(Lcom/facebook/ads/redexgen/X/7L;Lcom/facebook/ads/redexgen/X/iG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A08:Lcom/facebook/ads/redexgen/X/Zh;

    .line 21407
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A08:Lcom/facebook/ads/redexgen/X/Zh;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21408
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TF;->A04()I

    move-result v2

    .line 21409
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->A7G()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ki;

    invoke-direct {v0, v5, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/Ki;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    .line 21410
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    .line 21411
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TF;->A07()I

    move-result v1

    .line 21412
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TF;->A08()I

    move-result v0

    .line 21413
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ki;->A0L(II)V

    .line 21414
    new-instance v9, Lcom/facebook/ads/redexgen/X/iT;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/iT;-><init>(Lcom/facebook/ads/redexgen/X/7L;)V

    .line 21415
    .local v9, "impressionHelper":Lcom/facebook/ads/redexgen/X/MS;
    new-instance v4, Lcom/facebook/ads/redexgen/X/iE;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/7L;->A05:Lcom/facebook/ads/redexgen/X/US;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    .line 21416
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ki;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v8

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/iE;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Ze;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/MS;Lcom/facebook/ads/redexgen/X/V4;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/7L;->A02:Lcom/facebook/ads/redexgen/X/iE;

    .line 21417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A02:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/iE;->A0A(Lcom/facebook/ads/redexgen/X/iG;)V

    .line 21418
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    .line 21419
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zk;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 21420
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/iG;->A04()Ljava/lang/String;

    move-result-object v6

    .line 21421
    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7L;->A08(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x28

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7L;->A08(III)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Ki;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0F:Z

    .line 21423
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7L;->A0A()V

    .line 21424
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/V4;Lcom/facebook/ads/redexgen/X/TF;)V
    .locals 10

    .line 21425
    .local p1, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7L;->A05:Lcom/facebook/ads/redexgen/X/US;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const-string v1, "0asQ5nS3mEJJFXqECkaJp8czAINd5ojj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wkfCN0fAVUFan65EWCqz3ffd3K2ZXjjS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 21426
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v9
    :cond_0
    return-void

    .line 21427
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/V4;->A03()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const-string v1, "7AAzPingpmVfFCqSXKHauNoNKo9Xv93Z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-float v1, v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 21428
    .local v0, "bannerHeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    .line 21429
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    .line 21430
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rf;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 21431
    .local v1, "isUnifiedAssetsLoaderEnabled":Z
    :goto_1
    if-nez v0, :cond_4

    .line 21432
    invoke-direct {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/7L;->A0C(ILcom/facebook/ads/redexgen/X/TF;)V

    .line 21433
    return-void

    :cond_2
    int-to-float v1, v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 21434
    .local v0, "bannerHeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    .line 21435
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 21436
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 21437
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    new-instance v4, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 21438
    .local v3, "cacheManager":Lcom/facebook/ads/redexgen/X/SF;
    move-object v2, p0

    .line 21439
    .local v9, "selfReference":Lcom/facebook/ads/redexgen/X/7L;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Rf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    .line 21440
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1C()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    .line 21441
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    .line 21442
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A17()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/ic;

    invoke-direct {v9, p0, v1, p2, v2}, Lcom/facebook/ads/redexgen/X/ic;-><init>(Lcom/facebook/ads/redexgen/X/7L;ILcom/facebook/ads/redexgen/X/TF;Lcom/facebook/ads/redexgen/X/7L;)V

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Rf;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Re;)V

    .line 21443
    .local v2, "unifiedAssetsLoader":Lcom/facebook/ads/redexgen/X/Rf;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rf;->A0B()V

    .line 21444
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/7L;)Z
    .locals 0

    .line 21445
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0H:Z

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/7L;Z)Z
    .locals 0

    .line 21446
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7L;->A0G:Z

    return p1
.end method


# virtual methods
.method public final A7G()Ljava/lang/String;
    .locals 1

    .line 21447
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0E:Ljava/lang/String;

    return-object v0
.end method

.method public final A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 4

    .line 21448
    .local v2, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    .line 21449
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7L;->A06:Lcom/facebook/ads/redexgen/X/V4;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/7L;->A0K:[Ljava/lang/String;

    const-string v1, "gRyzGCsQg6apk2eHBZ3N290V4KDgGwY2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A06:Lcom/facebook/ads/redexgen/X/V4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/V4;->A09:Lcom/facebook/ads/redexgen/X/V4;

    if-ne v1, v0, :cond_0

    .line 21450
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 21451
    :goto_0
    return-object v0

    .line 21452
    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AAk(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/V4;Lcom/facebook/ads/redexgen/X/MX;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;)V
    .locals 3

    .line 21453
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4F()V

    .line 21454
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    .line 21455
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7L;->A05:Lcom/facebook/ads/redexgen/X/US;

    .line 21456
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Lcom/facebook/ads/redexgen/X/MX;

    .line 21457
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7L;->A06:Lcom/facebook/ads/redexgen/X/V4;

    .line 21458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    .line 21459
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 21460
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1j(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A0H:Z

    .line 21461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {p5, v0}, Lcom/facebook/ads/redexgen/X/78;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    .line 21462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/78;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21463
    invoke-direct {p0, p3, p6}, Lcom/facebook/ads/redexgen/X/7L;->A0G(Lcom/facebook/ads/redexgen/X/V4;Lcom/facebook/ads/redexgen/X/TF;)V

    .line 21464
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A0I:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MY;

    invoke-direct {v0, v2, v1, p0, p4}, Lcom/facebook/ads/redexgen/X/MY;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/MX;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A01:Lcom/facebook/ads/redexgen/X/MY;

    .line 21465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A01:Lcom/facebook/ads/redexgen/X/MY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MY;->A02()V

    .line 21466
    return-void

    .line 21467
    :cond_0
    invoke-direct {p0, p6, p5, p3}, Lcom/facebook/ads/redexgen/X/7L;->A0F(Lcom/facebook/ads/redexgen/X/TF;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/V4;)V

    goto :goto_0
.end method

.method public final AJa()Z
    .locals 1

    .line 21468
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 21469
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7L;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter<TNativeViewabilityLogger;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A4D(Z)V

    .line 21470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    if-eqz v0, :cond_0

    .line 21471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ki;->destroy()V

    .line 21472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A09:Lcom/facebook/ads/redexgen/X/Ki;

    .line 21473
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A08:Lcom/facebook/ads/redexgen/X/Zh;

    .line 21474
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A01:Lcom/facebook/ads/redexgen/X/MY;

    if-eqz v0, :cond_1

    .line 21475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A01:Lcom/facebook/ads/redexgen/X/MY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MY;->A03()V

    .line 21476
    :cond_1
    return-void

    .line 21477
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

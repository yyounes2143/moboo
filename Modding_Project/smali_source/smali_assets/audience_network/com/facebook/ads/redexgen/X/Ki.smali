.class public final Lcom/facebook/ads/redexgen/X/Ki;
.super Lcom/facebook/ads/redexgen/X/Ze;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Zg;,
        Lcom/facebook/ads/redexgen/X/Zh;,
        Lcom/facebook/ads/redexgen/X/Ko;,
        Lcom/facebook/ads/redexgen/X/Zi;,
        Lcom/facebook/ads/redexgen/X/Zj;,
        Lcom/facebook/ads/redexgen/X/Kt;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/XH;

.field public A02:Lcom/facebook/ads/redexgen/X/eW;

.field public A03:Lcom/facebook/ads/redexgen/X/eX;

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/graphics/Path;

.field public final A08:Landroid/graphics/RectF;

.field public final A09:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0A:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Zh;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 957
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "X5ywJXgSTO8PHmyyLHkjy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LJCQW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "068uN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "say"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rTIjgGKqeW39zjdqZS0Aqu4tLxC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Qrp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m8T4zYbfVU3hLt0iEDnj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pXMACVxBUOAUm1D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ki;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ki;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Ki;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ki;->A0H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Zh;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49567
    .local p1, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/facebook/ads/redexgen/X/Ki;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/ref/WeakReference;IZ)V

    .line 49568
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49569
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    .line 49570
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v3

    .line 49571
    if-nez p4, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ki;->A02(III)Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/4 v0, 0x1

    invoke-interface {v3, p0, p4, v4, v0}, Lcom/facebook/ads/redexgen/X/Ue;->AK3(Landroid/view/View;Ljava/lang/String;ZZ)V

    .line 49572
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A06:Z

    .line 49573
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/ref/WeakReference;IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Zh;",
            ">;IZ)V"
        }
    .end annotation

    .line 49574
    .local p1, "adWebViewListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/common/AdWebView$AdWebViewListener;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ze;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 49575
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49576
    const/4 v4, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49577
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A07:Landroid/graphics/Path;

    .line 49578
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A08:Landroid/graphics/RectF;

    .line 49579
    const/16 v1, 0x1388

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49580
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0E:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49581
    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/XH;

    .line 49582
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ki;->A05:Z

    .line 49583
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ki;->A06:Z

    .line 49584
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A09:Lcom/facebook/ads/redexgen/X/dL;

    .line 49585
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Ki;->A04:Z

    .line 49586
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0A:Ljava/lang/ref/WeakReference;

    .line 49587
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ku;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ku;-><init>(Lcom/facebook/ads/redexgen/X/Ki;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A02:Lcom/facebook/ads/redexgen/X/eW;

    .line 49588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A02:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A09:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/eX;

    invoke-direct {v0, p0, p3, v2, v1}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    .line 49589
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ki;->A0G()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ki;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 49590
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ki;->A0H()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ki;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49591
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ki;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 49592
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ki;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 49593
    new-instance v3, Lcom/facebook/ads/redexgen/X/Zg;

    .line 49594
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Zh;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Ki;->A09:Lcom/facebook/ads/redexgen/X/dL;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Zg;-><init>(Lcom/facebook/ads/redexgen/X/Ki;Lcom/facebook/ads/redexgen/X/Zh;Lcom/facebook/ads/redexgen/X/eX;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 49595
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ki;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Ki;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49596
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ki;)Lcom/facebook/ads/redexgen/X/XH;
    .locals 0

    .line 49597
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/XH;

    return-object p0
.end method

.method public static synthetic A01()Ljava/lang/String;
    .locals 1

    .line 49598
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ki;->A0H:Ljava/lang/String;

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ki;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x34

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ki;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 49599
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0A:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ki;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x5bt
        0x7et
        0x59t
        0x75t
        0x74t
        0x6et
        0x68t
        0x75t
        0x76t
    .end array-data
.end method

.method private final A05()Z
    .locals 1

    .line 49600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Ki;)Z
    .locals 0

    .line 49601
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A05:Z

    return p0
.end method


# virtual methods
.method public final A0G()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 49602
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Zi;-><init>()V

    return-object v0
.end method

.method public final A0H()Landroid/webkit/WebViewClient;
    .locals 11

    .line 49603
    new-instance v1, Lcom/facebook/ads/redexgen/X/Zj;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ki;->A09:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0A:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/XH;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0D:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0E:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/Ki;->A04:Z

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/Zj;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-object v1
.end method

.method public final A0K()V
    .locals 3

    .line 49604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A09:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AK5()V

    .line 49605
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49606
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ko;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ko;-><init>(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 49607
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49608
    return-void
.end method

.method public final A0L(II)V
    .locals 1

    .line 49609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    if-eqz v0, :cond_0

    .line 49610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/eX;->A0W(I)V

    .line 49611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/eX;->A0X(I)V

    .line 49612
    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 49613
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A06:Z

    if-eqz v0, :cond_0

    .line 49614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A09:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Ue;->AJj(Landroid/view/View;)V

    .line 49615
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    .line 49617
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    .line 49618
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 49619
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A02:Lcom/facebook/ads/redexgen/X/eW;

    .line 49620
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/XH;

    .line 49621
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Zk;->A03(Landroid/webkit/WebView;)V

    .line 49622
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ze;->destroy()V

    .line 49623
    return-void
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/XH;
    .locals 1

    .line 49624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/XH;

    return-object v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/redexgen/X/eX;
    .locals 1

    .line 49625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 49626
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A00:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 49627
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ki;->A08:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ki;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ki;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ki;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49628
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ki;->A0G:[Ljava/lang/String;

    const-string v1, "xZYpx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "aqsn9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A07:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 49629
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ki;->A07:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ki;->A08:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ki;->A00:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A00:F

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 49630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A07:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 49631
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ze;->onDraw(Landroid/graphics/Canvas;)V

    .line 49632
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 49633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A01:Lcom/facebook/ads/redexgen/X/XH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A09:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/XH;->A06(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 49634
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ze;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 4

    .line 49635
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ze;->onWindowVisibilityChanged(I)V

    .line 49636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 49638
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    if-nez v0, :cond_1

    .line 49639
    return-void

    .line 49640
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ki;->A09:Lcom/facebook/ads/redexgen/X/dL;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ki;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ki;->A0G:[Ljava/lang/String;

    const-string v1, "5ON080OOKwQwIFP5OG7h"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "JBDgk0gsadULglMDLs8S8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->AKJ(I)V

    .line 49641
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ki;->A05()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 49643
    :cond_2
    :goto_0
    return-void

    .line 49644
    :cond_3
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 49645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A03:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setBlockLocalFileAccessOutsideCache(Z)V
    .locals 0

    .line 49646
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A04:Z

    .line 49647
    return-void
.end method

.method public setCheckAssetsByJavascriptBridge(Z)V
    .locals 1

    .line 49648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49649
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 49650
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A00:F

    .line 49651
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ki;->invalidate()V

    .line 49652
    return-void
.end method

.method public setLogMultipleImpressions(Z)V
    .locals 0

    .line 49653
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ki;->A05:Z

    .line 49654
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    .line 49655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0E:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 49656
    return-void
.end method

.method public setWebViewTimeoutInMillis(I)V
    .locals 1

    .line 49657
    if-ltz p1, :cond_0

    .line 49658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ki;->A0D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 49659
    :cond_0
    return-void
.end method

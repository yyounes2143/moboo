.class public final Lcom/facebook/ads/redexgen/X/LJ;
.super Lcom/facebook/ads/redexgen/X/Ze;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZY;,
        Lcom/facebook/ads/redexgen/X/Zb;,
        Lcom/facebook/ads/redexgen/X/ZX;,
        Lcom/facebook/ads/redexgen/X/Za;,
        Lcom/facebook/ads/redexgen/X/ZZ;
    }
.end annotation


# static fields
.field public static A08:Landroid/webkit/ValueCallback;

.field public static A09:Z

.field public static A0A:Z

.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;

.field public static final A0E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/dL;

.field public A05:Lcom/facebook/ads/redexgen/X/ZT;

.field public A06:Lcom/facebook/ads/redexgen/X/ZY;

.field public A07:Lcom/facebook/ads/redexgen/X/Zb;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 985
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "r5lFqG0C0bBGIxytTEblkmz8pOWiln6U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Y5tMFhpuLobi6U3v3neZGAzEpbrZh2e0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "35iZKMkwZFt7WP5rciHAZ1WswbletKXm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1wdh7bxI31pnh6pFTaTypUqx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "X0GEkrMG66X1N8QG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HQ8AmQiqT9dTkfwWyhZ7u2ZNdQoS7Fbv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yjHJSxajRdLfdjSgilcNPSPFyTq4dELg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ut8cBtSHXrZx3QiSKTpc7NoA9ie10da9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LJ;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LJ;->A06()V

    const-class v0, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LJ;->A0D:Ljava/lang/String;

    .line 986
    const/4 v1, 0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/LJ;->A0E:Ljava/util/Set;

    .line 987
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/LJ;->A09:Z

    .line 988
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/LJ;->A0A:Z

    .line 989
    sget-object v3, Lcom/facebook/ads/redexgen/X/LJ;->A0E:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LJ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 990
    sget-object v3, Lcom/facebook/ads/redexgen/X/LJ;->A0E:Ljava/util/Set;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LJ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 991
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/ZY;)V
    .locals 2

    .line 50072
    invoke-direct {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/Ze;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50073
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:J

    .line 50074
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:J

    .line 50075
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A03:J

    .line 50076
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:J

    .line 50077
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/LJ;->A08(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/ZY;)V

    .line 50078
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/ZY;)V
    .locals 2

    .line 50079
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ze;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50080
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:J

    .line 50081
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:J

    .line 50082
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A03:J

    .line 50083
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:J

    .line 50084
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/LJ;->A08(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/ZY;)V

    .line 50085
    return-void
.end method

.method public static synthetic A00()Landroid/webkit/ValueCallback;
    .locals 1

    .line 50086
    sget-object v0, Lcom/facebook/ads/redexgen/X/LJ;->A08:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static synthetic A01(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 50087
    sput-object p0, Lcom/facebook/ads/redexgen/X/LJ;->A08:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private final A02()Lcom/facebook/ads/redexgen/X/Zb;
    .locals 4

    .line 50088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A06:Lcom/facebook/ads/redexgen/X/ZY;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A05:Lcom/facebook/ads/redexgen/X/ZT;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zb;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Zb;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LJ;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A04()Ljava/util/Set;
    .locals 1

    .line 50089
    sget-object v0, Lcom/facebook/ads/redexgen/X/LJ;->A0E:Ljava/util/Set;

    return-object v0
.end method

.method private A05()V
    .locals 5

    .line 50090
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 50091
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A05:Lcom/facebook/ads/redexgen/X/ZT;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZT;->A05(Z)V

    .line 50092
    :cond_0
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LJ;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x2bt
        0x37t
        0x37t
        0x33t
        0x64t
        0x78t
        0x78t
        0x7ct
        0x7ft
    .end array-data
.end method

.method public static A07(IILandroid/content/Intent;)V
    .locals 1

    .line 50093
    sget-object v0, Lcom/facebook/ads/redexgen/X/LJ;->A08:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    .line 50094
    return-void

    .line 50095
    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    .line 50096
    sget-object p0, Lcom/facebook/ads/redexgen/X/LJ;->A08:Landroid/webkit/ValueCallback;

    .line 50097
    invoke-static {p1, p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 50098
    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 50099
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LJ;->A08:Landroid/webkit/ValueCallback;

    .line 50100
    :cond_1
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/ZY;)V
    .locals 3

    .line 50101
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 50102
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LJ;->A06:Lcom/facebook/ads/redexgen/X/ZY;

    .line 50103
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZT;-><init>(Lcom/facebook/ads/redexgen/X/LJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A05:Lcom/facebook/ads/redexgen/X/ZT;

    .line 50104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U8;->A03(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/LJ;->A09:Z

    .line 50105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U8;->A04(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/LJ;->A0A:Z

    .line 50106
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LJ;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 50107
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 50108
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 50109
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 50110
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 50111
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 50112
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 50113
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 50114
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 50115
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 50116
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LJ;->A0G()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/LJ;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50117
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LJ;->A02()Lcom/facebook/ads/redexgen/X/Zb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A07:Lcom/facebook/ads/redexgen/X/Zb;

    .line 50118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A07:Lcom/facebook/ads/redexgen/X/Zb;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/LJ;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50119
    return-void
.end method

.method public static synthetic A09()Z
    .locals 1

    .line 50120
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/LJ;->A0A:Z

    return v0
.end method

.method public static synthetic A0A()Z
    .locals 1

    .line 50121
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/LJ;->A09:Z

    return v0
.end method


# virtual methods
.method public final A0G()Landroid/webkit/WebChromeClient;
    .locals 4

    .line 50122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A06:Lcom/facebook/ads/redexgen/X/ZY;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A05:Lcom/facebook/ads/redexgen/X/ZT;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Za;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Za;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public final bridge synthetic A0H()Landroid/webkit/WebViewClient;
    .locals 1

    .line 50123
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LJ;->A02()Lcom/facebook/ads/redexgen/X/Zb;

    move-result-object v0

    return-object v0
.end method

.method public final A0K(J)V
    .locals 5

    .line 50124
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 50125
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:J

    .line 50126
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LJ;->A05()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/LJ;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 50127
    sget-object v2, Lcom/facebook/ads/redexgen/X/LJ;->A0C:[Ljava/lang/String;

    const-string v1, "TnIn5PelVgDBsDwa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "kaGwwHcDVWZGOuagxs1W4ZQa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0L(J)V
    .locals 5

    .line 50128
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 50129
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:J

    .line 50130
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LJ;->A05()V

    .line 50131
    return-void
.end method

.method public final A0M(J)V
    .locals 5

    .line 50132
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 50133
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:J

    .line 50134
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LJ;->A05()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/LJ;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 50135
    sget-object v2, Lcom/facebook/ads/redexgen/X/LJ;->A0C:[Ljava/lang/String;

    const-string v1, "DwC46XxC2zY9iA5O924mXxlTXzY8IGhb"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "1LscF1ZcfF08U7LpSibJFf3LFm8iDmJu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final destroy()V
    .locals 1

    .line 50136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A06:Lcom/facebook/ads/redexgen/X/ZY;

    .line 50137
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Zk;->A03(Landroid/webkit/WebView;)V

    .line 50138
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ze;->destroy()V

    .line 50139
    return-void
.end method

.method public getDomContentLoadedMs()J
    .locals 2

    .line 50140
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .locals 2

    .line 50141
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LJ;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 50142
    .local v0, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 50143
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50144
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LJ;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadFinishMs()J
    .locals 2

    .line 50145
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:J

    return-wide v0
.end method

.method public getResponseEndMs()J
    .locals 2

    .line 50146
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:J

    return-wide v0
.end method

.method public getScrollReadyMs()J
    .locals 2

    .line 50147
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A03:J

    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 50148
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ze;->onDraw(Landroid/graphics/Canvas;)V

    .line 50149
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/LJ;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LJ;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LJ;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 50150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A03:J

    .line 50151
    :cond_0
    return-void
.end method

.method public setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/ZZ;)V
    .locals 2

    .line 50152
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A07:Lcom/facebook/ads/redexgen/X/Zb;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zb;->A06(Ljava/lang/ref/WeakReference;)V

    .line 50153
    return-void
.end method

.method public setInterceptRedirectRequest(Lcom/facebook/ads/redexgen/X/ZX;)V
    .locals 1

    .line 50154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A07:Lcom/facebook/ads/redexgen/X/Zb;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Zb;->A05(Lcom/facebook/ads/redexgen/X/ZX;)V

    .line 50155
    return-void
.end method

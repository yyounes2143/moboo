.class public final Lcom/facebook/ads/redexgen/X/8e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/mw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/8d;

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/39;

.field public A03:Lcom/facebook/ads/redexgen/X/7p;

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23331
    sget-object v0, Lcom/facebook/ads/redexgen/X/7p;->A04:Lcom/facebook/ads/redexgen/X/7p;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8e;->A03:Lcom/facebook/ads/redexgen/X/7p;

    .line 23332
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8e;->A01:I

    .line 23333
    sget-object v0, Lcom/facebook/ads/redexgen/X/8d;->A00:Lcom/facebook/ads/redexgen/X/8d;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8e;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 23334
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/8e;)I
    .locals 0

    .line 23335
    iget p0, p0, Lcom/facebook/ads/redexgen/X/8e;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/8e;)Lcom/facebook/ads/redexgen/X/39;
    .locals 0

    .line 23336
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8e;->A02:Lcom/facebook/ads/redexgen/X/39;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8e;)Lcom/facebook/ads/redexgen/X/7p;
    .locals 0

    .line 23337
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8e;->A03:Lcom/facebook/ads/redexgen/X/7p;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8e;)Z
    .locals 0

    .line 23338
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/8e;->A05:Z

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8e;)Z
    .locals 0

    .line 23339
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/8e;->A04:Z

    return p0
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/39;)Lcom/facebook/ads/redexgen/X/8e;
    .locals 0

    .line 23340
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23341
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8e;->A02:Lcom/facebook/ads/redexgen/X/39;

    .line 23342
    return-object p0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/7p;)Lcom/facebook/ads/redexgen/X/8e;
    .locals 0

    .line 23343
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23344
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8e;->A03:Lcom/facebook/ads/redexgen/X/7p;

    .line 23345
    return-object p0
.end method

.method public final A07([Lcom/facebook/ads/redexgen/X/38;)Lcom/facebook/ads/redexgen/X/8e;
    .locals 1

    .line 23346
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23347
    new-instance v0, Lcom/facebook/ads/redexgen/X/9M;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/9M;-><init>([Lcom/facebook/ads/redexgen/X/38;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8e;->A05(Lcom/facebook/ads/redexgen/X/39;)Lcom/facebook/ads/redexgen/X/8e;

    move-result-object v0

    return-object v0
.end method

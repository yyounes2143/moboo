.class public final Lcom/facebook/ads/redexgen/X/N8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/N9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/N8;)Ljava/lang/String;
    .locals 0

    .line 53505
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/N8;)Ljava/lang/String;
    .locals 0

    .line 53506
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N8;->A01:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/N8;)Ljava/lang/String;
    .locals 0

    .line 53507
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N8;->A00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/N8;)Ljava/lang/String;
    .locals 0

    .line 53508
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/N8;
    .locals 0

    .line 53509
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N8;->A00:Ljava/lang/String;

    .line 53510
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/N8;
    .locals 0

    .line 53511
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N8;->A01:Ljava/lang/String;

    .line 53512
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/N8;
    .locals 0

    .line 53513
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Ljava/lang/String;

    .line 53514
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/N8;
    .locals 0

    .line 53515
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Ljava/lang/String;

    .line 53516
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/N9;
    .locals 2

    .line 53517
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/N9;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/N9;-><init>(Lcom/facebook/ads/redexgen/X/N8;Lcom/facebook/ads/redexgen/X/N7;)V

    return-object v0
.end method

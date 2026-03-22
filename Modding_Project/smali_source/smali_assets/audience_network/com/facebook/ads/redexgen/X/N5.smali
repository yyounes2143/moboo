.class public final Lcom/facebook/ads/redexgen/X/N5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/N6;
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

    .line 53474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/N5;)Ljava/lang/String;
    .locals 0

    .line 53475
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N5;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/N5;)Ljava/lang/String;
    .locals 0

    .line 53476
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N5;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/N5;)Ljava/lang/String;
    .locals 0

    .line 53477
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N5;->A00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/N5;)Ljava/lang/String;
    .locals 0

    .line 53478
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N5;->A01:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/N5;
    .locals 0

    .line 53479
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N5;->A00:Ljava/lang/String;

    .line 53480
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/N5;
    .locals 0

    .line 53481
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N5;->A01:Ljava/lang/String;

    .line 53482
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/N5;
    .locals 0

    .line 53483
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N5;->A02:Ljava/lang/String;

    .line 53484
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/N5;
    .locals 0

    .line 53485
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N5;->A03:Ljava/lang/String;

    .line 53486
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/N6;
    .locals 2

    .line 53487
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/N6;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/N6;-><init>(Lcom/facebook/ads/redexgen/X/N5;Lcom/facebook/ads/redexgen/X/N4;)V

    return-object v0
.end method

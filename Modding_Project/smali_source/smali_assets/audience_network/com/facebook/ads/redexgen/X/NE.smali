.class public final Lcom/facebook/ads/redexgen/X/NE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NF;
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

    .line 53667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/NE;)Ljava/lang/String;
    .locals 0

    .line 53668
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NE;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/NE;)Ljava/lang/String;
    .locals 0

    .line 53669
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NE;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/NE;)Ljava/lang/String;
    .locals 0

    .line 53670
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NE;->A01:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/NE;)Ljava/lang/String;
    .locals 0

    .line 53671
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NE;->A00:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NE;
    .locals 0

    .line 53672
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NE;->A00:Ljava/lang/String;

    .line 53673
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NE;
    .locals 0

    .line 53674
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NE;->A01:Ljava/lang/String;

    .line 53675
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NE;
    .locals 0

    .line 53676
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NE;->A02:Ljava/lang/String;

    .line 53677
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NE;
    .locals 0

    .line 53678
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NE;->A03:Ljava/lang/String;

    .line 53679
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/NF;
    .locals 2

    .line 53680
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/NF;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/NF;-><init>(Lcom/facebook/ads/redexgen/X/NE;Lcom/facebook/ads/redexgen/X/ND;)V

    return-object v0
.end method

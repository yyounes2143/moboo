.class public Lcom/facebook/ads/redexgen/X/VX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VW;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/TE;

.field public final A01:Lcom/facebook/ads/redexgen/X/VW;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VW;)V
    .locals 1

    .line 69471
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/VX;-><init>(Lcom/facebook/ads/redexgen/X/VW;Lcom/facebook/ads/redexgen/X/TE;Ljava/lang/String;)V

    .line 69472
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VW;Lcom/facebook/ads/redexgen/X/TE;Ljava/lang/String;)V
    .locals 0

    .line 69473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69474
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:Lcom/facebook/ads/redexgen/X/VW;

    .line 69475
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:Lcom/facebook/ads/redexgen/X/TE;

    .line 69476
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/VX;->A02:Ljava/lang/String;

    .line 69477
    return-void
.end method


# virtual methods
.method public A00()Lcom/facebook/ads/redexgen/X/TE;
    .locals 1

    .line 69478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:Lcom/facebook/ads/redexgen/X/TE;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/VW;
    .locals 1

    .line 69479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A01:Lcom/facebook/ads/redexgen/X/VW;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 69480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A02:Ljava/lang/String;

    return-object v0
.end method

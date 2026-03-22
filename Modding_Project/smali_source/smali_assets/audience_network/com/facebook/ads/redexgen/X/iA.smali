.class public abstract Lcom/facebook/ads/redexgen/X/iA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MP;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/RewardData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 0

    .line 85674
    iput p1, p0, Lcom/facebook/ads/redexgen/X/iA;->A00:I

    .line 85675
    return-void
.end method

.method public final A01(J)V
    .locals 0

    .line 85676
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/iA;->A01:J

    .line 85677
    return-void
.end method

.method public final A02(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 85678
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iA;->A02:Lcom/facebook/ads/RewardData;

    .line 85679
    return-void
.end method

.method public abstract A0H()I
.end method

.method public abstract A0I()Lcom/facebook/ads/redexgen/X/Mo;
.end method

.method public abstract A0J()Z
.end method

.method public final A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 85680
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

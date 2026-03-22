.class public final Lcom/facebook/ads/redexgen/X/Ug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
.implements Lcom/facebook/ads/AdView$AdViewLoadConfig;


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:Lcom/facebook/ads/redexgen/X/Qz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qz;)V
    .locals 0

    .line 67882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67883
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    .line 67884
    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1

    .line 67885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 67886
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ug;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/AdView$AdViewLoadConfig;
    .locals 0

    .line 67887
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 1

    .line 67888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A01:Lcom/facebook/ads/redexgen/X/Qz;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Qz;->A0C(Lcom/facebook/ads/AdListener;)V

    .line 67889
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 67890
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Ug;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 0

    .line 67891
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:Ljava/lang/String;

    .line 67892
    return-object p0
.end method

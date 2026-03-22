.class public final Lcom/facebook/ads/redexgen/X/XV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/SU;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XN;->A8p()Lcom/facebook/ads/redexgen/X/SU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/XN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XN;Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72538
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XV;->A01:Lcom/facebook/ads/redexgen/X/XN;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XV;->A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAO()Z
    .locals 1

    .line 72539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XV;->A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->isLimitAdTracking()Z

    move-result v0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 72540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XV;->A00:Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/bridge/gms/AdvertisingId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

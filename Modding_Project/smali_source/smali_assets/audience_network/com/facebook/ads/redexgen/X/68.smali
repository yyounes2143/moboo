.class public final Lcom/facebook/ads/redexgen/X/68;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceRefreshInfo"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public final A01:Lcom/facebook/ads/redexgen/X/CL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CL;Lcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 0

    .line 17339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17340
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/68;->A01:Lcom/facebook/ads/redexgen/X/CL;

    .line 17341
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/68;->A00:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 17342
    return-void
.end method

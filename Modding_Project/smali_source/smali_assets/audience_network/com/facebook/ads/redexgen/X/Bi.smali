.class public abstract Lcom/facebook/ads/redexgen/X/Bi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServerBundleResponse"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/By;

.field public final A01:Lcom/facebook/ads/redexgen/X/fP;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/By;Lcom/facebook/ads/redexgen/X/fP;)V
    .locals 0

    .line 31431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31432
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:Lcom/facebook/ads/redexgen/X/By;

    .line 31433
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bi;->A01:Lcom/facebook/ads/redexgen/X/fP;

    .line 31434
    return-void
.end method


# virtual methods
.method public A45(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/f2;",
            "Lcom/facebook/ads/redexgen/X/fP;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/sync/SyncModifiableBundle;",
            "Lcom/facebook/ads/redexgen/X/fC;",
            ">;)V"
        }
    .end annotation

    .line 31435
    .local p1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local p2, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:Lcom/facebook/ads/redexgen/X/By;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A01:Lcom/facebook/ads/redexgen/X/fP;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31436
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/1u;
.super Lcom/facebook/ads/redexgen/X/Bi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullServerBundleResponse"
.end annotation


# instance fields
.field public final A00:Lorg/json/JSONObject;

.field public final A01:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/By;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .line 9126
    sget-object v0, Lcom/facebook/ads/redexgen/X/fP;->A03:Lcom/facebook/ads/redexgen/X/fP;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/By;Lcom/facebook/ads/redexgen/X/fP;)V

    .line 9127
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1u;->A00:Lorg/json/JSONObject;

    .line 9128
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1u;->A01:Lorg/json/JSONObject;

    .line 9129
    return-void
.end method


# virtual methods
.method public final A45(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
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

    .line 9130
    .local p1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local p2, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:Lcom/facebook/ads/redexgen/X/By;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1u;->A00:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1u;->A01:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/By;->A03(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    .line 9131
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bi;->A45(Ljava/util/Map;Ljava/util/Map;)V

    .line 9132
    return-void
.end method

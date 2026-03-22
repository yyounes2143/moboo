.class public final Lcom/facebook/ads/redexgen/X/iR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Y8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7K;->AAk(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/V4;Lcom/facebook/ads/redexgen/X/MX;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7K;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/6M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7K;Lcom/facebook/ads/redexgen/X/6M;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86290
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iR;->A00:Lcom/facebook/ads/redexgen/X/7K;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iR;->A01:Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADW()V
    .locals 2

    .line 86291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iR;->A01:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iR;->A00:Lcom/facebook/ads/redexgen/X/7K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7K;->A02(Lcom/facebook/ads/redexgen/X/7K;)Lcom/facebook/ads/redexgen/X/iD;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A4I(Z)V

    .line 86292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iR;->A00:Lcom/facebook/ads/redexgen/X/7K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7K;->A02(Lcom/facebook/ads/redexgen/X/7K;)Lcom/facebook/ads/redexgen/X/iD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iR;->A00:Lcom/facebook/ads/redexgen/X/7K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7K;->A02(Lcom/facebook/ads/redexgen/X/7K;)Lcom/facebook/ads/redexgen/X/iD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MR;->A03()V

    .line 86294
    :cond_0
    return-void

    .line 86295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Lcom/facebook/ads/redexgen/X/cy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewOffTargetClickListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cz;)V
    .locals 0

    .line 78384
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cy;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/cz;Lcom/facebook/ads/redexgen/X/3p;)V
    .locals 0

    .line 78385
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cy;-><init>(Lcom/facebook/ads/redexgen/X/cz;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 78386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 78387
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cy;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/cz;->A01(Lcom/facebook/ads/redexgen/X/cz;J)J

    .line 78388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A00(Lcom/facebook/ads/redexgen/X/cz;)I

    .line 78389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A03(Lcom/facebook/ads/redexgen/X/cz;)Lcom/facebook/ads/redexgen/X/US;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A00:Lcom/facebook/ads/redexgen/X/cz;

    .line 78390
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A02(Lcom/facebook/ads/redexgen/X/cz;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A00:Lcom/facebook/ads/redexgen/X/cz;

    .line 78391
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cz;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cy;->A00:Lcom/facebook/ads/redexgen/X/cz;

    .line 78392
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cz;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 78393
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v0

    .line 78394
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/US;->ABJ(Ljava/lang/String;Ljava/util/Map;)V

    .line 78395
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

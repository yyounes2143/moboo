.class public final Lcom/facebook/ads/redexgen/X/Bq;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStatusChangeReceiver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Bv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bv;)V
    .locals 0

    .line 31518
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bq;->A00:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Bv;Lcom/facebook/ads/redexgen/X/Bp;)V
    .locals 0

    .line 31519
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bq;-><init>(Lcom/facebook/ads/redexgen/X/Bv;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 31520
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bq;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bq;->A00:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bv;->A07(Lcom/facebook/ads/redexgen/X/Bv;)V

    .line 31522
    :cond_0
    return-void
.end method

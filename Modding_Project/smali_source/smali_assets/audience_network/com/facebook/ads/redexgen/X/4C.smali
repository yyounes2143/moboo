.class public final Lcom/facebook/ads/redexgen/X/4C;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Receiver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4D;)V
    .locals 0

    .line 12079
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4C;->A00:Lcom/facebook/ads/redexgen/X/4D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/4D;Lcom/facebook/ads/redexgen/X/48;)V
    .locals 0

    .line 12080
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4C;-><init>(Lcom/facebook/ads/redexgen/X/4D;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 12081
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4D;->A01(Landroid/content/Context;)I

    move-result v2

    .line 12082
    .local v0, "networkType":I
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1f

    if-lt v1, v0, :cond_0

    const/4 v0, 0x5

    if-ne v2, v0, :cond_0

    .line 12083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4C;->A00:Lcom/facebook/ads/redexgen/X/4D;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4A;->A02(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/4D;)V

    .line 12084
    :goto_0
    return-void

    .line 12085
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4C;->A00:Lcom/facebook/ads/redexgen/X/4D;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/4D;->A08(Lcom/facebook/ads/redexgen/X/4D;I)V

    goto :goto_0
.end method

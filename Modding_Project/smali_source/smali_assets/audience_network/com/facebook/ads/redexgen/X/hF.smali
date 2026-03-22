.class public final Lcom/facebook/ads/redexgen/X/hF;
.super Lcom/facebook/ads/redexgen/X/Vg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hD;->AED(ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/os/Message;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/hD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hD;Landroid/os/Message;)V
    .locals 0

    .line 84469
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hF;->A01:Lcom/facebook/ads/redexgen/X/hD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hF;->A00:Landroid/os/Message;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vg;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 84470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hF;->A01:Lcom/facebook/ads/redexgen/X/hD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hD;->A05:Lcom/facebook/ads/redexgen/X/Nm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hF;->A00:Landroid/os/Message;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Nm;->A9b(Landroid/os/Message;)V

    .line 84471
    return-void
.end method

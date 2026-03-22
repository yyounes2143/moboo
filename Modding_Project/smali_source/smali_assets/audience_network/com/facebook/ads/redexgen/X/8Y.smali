.class public final synthetic Lcom/facebook/ads/redexgen/X/8Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Landroid/media/AudioTrack;

.field public final synthetic A01:Landroid/os/Handler;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/3W;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/8F;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/8J;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8J;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/3W;)V
    .locals 0

    .line 23317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8Y;->A04:Lcom/facebook/ads/redexgen/X/8J;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8Y;->A01:Landroid/os/Handler;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/8Y;->A03:Lcom/facebook/ads/redexgen/X/8F;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Lcom/facebook/ads/redexgen/X/3W;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 23318
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8Y;->A04:Lcom/facebook/ads/redexgen/X/8J;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8Y;->A01:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8Y;->A03:Lcom/facebook/ads/redexgen/X/8F;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Lcom/facebook/ads/redexgen/X/3W;

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mw;->A0a(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8J;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/3W;)V

    return-void
.end method

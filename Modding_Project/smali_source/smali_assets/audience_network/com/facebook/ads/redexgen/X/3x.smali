.class public final synthetic Lcom/facebook/ads/redexgen/X/3x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/41;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/41;)V
    .locals 0

    .line 11921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/41;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 11922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/41;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/41;->A06(Lcom/facebook/ads/redexgen/X/41;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

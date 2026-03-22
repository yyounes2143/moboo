.class public final Lcom/facebook/ads/redexgen/X/QL;
.super Lcom/facebook/ads/redexgen/X/Vg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6I;->AEB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6I;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6I;)V
    .locals 0

    .line 59157
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:Lcom/facebook/ads/redexgen/X/6I;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vg;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 59158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:Lcom/facebook/ads/redexgen/X/6I;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6I;->A01:Lcom/facebook/ads/NativeAdListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:Lcom/facebook/ads/redexgen/X/6I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6I;->A00:Lcom/facebook/ads/NativeAdBase;

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdListener;->onMediaDownloaded(Lcom/facebook/ads/Ad;)V

    .line 59159
    return-void
.end method

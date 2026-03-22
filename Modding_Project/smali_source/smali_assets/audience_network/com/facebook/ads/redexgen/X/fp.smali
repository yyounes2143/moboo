.class public final Lcom/facebook/ads/redexgen/X/fp;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fh;->A0M(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/fh;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Qc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/redexgen/X/Qc;)V
    .locals 0

    .line 81596
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fp;->A00:Lcom/facebook/ads/redexgen/X/fh;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fp;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 81597
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fp;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1f(ZZ)V

    .line 81598
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/fj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Zo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fh;->A0L(Lcom/facebook/ads/NativeAd;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81562
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fj;->A00:Lcom/facebook/ads/redexgen/X/fh;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fj;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADT(Lcom/facebook/ads/redexgen/X/Zn;)V
    .locals 3

    .line 81563
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fj;->A01:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zn;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Qc;->A1f(ZZ)V

    .line 81564
    return-void

    .line 81565
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Lcom/facebook/ads/redexgen/X/Hj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Zo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/50;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;ILcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/Ua;ZZLcom/facebook/ads/redexgen/X/cT;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 39488
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hj;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADT(Lcom/facebook/ads/redexgen/X/Zn;)V
    .locals 2

    .line 39489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hj;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A06(Lcom/facebook/ads/redexgen/X/50;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zn;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 39490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hj;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A09(Lcom/facebook/ads/redexgen/X/50;)V

    .line 39491
    return-void

    .line 39492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

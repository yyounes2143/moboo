.class public final Lcom/facebook/ads/redexgen/X/Lp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cW;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Lc;->A0J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 51297
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lp;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADh()V
    .locals 2

    .line 51298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lp;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0F(Lcom/facebook/ads/redexgen/X/Lc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lp;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0R(Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 51300
    return-void
.end method

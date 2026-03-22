.class public final Lcom/facebook/ads/redexgen/X/Po;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6j;->A0I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6j;

.field public final synthetic A01:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6j;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58656
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Lcom/facebook/ads/redexgen/X/6j;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Po;->A01:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 58657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Pv;

    .line 58658
    .local v1, "change":Lcom/facebook/ads/redexgen/X/Pv;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Lcom/facebook/ads/redexgen/X/6j;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6j;->A0c(Lcom/facebook/ads/redexgen/X/Pv;)V

    .line 58659
    .end local v1    # "change":Lcom/facebook/ads/redexgen/X/Pv;
    goto :goto_0

    .line 58660
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6j;->A03:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A01:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58662
    return-void
.end method

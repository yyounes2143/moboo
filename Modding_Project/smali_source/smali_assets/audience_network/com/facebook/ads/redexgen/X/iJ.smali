.class public final Lcom/facebook/ads/redexgen/X/iJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/br;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7E;->A01(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7E;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7E;)V
    .locals 0

    .line 86052
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iJ;->A00:Lcom/facebook/ads/redexgen/X/7E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFx()V
    .locals 2

    .line 86053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iJ;->A00:Lcom/facebook/ads/redexgen/X/7E;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A02(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AEY()V

    .line 86054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iJ;->A00:Lcom/facebook/ads/redexgen/X/7E;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A06(Lcom/facebook/ads/redexgen/X/7B;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iJ;->A00:Lcom/facebook/ads/redexgen/X/7E;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7E;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iJ;->A00:Lcom/facebook/ads/redexgen/X/7E;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7E;->A01:Lcom/facebook/ads/redexgen/X/iA;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF4(Lcom/facebook/ads/redexgen/X/iA;)V

    .line 86056
    return-void
.end method

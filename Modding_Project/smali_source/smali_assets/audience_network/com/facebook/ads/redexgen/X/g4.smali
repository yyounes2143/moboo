.class public final Lcom/facebook/ads/redexgen/X/g4;
.super Lcom/facebook/ads/redexgen/X/QE;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6g;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 0

    .line 81926
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/g4;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QE;-><init>()V

    .line 81927
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 81928
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/g4;->A00:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->A1n(Ljava/lang/String;)V

    .line 81929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g4;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6g;->A0s:Lcom/facebook/ads/redexgen/X/Qd;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Qd;->A0D:Z

    .line 81930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g4;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1R()V

    .line 81931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g4;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A00:Lcom/facebook/ads/redexgen/X/gM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gM;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g4;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->requestLayout()V

    .line 81933
    :cond_0
    return-void
.end method

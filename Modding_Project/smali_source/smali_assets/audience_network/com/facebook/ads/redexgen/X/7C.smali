.class public final Lcom/facebook/ads/redexgen/X/7C;
.super Lcom/facebook/ads/redexgen/X/hU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7B;->A0C(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hw;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7B;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/hw;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/73;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7B;ZLcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/73;Lcom/facebook/ads/redexgen/X/hw;I)V
    .locals 0

    .line 21207
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7C;->A01:Lcom/facebook/ads/redexgen/X/7B;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7C;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/73;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7C;->A02:Lcom/facebook/ads/redexgen/X/hw;

    iput p6, p0, Lcom/facebook/ads/redexgen/X/7C;->A00:I

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/hU;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 3

    .line 21208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A01:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7C;->A01:Lcom/facebook/ads/redexgen/X/7B;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 21209
    return-void
.end method

.method public final A01(Z)V
    .locals 5

    .line 21210
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7B;->A0D:Lcom/facebook/ads/redexgen/X/SF;

    .line 21211
    if-eqz p1, :cond_0

    .line 21212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 21213
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A01()Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/73;

    .line 21214
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A02:Lcom/facebook/ads/redexgen/X/hw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hw;->A1y()Ljava/lang/String;

    move-result-object v0

    .line 21215
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->AIU(Ljava/lang/String;Ljava/lang/String;)V

    .line 21216
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A00:I

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 21217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A01:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A06(Lcom/facebook/ads/redexgen/X/7B;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A01:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A01:Lcom/facebook/ads/redexgen/X/7B;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF4(Lcom/facebook/ads/redexgen/X/iA;)V

    .line 21219
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7C;->A01:Lcom/facebook/ads/redexgen/X/7B;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7C;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7C;->A02:Lcom/facebook/ads/redexgen/X/hw;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7C;->A00:I

    add-int/2addr v0, v4

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7B;->A0B(Lcom/facebook/ads/redexgen/X/7B;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hw;I)V

    .line 21220
    return-void
.end method

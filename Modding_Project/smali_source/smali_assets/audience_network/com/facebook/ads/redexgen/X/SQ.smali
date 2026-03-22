.class public Lcom/facebook/ads/redexgen/X/SQ;
.super Landroid/content/ContextWrapper;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/SS;

.field public final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/SS;)V
    .locals 1

    .line 64122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 64123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64124
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    .line 64125
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/LL;
    .locals 1

    .line 64126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/SS;->A84(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/LL;

    move-result-object v0

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/SJ;
    .locals 1

    .line 64127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SS;->A78()Lcom/facebook/ads/redexgen/X/SJ;

    move-result-object v0

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/cu;
    .locals 1

    .line 64128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/SS;->A8r(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/SR;
    .locals 1

    .line 64129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/SS;->A6w(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/SR;

    move-result-object v0

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/ST;
    .locals 1

    .line 64130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/SS;->A7p(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/ST;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/SV;
    .locals 1

    .line 64131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/SS;->A8q(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v0

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/SW;
    .locals 1

    .line 64132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SS;->A97()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v0

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/Sh;
    .locals 1

    .line 64133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/SS;->A7d(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Sh;

    move-result-object v0

    return-object v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/Su;
    .locals 1

    .line 64134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/SS;->A7f(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v0

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/TP;
    .locals 1

    .line 64135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SS;->A8y()Lcom/facebook/ads/redexgen/X/TP;

    move-result-object v0

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/US;
    .locals 2

    .line 64136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/SS;->A6f(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/Ue;
    .locals 2

    .line 64137
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SQ;->A00:Lcom/facebook/ads/redexgen/X/SS;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/SS;->A8s(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v0

    return-object v0
.end method

.method public final A0C()Ljava/lang/String;
    .locals 1

    .line 64138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0D(Ljava/lang/String;)V
    .locals 1

    .line 64139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SQ;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64140
    return-void
.end method

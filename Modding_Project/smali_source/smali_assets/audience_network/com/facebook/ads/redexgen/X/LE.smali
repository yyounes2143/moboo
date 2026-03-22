.class public final Lcom/facebook/ads/redexgen/X/LE;
.super Lcom/facebook/ads/redexgen/X/QC;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/QC<",
        "Lcom/facebook/ads/redexgen/X/FD;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Xn;

.field public A04:Lcom/facebook/ads/redexgen/X/eX;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/hy;

.field public final A09:Lcom/facebook/ads/redexgen/X/SF;

.field public final A0A:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0B:Lcom/facebook/ads/redexgen/X/US;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Qc;

.field public final A0D:Lcom/facebook/ads/redexgen/X/XH;

.field public final A0E:Lcom/facebook/ads/redexgen/X/5s;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Cw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/List;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/Xn;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5s;Lcom/facebook/ads/redexgen/X/Cw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/hy;",
            "Lcom/facebook/ads/redexgen/X/US;",
            "Lcom/facebook/ads/redexgen/X/Qc;",
            "Lcom/facebook/ads/redexgen/X/Xn;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/5s;",
            "Lcom/facebook/ads/redexgen/X/Cw;",
            ")V"
        }
    .end annotation

    .line 50020
    .local p2, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QC;-><init>()V

    .line 50021
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A07:Landroid/util/SparseBooleanArray;

    .line 50022
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LE;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 50023
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/LE;->A0B:Lcom/facebook/ads/redexgen/X/US;

    .line 50024
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/LE;->A0C:Lcom/facebook/ads/redexgen/X/Qc;

    .line 50025
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Qc;->A11()Lcom/facebook/ads/redexgen/X/SF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A09:Lcom/facebook/ads/redexgen/X/SF;

    .line 50026
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Qc;->A1B()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A04:Lcom/facebook/ads/redexgen/X/eX;

    .line 50027
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Qc;->A1A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A0D:Lcom/facebook/ads/redexgen/X/XH;

    .line 50028
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/LE;->A03:Lcom/facebook/ads/redexgen/X/Xn;

    .line 50029
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/LE;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 50030
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/LE;->A06:Ljava/util/List;

    .line 50031
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/LE;->A05:Ljava/lang/String;

    .line 50032
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/LE;->A0E:Lcom/facebook/ads/redexgen/X/5s;

    .line 50033
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/LE;->A0F:Lcom/facebook/ads/redexgen/X/Cw;

    .line 50034
    return-void
.end method

.method private final A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/FD;
    .locals 9

    .line 50035
    new-instance v1, Lcom/facebook/ads/redexgen/X/ah;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LE;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LE;->A0B:Lcom/facebook/ads/redexgen/X/US;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LE;->A03:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/LE;->A08:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/LE;->A04:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/LE;->A0D:Lcom/facebook/ads/redexgen/X/XH;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Landroid/view/View;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A0F:Lcom/facebook/ads/redexgen/X/Cw;

    .line 50036
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0T(Lcom/facebook/ads/redexgen/X/Cw;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A0C:Lcom/facebook/ads/redexgen/X/Qc;

    .line 50037
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A0O(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v0

    .line 50038
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0W()Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v3

    .line 50039
    .local v0, "params":Lcom/facebook/ads/redexgen/X/ai;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LE;->A0C:Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LE;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A0E:Lcom/facebook/ads/redexgen/X/5s;

    .line 50040
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a6;->A00(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Qc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5s;)Lcom/facebook/ads/redexgen/X/0g;

    move-result-object v2

    .line 50041
    .local v1, "cardLayout":Lcom/facebook/ads/redexgen/X/0g;
    new-instance v1, Lcom/facebook/ads/redexgen/X/FD;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LE;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LE;->A04:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A06:Ljava/util/List;

    .line 50042
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/LE;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A08:Lcom/facebook/ads/redexgen/X/hy;

    .line 50043
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/FD;-><init>(Lcom/facebook/ads/redexgen/X/5h;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/eX;ILcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/N3;)V

    .line 50044
    return-object v1
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/FD;I)V
    .locals 10

    .line 50045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/cn;

    .line 50046
    .local v0, "cardInfo":Lcom/facebook/ads/redexgen/X/cn;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A04:Lcom/facebook/ads/redexgen/X/eX;

    move-object v1, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FD;->A0q(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 50047
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LE;->A0B:Lcom/facebook/ads/redexgen/X/US;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LE;->A09:Lcom/facebook/ads/redexgen/X/SF;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/LE;->A0D:Lcom/facebook/ads/redexgen/X/XH;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/LE;->A05:Ljava/lang/String;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/LE;->A00:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/LE;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/LE;->A01:I

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/FD;->A0p(Lcom/facebook/ads/redexgen/X/cn;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;III)V

    .line 50048
    return-void
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 50049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 1

    .line 50050
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/LE;->A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/FD;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0K(Lcom/facebook/ads/redexgen/X/Qg;I)V
    .locals 0

    .line 50051
    check-cast p1, Lcom/facebook/ads/redexgen/X/FD;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/LE;->A01(Lcom/facebook/ads/redexgen/X/FD;I)V

    return-void
.end method

.method public final A0O(III)V
    .locals 1

    .line 50052
    iget v0, p0, Lcom/facebook/ads/redexgen/X/LE;->A00:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 50053
    .local v0, "needsUpdate":Z
    :goto_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LE;->A00:I

    .line 50054
    iput p2, p0, Lcom/facebook/ads/redexgen/X/LE;->A02:I

    .line 50055
    iput p3, p0, Lcom/facebook/ads/redexgen/X/LE;->A01:I

    .line 50056
    if-eqz v0, :cond_0

    .line 50057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QC;->A0G()V

    .line 50058
    :cond_0
    return-void

    .line 50059
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/eX;)V
    .locals 0

    .line 50060
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LE;->A04:Lcom/facebook/ads/redexgen/X/eX;

    .line 50061
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/F4;
.super Lcom/facebook/ads/redexgen/X/QC;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/QC<",
        "Lcom/facebook/ads/redexgen/X/Ev;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Xm;

.field public A05:Lcom/facebook/ads/redexgen/X/Xn;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;"
        }
    .end annotation
.end field

.field public A08:Z

.field public final A09:Landroid/util/SparseBooleanArray;

.field public final A0A:Lcom/facebook/ads/redexgen/X/hy;

.field public final A0B:Lcom/facebook/ads/redexgen/X/SF;

.field public final A0C:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0D:Lcom/facebook/ads/redexgen/X/US;

.field public final A0E:Lcom/facebook/ads/redexgen/X/XH;

.field public final A0F:Lcom/facebook/ads/redexgen/X/FH;

.field public final A0G:Lcom/facebook/ads/redexgen/X/eX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/List;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/Xn;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/FH;Lcom/facebook/ads/redexgen/X/Xm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/hy;",
            "Lcom/facebook/ads/redexgen/X/US;",
            "Lcom/facebook/ads/redexgen/X/SF;",
            "Lcom/facebook/ads/redexgen/X/eX;",
            "Lcom/facebook/ads/redexgen/X/XH;",
            "Lcom/facebook/ads/redexgen/X/Xn;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/facebook/ads/redexgen/X/FH;",
            "Lcom/facebook/ads/redexgen/X/Xm;",
            ")V"
        }
    .end annotation

    .line 35391
    .local p16, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    move-object v1, p0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QC;-><init>()V

    .line 35392
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/F4;->A09:Landroid/util/SparseBooleanArray;

    .line 35393
    iput-object p1, v1, Lcom/facebook/ads/redexgen/X/F4;->A0C:Lcom/facebook/ads/redexgen/X/dL;

    .line 35394
    iput-object p4, v1, Lcom/facebook/ads/redexgen/X/F4;->A0D:Lcom/facebook/ads/redexgen/X/US;

    .line 35395
    iput-object p5, v1, Lcom/facebook/ads/redexgen/X/F4;->A0B:Lcom/facebook/ads/redexgen/X/SF;

    .line 35396
    iput-object p6, v1, Lcom/facebook/ads/redexgen/X/F4;->A0G:Lcom/facebook/ads/redexgen/X/eX;

    .line 35397
    iput-object p7, v1, Lcom/facebook/ads/redexgen/X/F4;->A0E:Lcom/facebook/ads/redexgen/X/XH;

    .line 35398
    iput-object p8, v1, Lcom/facebook/ads/redexgen/X/F4;->A05:Lcom/facebook/ads/redexgen/X/Xn;

    .line 35399
    iput-object p3, v1, Lcom/facebook/ads/redexgen/X/F4;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 35400
    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/F4;->A07:Ljava/util/List;

    .line 35401
    iput p10, v1, Lcom/facebook/ads/redexgen/X/F4;->A00:I

    .line 35402
    iput p13, v1, Lcom/facebook/ads/redexgen/X/F4;->A03:I

    .line 35403
    iput-object p9, v1, Lcom/facebook/ads/redexgen/X/F4;->A06:Ljava/lang/String;

    .line 35404
    iput p12, v1, Lcom/facebook/ads/redexgen/X/F4;->A01:I

    .line 35405
    iput p11, v1, Lcom/facebook/ads/redexgen/X/F4;->A02:I

    .line 35406
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/F4;->A0F:Lcom/facebook/ads/redexgen/X/FH;

    .line 35407
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Xm;

    .line 35408
    return-void
.end method

.method private final A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Ev;
    .locals 12

    .line 35409
    move-object v0, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/ah;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/F4;->A0C:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/F4;->A0D:Lcom/facebook/ads/redexgen/X/US;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/F4;->A05:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/F4;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/F4;->A0G:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/F4;->A0E:Lcom/facebook/ads/redexgen/X/XH;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Landroid/view/View;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/F4;->A04:Lcom/facebook/ads/redexgen/X/Xm;

    .line 35410
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/ah;->A0R(Lcom/facebook/ads/redexgen/X/Xm;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    .line 35411
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ah;->A0W()Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v4

    .line 35412
    .local v1, "params":Lcom/facebook/ads/redexgen/X/ai;
    iget v3, v0, Lcom/facebook/ads/redexgen/X/F4;->A03:I

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/F4;->A06:Ljava/lang/String;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/F4;->A0F:Lcom/facebook/ads/redexgen/X/FH;

    .line 35413
    invoke-static {v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/bf;->A00(Lcom/facebook/ads/redexgen/X/ai;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)Lcom/facebook/ads/redexgen/X/5Q;

    move-result-object v3

    .line 35414
    .local v2, "cardLayout":Lcom/facebook/ads/redexgen/X/5Q;
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ev;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/F4;->A09:Landroid/util/SparseBooleanArray;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/F4;->A0G:Lcom/facebook/ads/redexgen/X/eX;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/F4;->A00:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/F4;->A01:I

    iget v8, v0, Lcom/facebook/ads/redexgen/X/F4;->A02:I

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/F4;->A07:Ljava/util/List;

    .line 35415
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/F4;->A0C:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/F4;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 35416
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/facebook/ads/redexgen/X/Ev;-><init>(Lcom/facebook/ads/redexgen/X/5Q;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/eX;IIIILcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/N3;)V

    .line 35417
    return-object v2
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Ev;I)V
    .locals 7

    .line 35418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A07:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/cn;

    .line 35419
    .local v0, "cardInfo":Lcom/facebook/ads/redexgen/X/cn;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/F4;->A0D:Lcom/facebook/ads/redexgen/X/US;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/F4;->A0B:Lcom/facebook/ads/redexgen/X/SF;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/F4;->A0E:Lcom/facebook/ads/redexgen/X/XH;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/F4;->A06:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ev;->A0q(Lcom/facebook/ads/redexgen/X/cn;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;)V

    .line 35420
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A08:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 35421
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ev;->AIV()V

    .line 35422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A08:Z

    .line 35423
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 35424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F4;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 1

    .line 35425
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F4;->A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Ev;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0K(Lcom/facebook/ads/redexgen/X/Qg;I)V
    .locals 0

    .line 35426
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ev;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F4;->A01(Lcom/facebook/ads/redexgen/X/Ev;I)V

    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/B5;
.super Lcom/facebook/ads/redexgen/X/kJ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/kJ<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/lv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lv;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "index"
        }
    .end annotation

    .line 30547
    .local p0, "this":Lcom/facebook/ads/redexgen/X/B5;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kJ;-><init>()V

    .line 30548
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/lv;->A0H(Lcom/facebook/ads/redexgen/X/lv;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Ljava/lang/Object;

    .line 30549
    iput p2, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    .line 30550
    return-void
.end method

.method private A00()V
    .locals 3

    .line 30551
    .local p0, "this":Lcom/facebook/ads/redexgen/X/B5;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    .line 30552
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    .line 30553
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0H(Lcom/facebook/ads/redexgen/X/lv;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/BX;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30554
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A06(Lcom/facebook/ads/redexgen/X/lv;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    .line 30555
    :cond_1
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 30556
    .local p0, "this":Lcom/facebook/ads/redexgen/X/B5;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 30557
    .local p1, "this":Lcom/facebook/ads/redexgen/X/B5;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v1

    .line 30558
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 30559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oQ;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 30560
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B5;->A00()V

    .line 30561
    iget v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oQ;->A00()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0I(Lcom/facebook/ads/redexgen/X/lv;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 30562
    .local p1, "this":Lcom/facebook/ads/redexgen/X/B5;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lv;->A0h()Ljava/util/Map;

    move-result-object v1

    .line 30563
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 30564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Ljava/lang/Object;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oQ;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 30565
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/B5;->A00()V

    .line 30566
    iget v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 30567
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A01:Ljava/lang/Object;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/lv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30568
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oQ;->A00()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 30569
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lv;->A0I(Lcom/facebook/ads/redexgen/X/lv;I)Ljava/lang/Object;

    move-result-object v2

    .line 30570
    .local v1, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B5;->A02:Lcom/facebook/ads/redexgen/X/lv;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/B5;->A00:I

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/lv;->A0S(Lcom/facebook/ads/redexgen/X/lv;ILjava/lang/Object;)V

    .line 30571
    return-object v2
.end method

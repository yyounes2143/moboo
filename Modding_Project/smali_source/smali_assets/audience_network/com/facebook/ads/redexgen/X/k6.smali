.class public final Lcom/facebook/ads/redexgen/X/k6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/J7;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Jk;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jr;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jl;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:[J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jk;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Jk;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jr;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Jl;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91793
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlStyle;>;"
    .local p3, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/androidx/media3/extractor/text/ttml/TtmlRegion;>;"
    .local p4, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91794
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/Jk;

    .line 91795
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/k6;->A03:Ljava/util/Map;

    .line 91796
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/k6;->A02:Ljava/util/Map;

    .line 91797
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A01:Ljava/util/Map;

    .line 91798
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jk;->A0G()[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A04:[J

    .line 91799
    return-void

    .line 91800
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A7P(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;"
        }
    .end annotation

    .line 91801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A00:Lcom/facebook/ads/redexgen/X/Jk;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/k6;->A01:Ljava/util/Map;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/k6;->A03:Ljava/util/Map;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/k6;->A02:Ljava/util/Map;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Jk;->A0E(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A7v(I)J
    .locals 2

    .line 91802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A04:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final A7w()I
    .locals 1

    .line 91803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A04:[J

    array-length v0, v0

    return v0
.end method

.method public final A8S(J)I
    .locals 2

    .line 91804
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k6;->A04:[J

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0K([JJZZ)I

    move-result v1

    .line 91805
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k6;->A04:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

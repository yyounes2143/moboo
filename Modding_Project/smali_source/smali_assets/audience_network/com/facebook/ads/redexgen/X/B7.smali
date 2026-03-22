.class public final Lcom/facebook/ads/redexgen/X/B7;
.super Lcom/facebook/ads/redexgen/X/ls;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/lv;->A0d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/lv<",
        "TK;TV;>.Itr<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/lv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lv;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 30574
    .local p0, "this":Lcom/facebook/ads/redexgen/X/B7;, "Lcom/google/common/collect/CompactHashMap$2;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:Lcom/facebook/ads/redexgen/X/lv;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ls;-><init>(Lcom/facebook/ads/redexgen/X/lv;Lcom/facebook/ads/redexgen/X/B9;)V

    return-void
.end method

.method private final A00(I)Lcom/facebook/ads/redexgen/X/B5;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 30575
    .local p0, "this":Lcom/facebook/ads/redexgen/X/B7;, "Lcom/google/common/collect/CompactHashMap$2;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B7;->A00:Lcom/facebook/ads/redexgen/X/lv;

    new-instance v0, Lcom/facebook/ads/redexgen/X/B5;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/B5;-><init>(Lcom/facebook/ads/redexgen/X/lv;I)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A03(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "entry"
        }
    .end annotation

    .line 30576
    .local v0, "this":Lcom/facebook/ads/redexgen/X/B7;, "Lcom/google/common/collect/CompactHashMap$2;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/B7;->A00(I)Lcom/facebook/ads/redexgen/X/B5;

    move-result-object v0

    return-object v0
.end method

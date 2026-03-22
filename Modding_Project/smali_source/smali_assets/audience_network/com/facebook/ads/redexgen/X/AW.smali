.class public abstract Lcom/facebook/ads/redexgen/X/AW;
.super Lcom/facebook/ads/redexgen/X/oG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListMultimapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/oG<",
        "TK0;TV0;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29690
    .local p0, "this":Lcom/facebook/ads/redexgen/X/AW;, "Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder<TK0;TV0;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/oG;-><init>(Lcom/facebook/ads/redexgen/X/Ab;)V

    return-void
.end method


# virtual methods
.method public abstract A00()Lcom/facebook/ads/redexgen/X/Ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/facebook/ads/redexgen/X/Ah<",
            "TK;TV;>;"
        }
    .end annotation
.end method

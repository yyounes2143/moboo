.class public final Lcom/facebook/ads/redexgen/X/1c;
.super Lcom/facebook/ads/redexgen/X/AW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/oF;->A00(I)Lcom/facebook/ads/redexgen/X/1c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/AW<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/oF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oF;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$expectedValuesPerKey"
        }
    .end annotation

    .line 8791
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1c;, "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1c;->A01:Lcom/facebook/ads/redexgen/X/oF;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/1c;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Ah;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/Ah<",
            "TK;TV;>;"
        }
    .end annotation

    .line 8792
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1c;, "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1c;->A01:Lcom/facebook/ads/redexgen/X/oF;

    .line 8793
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oF;->A04()Ljava/util/Map;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1c;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/AX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AX;-><init>(I)V

    .line 8794
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/oJ;->A00(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/jM;)Lcom/facebook/ads/redexgen/X/0H;

    move-result-object v0

    return-object v0
.end method

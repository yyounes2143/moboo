.class public final Lcom/facebook/ads/redexgen/X/Vf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/py;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/py<",
        "Lcom/facebook/ads/redexgen/X/UE;",
        "Lcom/facebook/ads/redexgen/X/UJ;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/VN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VN;)V
    .locals 0

    .line 69544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69545
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:Lcom/facebook/ads/redexgen/X/VN;

    .line 69546
    return-void
.end method


# virtual methods
.method public final A6J(Lcom/facebook/ads/redexgen/X/pu;Lcom/facebook/ads/redexgen/X/pk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pu<",
            "Lcom/facebook/ads/redexgen/X/UE;",
            "Lcom/facebook/ads/redexgen/X/UJ;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/pk;",
            ")V"
        }
    .end annotation

    .line 69547
    .local p1, "viewpointData":Lcom/facebook/ads/redexgen/X/pu;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/UC;->A00:[I

    invoke-interface {p2, p1}, Lcom/facebook/ads/redexgen/X/pk;->A9M(Lcom/facebook/ads/redexgen/X/pu;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 69548
    :goto_0
    return-void

    .line 69549
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:Lcom/facebook/ads/redexgen/X/VN;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/VN;->A02(Lcom/facebook/ads/redexgen/X/pu;Lcom/facebook/ads/redexgen/X/pk;)V

    .line 69550
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

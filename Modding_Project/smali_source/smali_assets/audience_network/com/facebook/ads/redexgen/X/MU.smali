.class public final Lcom/facebook/ads/redexgen/X/MU;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/MP;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/MP;
    .locals 2

    .line 52113
    sget-object v0, Lcom/facebook/ads/redexgen/X/MU;->A00:Lcom/facebook/ads/redexgen/X/MP;

    if-eqz v0, :cond_0

    .line 52114
    sget-object v0, Lcom/facebook/ads/redexgen/X/MU;->A00:Lcom/facebook/ads/redexgen/X/MP;

    return-object v0

    .line 52115
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/MT;->A00:[I

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 52116
    const/4 v0, 0x0

    return-object v0

    .line 52117
    :pswitch_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/7B;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7B;-><init>()V

    return-object v0

    .line 52118
    :pswitch_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/7F;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7F;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    return-object v0

    .line 52119
    :pswitch_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/iN;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/iN;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    return-object v0

    .line 52120
    :pswitch_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/iS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/iS;-><init>()V

    return-object v0

    .line 52121
    :pswitch_4
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52122
    new-instance v0, Lcom/facebook/ads/redexgen/X/7K;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7K;-><init>()V

    return-object v0

    .line 52123
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7L;-><init>()V

    return-object v0

    .line 52124
    :pswitch_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7L;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

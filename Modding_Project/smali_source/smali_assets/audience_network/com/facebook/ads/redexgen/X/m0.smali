.class public final synthetic Lcom/facebook/ads/redexgen/X/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/E4;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/93;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/93;Ljava/lang/String;)V
    .locals 0

    .line 98056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:Lcom/facebook/ads/redexgen/X/93;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/m0;->A01:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A57(ILcom/facebook/ads/redexgen/X/oH;[I)Ljava/util/List;
    .locals 2

    .line 98057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:Lcom/facebook/ads/redexgen/X/93;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A01:Ljava/lang/String;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/92;->A0F(Lcom/facebook/ads/redexgen/X/93;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/oH;[I)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

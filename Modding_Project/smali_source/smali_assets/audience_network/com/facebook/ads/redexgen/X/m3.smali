.class public final synthetic Lcom/facebook/ads/redexgen/X/m3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/E4;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/93;

.field public final synthetic A01:Ljava/lang/String;

.field public final synthetic A02:[I


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/93;Ljava/lang/String;[I)V
    .locals 0

    .line 98062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:Lcom/facebook/ads/redexgen/X/93;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/m3;->A02:[I

    return-void
.end method


# virtual methods
.method public final A57(ILcom/facebook/ads/redexgen/X/oH;[I)Ljava/util/List;
    .locals 6

    .line 98063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m3;->A00:Lcom/facebook/ads/redexgen/X/93;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/m3;->A01:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/m3;->A02:[I

    move-object v5, p3

    move-object v4, p2

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/92;->A0G(Lcom/facebook/ads/redexgen/X/93;Ljava/lang/String;[IILcom/facebook/ads/redexgen/X/oH;[I)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

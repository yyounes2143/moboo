.class public final synthetic Lcom/facebook/ads/redexgen/X/m1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/E4;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/93;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/92;

.field public final synthetic A02:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/92;Lcom/facebook/ads/redexgen/X/93;Z)V
    .locals 0

    .line 98058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/m1;->A01:Lcom/facebook/ads/redexgen/X/92;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/93;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/m1;->A02:Z

    return-void
.end method


# virtual methods
.method public final A57(ILcom/facebook/ads/redexgen/X/oH;[I)Ljava/util/List;
    .locals 6

    .line 98059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A01:Lcom/facebook/ads/redexgen/X/92;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/93;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/m1;->A02:Z

    move-object v5, p3

    move-object v4, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/92;->A0e(Lcom/facebook/ads/redexgen/X/93;ZILcom/facebook/ads/redexgen/X/oH;[I)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    return-object v0
.end method

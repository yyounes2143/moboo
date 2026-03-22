.class public final Lcom/facebook/ads/redexgen/X/2P;
.super Lcom/facebook/ads/redexgen/X/DM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Cw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cw;)V
    .locals 0

    .line 9759
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2P;->A00:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 2

    .line 9760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2P;->A00:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cw;->A00(Lcom/facebook/ads/redexgen/X/Cw;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9761
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2P;->A00:Lcom/facebook/ads/redexgen/X/Cw;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Cw;->A09(Z)V

    .line 9762
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 9763
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2P;->A00(Lcom/facebook/ads/redexgen/X/3Q;)V

    return-void
.end method

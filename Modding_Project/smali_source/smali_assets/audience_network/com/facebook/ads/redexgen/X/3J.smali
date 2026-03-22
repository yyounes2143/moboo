.class public final Lcom/facebook/ads/redexgen/X/3J;
.super Lcom/facebook/ads/redexgen/X/DM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D9;)V
    .locals 0

    .line 10857
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 3

    .line 10858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A0A(Lcom/facebook/ads/redexgen/X/D9;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:Lcom/facebook/ads/redexgen/X/D9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    .line 10859
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0C(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/e1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A04(Lcom/facebook/ads/redexgen/X/D9;)V

    .line 10861
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:Lcom/facebook/ads/redexgen/X/D9;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A05(Lcom/facebook/ads/redexgen/X/D9;ZZ)V

    .line 10862
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10863
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3J;->A00(Lcom/facebook/ads/redexgen/X/3Q;)V

    return-void
.end method

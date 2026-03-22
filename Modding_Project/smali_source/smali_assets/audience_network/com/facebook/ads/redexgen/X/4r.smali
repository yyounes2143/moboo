.class public final Lcom/facebook/ads/redexgen/X/4r;
.super Lcom/facebook/ads/redexgen/X/DM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4n;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4n;)V
    .locals 0

    .line 14621
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 2

    .line 14622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/4n;->A0O(Lcom/facebook/ads/redexgen/X/4n;Lcom/facebook/ads/redexgen/X/3Q;)V

    .line 14623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4n;

    .line 14624
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A00(Lcom/facebook/ads/redexgen/X/4n;)F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A0A(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getDuration()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DY;->A00()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 14625
    .local v0, "currentPosMs":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4r;->A00:Lcom/facebook/ads/redexgen/X/4n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4n;->A09(Lcom/facebook/ads/redexgen/X/4n;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/cT;->ADI(F)V

    .line 14626
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 14627
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4r;->A00(Lcom/facebook/ads/redexgen/X/3Q;)V

    return-void
.end method

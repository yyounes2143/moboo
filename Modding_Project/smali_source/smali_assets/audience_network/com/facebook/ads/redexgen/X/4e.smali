.class public final Lcom/facebook/ads/redexgen/X/4e;
.super Lcom/facebook/ads/redexgen/X/DM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4Z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 14183
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 2

    .line 14184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0b(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3Q;)V

    .line 14185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    .line 14186
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A01(Lcom/facebook/ads/redexgen/X/4Z;)F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0J(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getDuration()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DY;->A00()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 14187
    .local v0, "currentPosMs":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0I(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/cT;->ADI(F)V

    .line 14188
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 14189
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4e;->A00(Lcom/facebook/ads/redexgen/X/3Q;)V

    return-void
.end method

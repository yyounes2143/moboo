.class public final Lcom/facebook/ads/redexgen/X/3t;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3r;)V
    .locals 0

    .line 11914
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3t;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 4

    .line 11915
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3t;->A00:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3t;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A08(Lcom/facebook/ads/redexgen/X/3r;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    const/4 v1, 0x0

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/3r;->A0K(Lcom/facebook/ads/redexgen/X/3r;Lcom/facebook/ads/redexgen/X/3d;ZZ)V

    .line 11916
    return-void

    .line 11917
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 11918
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3t;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method

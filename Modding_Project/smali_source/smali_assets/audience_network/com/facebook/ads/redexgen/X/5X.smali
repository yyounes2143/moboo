.class public final Lcom/facebook/ads/redexgen/X/5X;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5Q;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5Q;)V
    .locals 0

    .line 15494
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5X;->A00:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 3

    .line 15495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5X;->A00:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(Lcom/facebook/ads/redexgen/X/5Q;)Lcom/facebook/ads/redexgen/X/FH;

    move-result-object v0

    .line 15496
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0N()Lcom/facebook/ads/redexgen/X/bY;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5X;->A00:Lcom/facebook/ads/redexgen/X/5Q;

    .line 15497
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/bY;->AFc(I)V

    .line 15498
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 15499
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5X;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/2u;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D3;)V
    .locals 0

    .line 10431
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:Lcom/facebook/ads/redexgen/X/D3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 2

    .line 10432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2u;->A00:Lcom/facebook/ads/redexgen/X/D3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D3;->A00(Lcom/facebook/ads/redexgen/X/D3;)Lcom/facebook/ads/redexgen/X/e0;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e0;->setChecked(Z)V

    .line 10433
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10434
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2u;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method

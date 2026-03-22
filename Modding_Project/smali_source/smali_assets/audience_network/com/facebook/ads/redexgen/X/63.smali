.class public final Lcom/facebook/ads/redexgen/X/63;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lz;)V
    .locals 0

    .line 17212
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/63;->A00:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 3

    .line 17213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/63;->A00:Lcom/facebook/ads/redexgen/X/Lz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/63;->A00:Lcom/facebook/ads/redexgen/X/Lz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x1e

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 17215
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 17216
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/63;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method

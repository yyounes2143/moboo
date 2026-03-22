.class public final Lcom/facebook/ads/redexgen/X/5b;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JS;)V
    .locals 0

    .line 15513
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5b;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 3

    .line 15514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5b;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A06(Lcom/facebook/ads/redexgen/X/JS;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0x14

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 15515
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 15516
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5b;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/2j;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2Z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2Z;)V
    .locals 0

    .line 10352
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Lcom/facebook/ads/redexgen/X/2Z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 2

    .line 10353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Lcom/facebook/ads/redexgen/X/2Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2Z;->A00(Lcom/facebook/ads/redexgen/X/2Z;)Lcom/facebook/ads/redexgen/X/e0;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e0;->setChecked(Z)V

    .line 10354
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10355
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2j;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method

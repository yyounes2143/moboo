.class public final Lcom/facebook/ads/redexgen/X/2x;
.super Lcom/facebook/ads/redexgen/X/DN;
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

    .line 10443
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2x;->A00:Lcom/facebook/ads/redexgen/X/D3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 2

    .line 10444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2x;->A00:Lcom/facebook/ads/redexgen/X/D3;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->setVisibility(I)V

    .line 10445
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10446
    check-cast p1, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2x;->A00(Lcom/facebook/ads/redexgen/X/DO;)V

    return-void
.end method

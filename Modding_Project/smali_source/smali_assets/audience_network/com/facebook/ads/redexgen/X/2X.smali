.class public final Lcom/facebook/ads/redexgen/X/2X;
.super Lcom/facebook/ads/redexgen/X/DR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2R;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2R;)V
    .locals 0

    .line 9978
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DR;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Y;)V
    .locals 2

    .line 9979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2R;->A06(Lcom/facebook/ads/redexgen/X/2R;)Lcom/facebook/ads/redexgen/X/e0;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e0;->setChecked(Z)V

    .line 9980
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 9981
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A00(Lcom/facebook/ads/redexgen/X/3Y;)V

    return-void
.end method

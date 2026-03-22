.class public final Lcom/facebook/ads/redexgen/X/2W;
.super Lcom/facebook/ads/redexgen/X/DP;
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

    .line 9974
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2W;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DP;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DQ;)V
    .locals 2

    .line 9975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2W;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2R;->A06(Lcom/facebook/ads/redexgen/X/2R;)Lcom/facebook/ads/redexgen/X/e0;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e0;->setChecked(Z)V

    .line 9976
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 9977
    check-cast p1, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2W;->A00(Lcom/facebook/ads/redexgen/X/DQ;)V

    return-void
.end method

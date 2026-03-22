.class public final Lcom/facebook/ads/redexgen/X/2o;
.super Lcom/facebook/ads/redexgen/X/DN;
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

    .line 10376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:Lcom/facebook/ads/redexgen/X/2Z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 2

    .line 10377
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:Lcom/facebook/ads/redexgen/X/2Z;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2Z;->setVisibility(I)V

    .line 10378
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10379
    check-cast p1, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2o;->A00(Lcom/facebook/ads/redexgen/X/DO;)V

    return-void
.end method

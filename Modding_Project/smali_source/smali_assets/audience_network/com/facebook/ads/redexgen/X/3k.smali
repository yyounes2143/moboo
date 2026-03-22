.class public final Lcom/facebook/ads/redexgen/X/3k;
.super Lcom/facebook/ads/redexgen/X/DN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3i;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3i;)V
    .locals 0

    .line 11280
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3k;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 2

    .line 11281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3k;->A00:Lcom/facebook/ads/redexgen/X/3i;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3k;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3i;->A0A(Lcom/facebook/ads/redexgen/X/3i;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getDuration()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3i;->A00:I

    .line 11282
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 11283
    check-cast p1, Lcom/facebook/ads/redexgen/X/DO;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3k;->A00(Lcom/facebook/ads/redexgen/X/DO;)V

    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/Ml;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x7eca759d791ce105L


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/My;

.field public final A01:Lcom/facebook/ads/redexgen/X/My;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/My;Lcom/facebook/ads/redexgen/X/My;)V
    .locals 0

    .line 52655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52656
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ml;->A01:Lcom/facebook/ads/redexgen/X/My;

    .line 52657
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ml;->A00:Lcom/facebook/ads/redexgen/X/My;

    .line 52658
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/My;
    .locals 1

    .line 52659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ml;->A00:Lcom/facebook/ads/redexgen/X/My;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/My;
    .locals 1

    .line 52660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ml;->A01:Lcom/facebook/ads/redexgen/X/My;

    return-object v0
.end method

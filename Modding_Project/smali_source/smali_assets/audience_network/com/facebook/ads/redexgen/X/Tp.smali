.class public final Lcom/facebook/ads/redexgen/X/Tp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/To;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/To;)V
    .locals 0

    .line 66341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66342
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Tp;->A00:I

    .line 66343
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tp;->A01:Lcom/facebook/ads/redexgen/X/To;

    .line 66344
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 66345
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tp;->A00:I

    return v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/To;
    .locals 1

    .line 66346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tp;->A01:Lcom/facebook/ads/redexgen/X/To;

    return-object v0
.end method

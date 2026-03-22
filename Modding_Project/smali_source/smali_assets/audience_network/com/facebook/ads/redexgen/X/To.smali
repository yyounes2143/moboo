.class public final Lcom/facebook/ads/redexgen/X/To;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Tn;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/Tn;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tn;III)V
    .locals 0

    .line 66331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66332
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/To;->A03:Lcom/facebook/ads/redexgen/X/Tn;

    .line 66333
    iput p2, p0, Lcom/facebook/ads/redexgen/X/To;->A01:I

    .line 66334
    iput p3, p0, Lcom/facebook/ads/redexgen/X/To;->A00:I

    .line 66335
    iput p4, p0, Lcom/facebook/ads/redexgen/X/To;->A02:I

    .line 66336
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 66337
    iget v0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 66338
    iget v0, p0, Lcom/facebook/ads/redexgen/X/To;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 66339
    iget v0, p0, Lcom/facebook/ads/redexgen/X/To;->A02:I

    return v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/Tn;
    .locals 1

    .line 66340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/To;->A03:Lcom/facebook/ads/redexgen/X/Tn;

    return-object v0
.end method
